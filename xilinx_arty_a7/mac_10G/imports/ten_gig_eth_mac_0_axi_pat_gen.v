// ------------------------------------------------------------------------------
// (c) Copyright 2014 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 
// ------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------
// Title      : Frame generator for 10 Gig Ethernet 
// Project    : 10 Gigabit Ethernet Core
//------------------------------------------------------------------------------------------
// File       : ten_gig_eth_mac_0_axi_pat_gen.v
// Author     : Xilinx Inc.
// -----------------------------------------------------------------------------------------
// Description: This is a very simple pattern generator which will generate packets 
//              with the supplied dest_addr and src_addr and incrementing data.  The packet size 
//              increments between the min and max size (which can be set to the same value if a 
//              specific size is required
//              
//              the pattern generator is throttled by the FIFO hitting full which in turn
//              is throttled by the transmit rate of the MAC.  Since the example
//              design system does not use active flow control it is possible for the FIFO's to 
//              overflow on RX.  To avoid this a basic rate controller is implemented which will
//              throttle the pattern generator output to below the maximum data rate.
//------------------------------------------------------------------------------------------

`timescale 1ps/1ps

(* dont_touch = "yes" *)
module ten_gig_eth_mac_0_axi_pat_gen (
   input wire  [47:0]                  dest_addr,
   input wire  [47:0]                  src_addr,
   input wire  [14:0]                  max_size,
   input wire  [14:0]                  min_size,
   input wire                          enable_vlan,
   input wire  [11:0]                  vlan_id,
   input wire  [2:0]                   vlan_priority,
   input wire  [55:0]                  preamble_data,
   input wire                          enable_custom_preamble,
   
   input wire                          aclk,            
   input wire                          areset,         
   input wire                          insert_error,         
   input wire                          enable_pat_gen,      

   output reg  [63:0]                  tdata,
   output reg  [7:0]                   tkeep,
   output reg                          tvalid,       
   output reg                          tlast,        
   input  wire                         tready,
   output reg                          gen_active_flash  
);

   // gen_state states
   localparam                          IDLE        = 0,
                                       PREAMBLE    = 1,
                                       ADDR        = 2,
                                       ADDR_TL_D   = 3,  // ADDRESS + TYPE/LENGTH + DATA
                                       ADDR_VLAN   = 4,  // ADDRESS + VLAN
                                       TL_D        = 5,  // TYPE/LENGTH + DATA
                                       DATA        = 6;  // DATA
                
   // data_out_state
   localparam                          REST_OF_FRAME = 1;
  
   // we want to use less than 100% bandwidth to account for clock PPM 
   // difference between two connected peers' clock sources
   // The value of 200 gives 200/255 = 78.4% 
   localparam                          BW          = 255;
  
   // used when custom preamble is enabled
   localparam                          START_CODE  = 8'hFB;
  
               
                
   // These registers hold the data that is being sent out
   reg         [15:0]                  gen_data_reg_7_6 = 16'd0;
   reg         [15:0]                  gen_data_reg_5_4 = 16'd0;
   reg         [15:0]                  gen_data_reg_3_2 = 16'd0;
   reg         [15:0]                  gen_data_reg_1_0 = 16'd0;
  
   reg         [15:0]                  byte_count       = 16'd0;
   reg         [3:0]                   header_count     = 4'd0;
   reg         [15:0]                  payload_size     = 16'd0;
   wire                                frame_bigger_8;
   reg                                 frame_bigger_8_reg = 0;
   reg         [2:0]                   gen_state        = 3'd0;
   wire        [5:0]                   pkt_adjust;
   wire        [31:0]                  vlan_header;
  
   // frame generation control signals    
   reg                                 first_frame_gen_done = 0;
   reg                                 column_after_idle    = 0;
   reg                                 frame_after_idle     = 0;
   reg                                 frame_end;
   reg                                 gen_ahead;
   wire                                stay_in_idle;
   wire                                force_next_state;
       
   wire                                tvalid_int;
   reg                                 tlast_int      = 0;
   reg         [7:0]                   tkeep_int      = 8'd0;
   reg         [63:0]                  tdata_int      = 64'd0;
   reg                                 tlast_int_reg  = 0;
   reg         [7:0]                   tkeep_int_reg  = 8'd0;
   reg         [63:0]                  tdata_int_reg  = 64'd0;
  
  
   reg         [20:0]                  gen_active_count = 21'd0;
    
   // rate control signals
   reg         [7:0]                   basic_rc_counter;
   reg                                 add_credit;
   reg         [12:0]                  credit_count;
   reg                                 fast_flash = 1'b1;
  
   reg                                  data_out_state;
 
   // rate control logic
  
   // first we need an always active counter to provide the credit control
   always @(posedge aclk)
   begin
      if (areset | !enable_pat_gen)
         basic_rc_counter              <= 255;
      else
         basic_rc_counter              <= basic_rc_counter + 1;
   end
  
   // now we need to set the compare level depending upon the selected speed
   // the credits are applied using a simple less-than check
   always @(posedge aclk)
   begin
      if (basic_rc_counter < BW)
         add_credit                    <= 1;
      else
         add_credit                    <= 0;
   end
  
   // basic credit counter - -ve value means do not send a frame
   always @(posedge aclk)
   begin
      if (areset)
         credit_count                  <= 0;
      else begin
         // if we are in frame
         if (gen_state != IDLE) begin
            if (!add_credit & credit_count[12:10] != 3'b110)  // stop decrementing at -2048
               credit_count            <= credit_count - 1;
         end
         else begin
            if (add_credit & credit_count[12:11] != 2'b01)    // stop incrementing at 2048
               credit_count            <= credit_count + 1;         
         end
      end
   end 
      
   // work out the adjustment required to get the right packet size.
   // 6(DA) + 6(SA) + 4(VLAN OPT) + 2(L/T) + 4(CRC)  
   assign pkt_adjust                   = (enable_vlan) ? 22 : 18;
  
   // generate the vlan fields
   assign vlan_header                  = {8'h81, 8'h00, vlan_priority, 1'b0, vlan_id};
  
   // this should translate to an LED flashing 
   // flash rate depends the size of frames being sent eg. small frames fast flashing
   always @(posedge aclk)
   begin
      if (areset)
         gen_active_flash              <= 0;
      else if (enable_pat_gen) begin
         if (fast_flash)
            gen_active_flash           <= gen_active_count[3];
         else
            gen_active_flash           <= gen_active_count[20];
      end
      else begin
         gen_active_flash              <= 0;
      end
   end
   
  
   // when the active_count is below 64 use a fast output for the flash
   always @(posedge aclk)
   begin
      if (gen_active_count[6])
         fast_flash                    <= 0;
   end  
     
   // activity flash control
   always @(posedge aclk)
   begin
      if (areset) 
         gen_active_count              <= 0;
      else if ((gen_state == ADDR) && tvalid && tready) 
         gen_active_count              <= gen_active_count + 1;
   end
  
   // byte_count is used for data generation per columns
  
   always @(posedge aclk)
   begin
      if (areset) begin
         byte_count                    <= 0;
      end
      else if (gen_state == ADDR & !enable_vlan) begin 
         byte_count                    <= payload_size + 6;
      end
      else if (gen_state == ADDR_VLAN) begin 
         byte_count                    <= payload_size + 2;
      end 
      else if (((gen_state == ADDR_TL_D || gen_state == TL_D || gen_state == DATA) & 
                (byte_count > 8)) && (tready)) begin
         byte_count                    <= byte_count - 8;
      end      
   end
  
   // generate data here
     
   always @(*)
   begin
      if (insert_error) begin
         gen_data_reg_1_0              = 16'habcd;
         gen_data_reg_3_2              = 16'hefab;
         gen_data_reg_5_4              = 16'hcdef;
         gen_data_reg_7_6              = 16'hacdf;     
      end
      else begin
         gen_data_reg_1_0              = byte_count;
         gen_data_reg_3_2              = byte_count - 2;
         gen_data_reg_5_4              = byte_count - 4;
         gen_data_reg_7_6              = byte_count - 6;
      end
   end
  
   // adjust parameter values by 18 to allow for header and crc
   // so the payload_size can be issued directly in the size field
   // payload_size is updated at frame end only after the first frame has been generated
  
   always @(posedge aclk)
   begin
      if (areset) begin
         payload_size                  <= min_size - pkt_adjust;
      end
      else if ((gen_state == DATA) && !frame_bigger_8 && tready) begin
         if (payload_size >= (max_size - pkt_adjust)) begin
            payload_size               <= min_size - pkt_adjust;
         end
         else if (first_frame_gen_done && (payload_size < (max_size - pkt_adjust))) begin
            payload_size               <= payload_size + 1;
         end
      end
   end
    
   //--------------------------
   // Main state machine 
   //--------------------------
   // (if preamble enabled)
   // 1st cycle : PREAMBLE 
   // 2nd cycle : DA + SA
   // 3rd cycle : SA + L/T + DATA  OR!  SA + VLAN 
   // 4th cycle : DATA OR! L/T + DATA
   // 5th cycle : DATA
  
   // (if preamble disabled)
   // 1st cycle : DA + SA 
   // 2nd cycle : SA + L/T + DATA  OR!  SA + VLAN 
   // 3rd cycle : DATA OR! L/T + DATA
   // 4th cycle : DATA 
  
   // At startup state of tready is unknown therefore we have to generate a cycle ahead
   // regardless of tready state. This is achieved by asserting gen_ahead signal when tready is low
   // and de-asserted where appropriate.

   // Note here that the generated frame is one cycle behind the frame being output therefore 
   // in IDLE state we check whether at frame_end there has been a high or low tready
   // If it has been low we have to wait in idle till we see tready asserted. 
 
 
    
   // keep track of current frame size 
   assign frame_bigger_8               = (byte_count > 8) ? 1 : 0;
  
   assign stay_in_idle                 = first_frame_gen_done && !tready && frame_end;
   assign force_next_state             = !tready && frame_after_idle && gen_ahead;
  
   // frame_bigger_8_reg is used in case there has been a low tready at the time the last column of the frame 
   // would be transmitted 
 
   always @(posedge aclk)
   begin
      if (areset) begin
         frame_bigger_8_reg            <= 0;
      end
      else begin
         frame_bigger_8_reg            <= frame_bigger_8;
      end
   end

   // first_frame_gen_done is set at the end of the generated frame and is driven low only by reset
    
   always @(posedge aclk)
   begin
      if (areset) begin
         first_frame_gen_done          <= 0;
      end
      else if ((gen_state == DATA) && (!frame_bigger_8_reg || !frame_bigger_8)) begin
         first_frame_gen_done          <= 1;
      end
   end

   // frame_after_idle is kept set when we come out from IDLE until we see a frame end
   always @(posedge aclk)
   begin
      if (areset) begin
         frame_after_idle              <= 0;
      end
      else if ((gen_state == IDLE) && enable_pat_gen && !credit_count[12] && !stay_in_idle) begin
         frame_after_idle              <= 1;
      end
      else if ((gen_state == DATA) && 
               ((force_next_state && !frame_bigger_8_reg) || (tready && !frame_bigger_8))) begin
         frame_after_idle              <= 0;
      end
   end
  
   // column_after_idle is set when we exit the IDLE frame generation state
   always @(posedge aclk)
   begin
      if (areset) begin
         column_after_idle             <= 0;
      end
      else if ((gen_state == IDLE) && enable_pat_gen && !credit_count[12] && !stay_in_idle) begin
         column_after_idle             <= 1;
      end
      else if ((gen_state == PREAMBLE) || (gen_state == ADDR)) begin
         column_after_idle             <= 0;
      end
   end

   // Frame_end is set when tready is high when we are at a point in a frame
   // that the generated column contains 8 or less data bytes.
   // It is also set when we should have seen a tready but we didn't 
 
   always @(posedge aclk)
   begin
      if (areset) begin
         frame_end                     <= 0;
      end
      else if ((gen_state == DATA) && credit_count[12] && 
              ((!frame_bigger_8 && tready) || (force_next_state && !frame_bigger_8_reg))) begin
         frame_end                     <= 1;
      end
      else if ((gen_state == IDLE) && ((enable_pat_gen && !credit_count[12] && !stay_in_idle)
              || (tready && credit_count[12]))) begin
         frame_end                     <= 0;
      end
   end

   // At startup state of tready is unknown therefore we have to generate a cycle ahead
   // regardless of tready state. This is achieved by asserting gen_ahead signal when tready is low
   // and de-asserted where appropriate.
 
   always @(posedge aclk)
   begin
      if (areset) begin
         gen_ahead                     <= 0;
      end
      else if (((gen_state == IDLE) && (enable_pat_gen && !credit_count[12] && !tready))
               || ((gen_state != IDLE) && tready))begin
         gen_ahead                     <= 1;
      end
      else if ((gen_state != IDLE) && !tready) begin
         gen_ahead                     <= 0;
      end
   end
  
   always @(posedge aclk)
   begin
      if (areset) begin
         gen_state                     <= IDLE;
      end
      else begin
         case (gen_state)
            IDLE : begin
               if (enable_pat_gen & !credit_count[12]) begin
                  if (stay_in_idle) begin                    
                     gen_state         <= IDLE;
                  end
                  else begin
                     if (enable_custom_preamble) begin
                        gen_state      <= PREAMBLE;
                     end
                     else begin
                        gen_state      <= ADDR;
                     end
                  end
               end
            end
            PREAMBLE : begin
               if (tready || force_next_state) begin
                  gen_state            <= ADDR;
               end
            end
            ADDR : begin
               if (tready || (force_next_state && !enable_custom_preamble)) begin
                  if (enable_vlan) begin
                     gen_state         <= ADDR_VLAN;
                  end
                  else begin
                     gen_state         <= ADDR_TL_D;
                  end
               end
            end
            ADDR_TL_D : begin
               if (tready) begin
                  gen_state            <= DATA;
               end
            end
            ADDR_VLAN : begin
               if (tready) begin
                  gen_state            <= TL_D;
               end
            end
            TL_D : begin
               if (tready) begin
                  gen_state            <= DATA;
               end
            end
            DATA : begin
               if (tready) begin
                  if (frame_bigger_8) begin
                     gen_state         <= DATA;
                  end
                  else begin
                     if (!credit_count[12]) begin                      
                        if (enable_custom_preamble) begin
                           gen_state   <= PREAMBLE;
                        end
                        else begin
                           gen_state   <= ADDR;
                        end
                     end
                     else begin
                        gen_state      <= IDLE;
                     end
                  end
               end
               else begin 
                  if (frame_after_idle && gen_ahead) begin
                     if (frame_bigger_8_reg) begin
                        gen_state      <= DATA;
                     end
                     else begin
                        if (!credit_count[12]) begin                      
                           if (enable_custom_preamble) begin
                              gen_state <= PREAMBLE;
                           end
                           else begin
                              gen_state <= ADDR;
                           end
                        end
                        else begin
                           gen_state   <= IDLE;
                        end
                     end
                  end
               end
            end
            default : begin
               gen_state               <= IDLE;
            end
         endcase
      end
   end
 
   // Flip-flop used as storage at the end of the frame
   always @(posedge aclk)
   begin
      if (areset) begin
         tdata_int_reg                 <= 64'd0;
         tkeep_int_reg                 <= 8'd0;
         tlast_int_reg                 <= 0;
      end
      else if ((gen_state == DATA) && !frame_bigger_8 && tready) begin
         tdata_int_reg                 <= tdata_int;
         tkeep_int_reg                 <= tkeep_int;
         tlast_int_reg                 <= tlast_int;
      end
   end
  
     
   always @(*)
   begin 
       if (gen_state != IDLE && !(gen_state == DATA && !frame_bigger_8)) begin
          tkeep_int                    <= 8'b11111111;
          tlast_int                    <= 0;
       end
       else if (gen_state == DATA && !frame_bigger_8 & (|byte_count)) begin
          tlast_int <= 1;
          case (byte_count[3:0])
             4'd8 : tkeep_int          <= 8'b11111111;
             4'd7 : tkeep_int          <= 8'b01111111;
             4'd6 : tkeep_int          <= 8'b00111111;
             4'd5 : tkeep_int          <= 8'b00011111;
             4'd4 : tkeep_int          <= 8'b00001111;
             4'd3 : tkeep_int          <= 8'b00000111;   
             4'd2 : tkeep_int          <= 8'b00000011;   
             4'd1 : tkeep_int          <= 8'b00000001;   
             default : tkeep_int       <= 8'b00000000;
          endcase
       end
       else if (gen_state == IDLE && !first_frame_gen_done)begin
          tlast_int                    <= 0;
          tkeep_int                    <= 8'b00000000;
       end
       else begin
          tlast_int                    <= tlast_int_reg;
          tkeep_int                    <= tkeep_int_reg;
       end
   end  
     
   assign   tvalid_int                 = ((gen_state != IDLE) || 
                                          (column_after_idle && first_frame_gen_done) || 
                                          (tlast_int && gen_state != IDLE)) ? 1 : 0;
  
 
   // Form tdata_int here 
   // opreg7to0 
          
   always @(*) 
   begin
      case (gen_state)
         PREAMBLE  : tdata_int[7:0]    <= START_CODE;
         ADDR      : tdata_int[7:0]    <= dest_addr[7:0];
         ADDR_TL_D : tdata_int[7:0]    <= src_addr[23:16];
         ADDR_VLAN : tdata_int[7:0]    <= src_addr[23:16];
         TL_D      : tdata_int[7:0]    <= payload_size[15:8];
         DATA      : tdata_int[7:0]    <= gen_data_reg_1_0[7:0];   
         IDLE      : tdata_int[7:0]    <= tdata_int_reg[7:0];
         default   : tdata_int[7:0]    <= tdata_int_reg[7:0];
      endcase
   end
  
   // opreg15to8 
  
   always @(*) 
   begin
      case (gen_state)
         PREAMBLE  : tdata_int[15:8]   <= preamble_data[7:0];
         ADDR      : tdata_int[15:8]   <= dest_addr[15:8];
         ADDR_TL_D : tdata_int[15:8]   <= src_addr[31:24];
         ADDR_VLAN : tdata_int[15:8]   <= src_addr[31:24];
         TL_D      : tdata_int[15:8]   <= payload_size[7:0];
         DATA      : tdata_int[15:8]   <= gen_data_reg_1_0[15:8];   
         IDLE      : tdata_int[15:8]   <= tdata_int_reg[15:8];
         default   : tdata_int[15:8]   <= tdata_int_reg[15:8];
      endcase
   end
  
   // opreg23to16 
  
   always @(*) 
   begin
      case (gen_state)
         PREAMBLE  : tdata_int[23:16]  <= preamble_data[15:8];
         ADDR      : tdata_int[23:16]  <= dest_addr[23:16];
         ADDR_TL_D : tdata_int[23:16]  <= src_addr[39:32];
         ADDR_VLAN : tdata_int[23:16]  <= src_addr[39:32];
         TL_D      : tdata_int[23:16]  <= gen_data_reg_3_2[7:0];
         DATA      : tdata_int[23:16]  <= gen_data_reg_3_2[7:0];   
         IDLE      : tdata_int[23:16]  <= tdata_int_reg[23:16];
         default   : tdata_int[23:16]  <= tdata_int_reg[23:16];
      endcase
   end
  
   // opreg31to24 
  
   always @(*) 
   begin
      case (gen_state)
         PREAMBLE  : tdata_int[31:24]  <= preamble_data[23:16];
         ADDR      : tdata_int[31:24]  <= dest_addr[31:24];
         ADDR_TL_D : tdata_int[31:24]  <= src_addr[47:40];
         ADDR_VLAN : tdata_int[31:24]  <= src_addr[47:40];
         TL_D      : tdata_int[31:24]  <= gen_data_reg_3_2[15:8];
         DATA      : tdata_int[31:24]  <= gen_data_reg_3_2[15:8];   
         IDLE      : tdata_int[31:24]  <= tdata_int_reg[31:24];
         default   : tdata_int[31:24]  <= tdata_int_reg[31:24];
      endcase
   end
  
   // opreg39to32 
  
   always @(*) 
   begin
      case (gen_state)
         PREAMBLE  : tdata_int[39:32]  <= preamble_data[31:24];
         ADDR      : tdata_int[39:32]  <= dest_addr[39:32];
         ADDR_TL_D : tdata_int[39:32]  <= payload_size[15:8];
         ADDR_VLAN : tdata_int[39:32]  <= vlan_header[31:24];
         TL_D      : tdata_int[39:32]  <= gen_data_reg_5_4[7:0];
         DATA      : tdata_int[39:32]  <= gen_data_reg_5_4[7:0];   
         IDLE      : tdata_int[39:32]  <= tdata_int_reg[39:32];
         default   : tdata_int[39:32]  <= tdata_int_reg[39:32];
      endcase
   end
  
   // opreg47to40 
  
   always @(*) 
   begin
       case (gen_state)
         PREAMBLE  : tdata_int[47:40]  <= preamble_data[39:32];
         ADDR      : tdata_int[47:40]  <= dest_addr[47:40];
         ADDR_TL_D : tdata_int[47:40]  <= payload_size[7:0];
         ADDR_VLAN : tdata_int[47:40]  <= vlan_header[23:16];
         TL_D      : tdata_int[47:40]  <= gen_data_reg_5_4[15:8];
         DATA      : tdata_int[47:40]  <= gen_data_reg_5_4[15:8];   
         IDLE      : tdata_int[47:40]  <= tdata_int_reg[47:40];
         default   : tdata_int[47:40]  <= tdata_int_reg[47:40];
      endcase
   end
  
   // opreg55to48
  
   always @(*) 
   begin
      case (gen_state)
         PREAMBLE  : tdata_int[55:48]  <= preamble_data[47:40];
         ADDR      : tdata_int[55:48]  <= src_addr[7:0];
         ADDR_TL_D : tdata_int[55:48]  <= gen_data_reg_7_6[7:0];
         ADDR_VLAN : tdata_int[55:48]  <= vlan_header[15:8];
         TL_D      : tdata_int[55:48]  <= gen_data_reg_7_6[7:0];
         DATA      : tdata_int[55:48]  <= gen_data_reg_7_6[7:0];   
         IDLE      : tdata_int[55:48]  <= tdata_int_reg[55:48];
         default   : tdata_int[55:48]  <= tdata_int_reg[55:48];
      endcase
   end
  
   // opreg63to56 
  
   always @(*) 
   begin
      case (gen_state)
         PREAMBLE  : tdata_int[63:56]  <= preamble_data[55:48];
         ADDR      : tdata_int[63:56]  <= src_addr[15:8];
         ADDR_TL_D : tdata_int[63:56]  <= gen_data_reg_7_6[15:8];
         ADDR_VLAN : tdata_int[63:56]  <= vlan_header[7:0];
         TL_D      : tdata_int[63:56]  <= gen_data_reg_7_6[15:8];
         DATA      : tdata_int[63:56]  <= gen_data_reg_7_6[15:8];   
         IDLE      : tdata_int[63:56]  <= tdata_int_reg[63:56];
         default   : tdata_int[63:56]  <= tdata_int_reg[63:56];
      endcase
   end
 
   //---------------------------------------------
   // Push generated data to output state machine 
   //---------------------------------------------
   // Output data is a clock cycle behind the generated data
   // Note that tvalid_int represents the valid signal of the generated frame and not the 
   // frame that is being output
   // If there has been a frame_end with a low tready valid_out has to be kept
   // high until we see a tready therefore the additional term after tvalid_int
 
   // Once we got past IDLE we only want to refresh the data when both tready and tvalid_int are set

 
   always @ (posedge aclk)
   begin
      if (areset) begin
         tdata                         <= 64'd0;
         tkeep                         <= 8'd0;
         tlast                         <= 0;
         tvalid                        <= 0;
         data_out_state                <= IDLE;
      end 
      else begin 
         case (data_out_state) 
            IDLE : begin
               tvalid                  <= tvalid_int || (frame_end && !tready && gen_state == IDLE);
               tdata                   <= tdata_int;
               tkeep                   <= tkeep_int;
               tlast                   <= tlast_int;
               if(gen_state == PREAMBLE || gen_state == ADDR) begin
                  data_out_state       <= REST_OF_FRAME;
               end
            end
            REST_OF_FRAME : begin
               tvalid                  <= tvalid_int || (frame_end && !tready && gen_state == IDLE);
               if(tready && tvalid_int) begin
                  tdata                <= tdata_int;
                  tkeep                <= tkeep_int;
                  tlast                <= tlast_int;
               end
               else if (!tvalid_int) begin
                  data_out_state       <= IDLE;
               end
            end
            default : begin
               data_out_state          <= IDLE;
            end
         endcase
      end
   end
  
endmodule
