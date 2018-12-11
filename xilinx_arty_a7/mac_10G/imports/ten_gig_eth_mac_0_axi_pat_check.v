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
//------------------------------------------------------------------------------
// Title      : Frame checker for 10 Gig Ethernet
// Project    : 10 Gigabit Ethernet Core
//------------------------------------------------------------------------------
// File       : ten_gig_eth_mac_0_axi_pat_check.v
// Author     : Xilinx Inc.
// -----------------------------------------------------------------------------
// Description: A simple pattern checker - expects the same data pattern as generated
//              by the pat_gen with the same DA/SA regardless whether an address swap has been performed or not.
//              The checker will first sync to the data and then identify any errors (this is a sticky output but
//              the internal signal is per lane)
//------------------------------------------------------------------------------

`timescale 1ps/1ps

(* dont_touch = "yes" *)
module ten_gig_eth_mac_0_axi_pat_check (
   input wire  [47:0]                  dest_addr,
   input wire  [47:0]                  src_addr,
   input wire  [14:0]                  max_size,
   input wire  [14:0]                  min_size,
   input wire                          enable_vlan,
   input wire  [11:0]                  vlan_id,
   input wire  [2:0]                   vlan_priority,
   input wire                          enable_custom_preamble,
   input wire  [55:0]                  preamble_data,

   input wire                          aclk,
   input wire                          areset,
   input wire                          reset_error,
   input wire                          enable_pat_check,

   input wire  [63:0]                  tdata,
   input wire  [7:0]                   tkeep,
   input wire                          tvalid,
   input wire                          tlast,
   input wire                          tready,
   input wire                          tuser,
   output reg                          frame_error,
   output reg                          check_active_flash
 );

   localparam                          IDLE        = 0,
                                       PREAMBLE    = 1,
                                       ADDR        = 2,
                                       ADDR_TL_D   = 3,  // ADDRESS + TYPE/LENGTH + DATA
                                       ADDR_VLAN   = 4,  // ADDRESS + VLAN
                                       TL_D        = 5,  // TYPE/LENGTH + DATA
                                       DATA        = 6;

   // used when custom preamble is enabled
   localparam                          START_CODE  = 8'hFB;


   reg         [2:0]                   rx_state;
   reg         [2:0]                   prev_rx_state;

   reg                                 frame_error_int      = 1'b0;
   reg                                 frame_dropped        = 1'b0;
   reg         [7:0]                   errored_data         = 8'd0;
   reg         [7:0]                   errored_addr         = 8'd0;
   reg         [7:0]                   errored_preamble     = 8'd0;

   reg         [20:0]                  frame_activity_count = 21'd0;

   // these registers hold the data that is being
   // compared against during data reception
   reg         [7:0]                   exp_data[7:0];
   reg         [63:0]                  exp_preamble_data;
   reg         [63:0]                  exp_header_dest;
   reg         [63:0]                  exp_header_src;
   reg         [63:0]                  exp_vlan_header_dest;
   reg         [63:0]                  exp_vlan_header_src;
   reg         [63:0]                  exp_tl_header_dest;
   reg         [63:0]                  exp_tl_header_src;

   wire        [5:0]                   pkt_adjust;
   wire        [31:0]                  vlan_header;
   reg         [15:0]                  got_payload_size = 16'd0;
   reg         [15:0]                  got_payload_size_plus1 = 16'd0;
   reg         [15:0]                  exp_payload_size = 16'd0;
   reg         [15:0]                  byte_count = 16'd0;

   reg                                 first_frame_detected = 1'b0;
   reg                                 check_frame = 1'b0;
   reg                                 fast_flash = 1'b1;

   reg                                 reset = 1'b0;

   always @(posedge aclk)
   begin
      if (areset || reset_error)
         reset                         <= 1;
      else
         reset                         <= 0;
   end

   // work out the adjustment required to get the right packet size.
   // 6(DA) + 6(SA) + 4(VLAN OPT) + 2(L/T) + 4(CRC)
   assign pkt_adjust                   = (enable_vlan) ? 22 : 18;

   // generate the vlan fields
   assign vlan_header                  = {8'h81, 8'h00, vlan_priority, 1'b0, vlan_id};

   // need a counter for frame activity to provide some feedback that frames are being received
   // flash rate depends the size of frames being received eg. big frames slow flashing
   always @(posedge aclk)
   begin
      if (reset)
         frame_activity_count          <= 0;
      else if (rx_state == ADDR && tvalid && tready)
         frame_activity_count          <= frame_activity_count + 1;
   end

   // when the active_count is below 64 use a fast output for the flash
   always @(posedge aclk)
   begin
      if (frame_activity_count[6])
         fast_flash                    <= 0;
   end

   always @(posedge aclk)
   begin
      if (reset)
         check_active_flash            <= 0;
      else if (enable_pat_check) begin
         if (fast_flash)
            check_active_flash         <= frame_activity_count[3];
         else
            check_active_flash         <= frame_activity_count[20];
      end
      else begin
         check_active_flash            <= 0;
      end
   end

   // we need a way to confirm data has been received to ensure that if no data is received it is
   // flagged as an error

   always @(posedge aclk)
   begin
      if (reset)
         frame_error                   <= 0;
      else if (rx_state == DATA)
         frame_error                   <= frame_error_int;
   end

   always @(posedge aclk)
   begin
      if (reset)
         frame_error_int               <= 0;
      else if (frame_dropped || (|errored_preamble) || (|errored_addr) || (|errored_data))
         frame_error_int               <= 1;
   end

   // the pattern checker is a slave, it so has to look for ackowledged data
   // a simple state machine will keep track of the packet position


   always @(posedge aclk)
   begin
      if (reset) begin
         first_frame_detected          <= 0;
         rx_state                      <= IDLE;
      end
      else begin
         case (rx_state)
         //First tlast means we can start syncing with the incoming frames
         //Therefore first frame is not checked
            IDLE : begin
               if (tlast & tvalid & tready & enable_pat_check & !first_frame_detected) begin
                  first_frame_detected <= 1;
                  rx_state             <= IDLE;
               end
               else if (tlast & tvalid & tready & enable_pat_check & enable_custom_preamble &
                        first_frame_detected) begin
                  rx_state             <= PREAMBLE;
               end
               else if (tlast & tvalid & tready & enable_pat_check & !enable_custom_preamble &
                        first_frame_detected) begin
                  rx_state             <= ADDR;
               end
            end
            PREAMBLE : begin
               if (tvalid & tready & tuser)
                  rx_state             <= ADDR;
            end
            ADDR : begin
               if (tvalid & tready & tuser & enable_vlan)
                  rx_state             <= ADDR_VLAN;
               else if (tvalid & tready & tuser & !enable_vlan )
                  rx_state             <= ADDR_TL_D;
            end
            ADDR_VLAN : begin
               if (tvalid & tready & tuser)
                  rx_state             <= TL_D;
            end
            ADDR_TL_D : begin
               if (tvalid & tready & tuser)
                  rx_state             <= DATA;
            end
            TL_D : begin
               if (tvalid & tready & tuser)
                  rx_state             <= DATA;
            end
            DATA : begin
               if (tlast & tvalid & tready & |tkeep) begin
                  if (!tuser || frame_error_int)
                     rx_state          <= IDLE;
                  else if (enable_custom_preamble)
                     rx_state          <= PREAMBLE;
                  else
                     rx_state          <= ADDR;
               end
            end
            default : begin
               rx_state                <= IDLE;
            end
         endcase
      end
   end

   always @(posedge aclk)
   begin
      if (reset)
         prev_rx_state                 <= IDLE;
      else
         prev_rx_state                 <= rx_state;
   end

   // start checking only after first frame passed
   always @(posedge aclk)
   begin
      if (reset)
         check_frame                   <= 0;
      else if (rx_state == DATA & tlast)
         check_frame                   <= 1;
   end

   // need to get packet size info
   // this is first initialised during the info state (the assumption being that
   // the generate sends incrementing packet sizes (wrapping at MAX_SIZE)

   always @(posedge aclk)
   begin
     if (rx_state == ADDR_TL_D & tvalid & tready) begin
         got_payload_size              <= {tdata[39:32],tdata[47:40]};
         got_payload_size_plus1        <= {tdata[39:32],tdata[47:40]} + 16'd1;
      end
      else if (rx_state == TL_D & tvalid & tready) begin
         got_payload_size              <= {tdata[7:0],tdata[15:8]};
         got_payload_size_plus1        <= {tdata[7:0],tdata[15:8]} + 16'd1;
      end
   end

   // determine the expected frame size of the next frame
   always @(posedge aclk)
   begin
      if ((got_payload_size >= max_size - pkt_adjust) &
          (prev_rx_state == ADDR_TL_D || prev_rx_state == TL_D) & tvalid)
         exp_payload_size              <= (min_size - pkt_adjust);
      else if ((prev_rx_state == ADDR_TL_D || prev_rx_state == TL_D) & tvalid)
         exp_payload_size              <= got_payload_size_plus1;
   end

   // do frame size check after first frame received
   always @(posedge aclk)
   begin
      if (reset || !enable_pat_check)
         frame_dropped                 <= 0;
      else if ((prev_rx_state == ADDR_TL_D || prev_rx_state == TL_D) & rx_state == DATA
              & tvalid & tready & check_frame & exp_payload_size != got_payload_size)
         frame_dropped                 <= 1;
   end

   // byte_count is used for data checking per columns
   always @(posedge aclk)
   begin
      if (reset || !enable_pat_check) begin
         byte_count                    <= 0;
      end
      else if ((rx_state == ADDR) & !enable_vlan & tready & tvalid) begin
         byte_count                    <= exp_payload_size + 6;
      end
      else if ((rx_state == ADDR_VLAN) & tready & tvalid) begin
         byte_count                    <= exp_payload_size + 2;
      end
      else if ((rx_state == TL_D || rx_state == ADDR_TL_D || rx_state == DATA) &
               (byte_count > 8) & tready & tvalid) begin
         byte_count                    <= byte_count - 8;
      end
      else if (rx_state == DATA & (byte_count <= 8) & tready & tvalid) begin
         byte_count                    <= 0;
      end
   end

   // before checking the data pattern we have to generate the expected data
   // this can also be used to allow a generate statement to be used
   always @(*)
   begin
      {exp_data[1], exp_data[0]}       = byte_count;
      {exp_data[3], exp_data[2]}       = byte_count - 2;
      {exp_data[5], exp_data[4]}       = byte_count - 4;
      {exp_data[7], exp_data[6]}       = byte_count - 6;
      exp_preamble_data                = {preamble_data, START_CODE};
      exp_header_dest                  = {src_addr[15:0], dest_addr[47:0]};
      exp_header_src                   = {dest_addr[15:0], src_addr[47:0]};
      exp_vlan_header_dest             = {vlan_header[7:0], vlan_header[15:8], vlan_header[23:16],
                                          vlan_header[31:24],dest_addr[47:16]};
      exp_vlan_header_src              = {vlan_header[7:0], vlan_header[15:8], vlan_header[23:16],
                                          vlan_header[31:24],src_addr[47:16]};
      exp_tl_header_dest               = {exp_data[7], exp_data[6], exp_data[6], exp_data[7], dest_addr[47:16]};
      exp_tl_header_src                = {exp_data[7], exp_data[6], exp_data[6], exp_data[7], src_addr[47:16]};
   end

   // do the byte to byte comparison here
   genvar i;
   generate
   for (i=0; i<8; i=i+1) begin : check_loop
      always @(posedge aclk)
      begin
         if (reset || !enable_pat_check) begin
             errored_preamble[i]          <= 1'b0;
             errored_addr[i]              <= 1'b0;
             errored_data[i]              <= 1'b0;
         end
         else begin
            if (tvalid & check_frame) begin
               case (rx_state)
                  PREAMBLE  :
                     if (tdata[((i+1)*8)-1-:8] != exp_preamble_data[((i+1)*8)-1-:8])
                        errored_preamble[i] <= 1;
                  ADDR      :
                     if (!(tdata[((i+1)*8)-1-:8] == exp_header_dest[((i+1)*8)-1-:8] ||
                           tdata[((i+1)*8)-1-:8] == exp_header_src[((i+1)*8)-1-:8]))
                        errored_addr[i]   <= 1;
                  ADDR_TL_D :
                     if (!(tdata[((i+1)*8)-1-:8] == exp_tl_header_dest[((i+1)*8)-1-:8] ||
                           tdata[((i+1)*8)-1-:8] == exp_tl_header_src[((i+1)*8)-1-:8]))
                        errored_addr[i]   <= 1;
                  ADDR_VLAN :
                     if (!(tdata[((i+1)*8)-1-:8] == exp_vlan_header_dest[((i+1)*8)-1-:8] ||
                           tdata[((i+1)*8)-1-:8] == exp_vlan_header_src[((i+1)*8)-1-:8]))
                        errored_addr[i]   <= 1;
                  TL_D, DATA      :
                     if (tkeep[i] && tdata[((i+1)*8)-1-:8] != exp_data[i])
                        errored_data[i]   <= 1;
                  default   : begin
                     errored_preamble[i]  <= 0;
                     errored_addr[i]      <= 0;
                     errored_data[i]      <= 0;
                  end
               endcase
            end
         end
      end
   end
   endgenerate

endmodule
