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
//----------------------------------------------------------------------
// Title      : Address Swap block for 10 Gig Ethernet 
// Project    : 10 Gigabit Ethernet Core
//----------------------------------------------------------------------
// File       : ten_gig_eth_mac_0_address_swap.v  
// Author     : Xilinx Inc.
//----------------------------------------------------------------------
// Description: This is the Address swap block  for the 10 Gigabit Ethernet MAC core. 
//              It swaps the destination and source addresses of frames that pass through.
//              When address swap is not enabled this module is transparent
//              otherwise acts as a slave.
//----------------------------------------------------------------------

`timescale 1ps / 1ps

module ten_gig_eth_mac_0_address_swap (
   input                               aclk,
   input                               areset,
   input                               enable_custom_preamble,
   input                               address_swap_enable,
   input       [63:0]                  rx_axis_tdata,
   input       [7:0]                   rx_axis_tkeep,
   input                               rx_axis_tlast,
   input                               rx_axis_tvalid,
   output                              rx_axis_tready,
   output      [63:0]                  tx_axis_tdata,
   output      [7:0]                   tx_axis_tkeep,
   output                              tx_axis_tlast,
   output                              tx_axis_tvalid,
   input                               tx_axis_tready
 );


   localparam                          IDLE        = 0,
                                       PREAMBLE    = 1,
                                       ADDR        = 2,
                                       TLAST_SEEN  = 3;

              
   reg         [1:0]                   state;
   //-------------------------------------------------------------------
   //-- internal signals used in this design example.
   //-------------------------------------------------------------------

   // two state fifo state machine
   reg                                 data_stored_n;

   // single register in Local Link data path
   reg         [63:0]                  rx_axis_tdata_out_reg;
   reg         [63:0]                  tx_data_in;
   reg         [63:0]                  tx_axis_tdata_out;
   reg         [31:0]                  rx_axis_tdata_out_reg_reg;
   reg         [7:0]                   rx_axis_tkeep_reg;
   reg         [7:0]                   tx_axis_tkeep_out;
   reg                                 rx_sof_n_reg;
   reg                                 rx_sof_n_reg_reg;
   reg                                 rx_axis_tlast_reg;
   reg                                 rx_axis_tvalid_reg;


   wire                                axis_data_beat;
  
   reg                                 tx_axis_tlast_out;
   reg                                 tx_axis_tvalid_reg;
   reg                                 tx_axis_tvalid_out;
  

   //--------------------------------------------------------------------
   // State machine to determine Start Of Frame
   //--------------------------------------------------------------------
   always @(posedge aclk)
   begin
      if (areset) begin 
         state                         <= IDLE;
         rx_sof_n_reg                  <= 0;
      end
      else begin
         case (state)
            IDLE : begin
               if (rx_axis_tvalid & rx_axis_tkeep != 0 & enable_custom_preamble & tx_axis_tready) begin
                  state                <= PREAMBLE;
               end
               else if (rx_axis_tvalid & rx_axis_tkeep != 0 & !enable_custom_preamble & tx_axis_tready) begin
                  rx_sof_n_reg         <= 1;
                  state                <= ADDR;
               end
            end
            PREAMBLE : begin
               if (rx_axis_tvalid & rx_axis_tkeep != 0 & tx_axis_tready) begin
                  rx_sof_n_reg         <= 1;
               end
               state                   <= ADDR;
            end
            ADDR : begin
             rx_sof_n_reg              <= 0;
             if (rx_axis_tvalid & rx_axis_tlast & tx_axis_tready) begin
                state                  <= TLAST_SEEN;
             end
            end
            TLAST_SEEN : begin
               if (rx_axis_tvalid & rx_axis_tkeep != 0 & enable_custom_preamble & tx_axis_tready) begin
                  state                <= PREAMBLE;
               end
               else if (rx_axis_tvalid & rx_axis_tkeep != 0 & !enable_custom_preamble & tx_axis_tready) begin
                  rx_sof_n_reg         <= 1;
                  state                <= ADDR;
               end
            end
         endcase
      end
   end

   //--------------------------------------------------------------------
   // Buffer one and a half words to allow address swap
   //--------------------------------------------------------------------

   assign axis_data_beat               = rx_axis_tvalid & tx_axis_tready;

   always @(posedge aclk)
   begin
      if (areset) begin 
         rx_axis_tdata_out_reg         <= 32'b0;
         rx_axis_tkeep_reg             <= 8'b0;
         rx_sof_n_reg_reg              <= 1'b0;
         rx_axis_tlast_reg             <= 1'b0;
         rx_axis_tdata_out_reg_reg     <= 64'b0;
         data_stored_n                 <= 1'b0;
         rx_axis_tvalid_reg            <= 1'b0;
      end
      else begin
         rx_axis_tvalid_reg            <= rx_axis_tvalid;
         rx_axis_tlast_reg             <= 1'b0;
         if (axis_data_beat) begin
            data_stored_n              <= 1'b1;
            rx_axis_tdata_out_reg      <= rx_axis_tdata;
            rx_axis_tkeep_reg          <= rx_axis_tkeep;
            rx_sof_n_reg_reg           <= rx_sof_n_reg;
            rx_axis_tlast_reg          <= rx_axis_tlast;
            rx_axis_tdata_out_reg_reg  <= rx_axis_tdata_out_reg[47:16];
         end
         else if (!axis_data_beat && rx_axis_tlast_reg) begin
            rx_axis_tlast_reg          <= rx_axis_tlast_reg;
            data_stored_n              <= 1'b0;
         end
      end
   end


   //--------------------------------------------------------------------
   // Output to Tx
   //--------------------------------------------------------------------

   // address swap following new SOF
   always @(rx_sof_n_reg or rx_axis_tdata_out_reg or rx_axis_tdata
            or rx_sof_n_reg_reg or rx_axis_tdata_out_reg_reg)
   begin
      if (rx_sof_n_reg)
         tx_data_in                    <= {rx_axis_tdata_out_reg[15:0],
                                           rx_axis_tdata[31:0],
                                           rx_axis_tdata_out_reg[63:48]};
      else if (rx_sof_n_reg_reg)
         tx_data_in                    <= {rx_axis_tdata_out_reg[63:32],
                                           rx_axis_tdata_out_reg_reg};
      else
         tx_data_in                    <= rx_axis_tdata_out_reg;
   end


   always @(posedge aclk) begin
      if (areset) begin
         tx_axis_tdata_out             <= 64'b0;
         tx_axis_tkeep_out             <= 8'b0;
         tx_axis_tvalid_out            <= 1'b0;
         tx_axis_tvalid_reg            <= 1'b0;
         tx_axis_tlast_out             <= 1'b0;
      end
      else begin
         if (tx_axis_tready) begin 
            tx_axis_tdata_out          <= tx_data_in;
            tx_axis_tkeep_out          <= rx_axis_tkeep_reg;
            tx_axis_tvalid_reg         <= axis_data_beat;
            tx_axis_tvalid_out         <= tx_axis_tvalid_reg;
            tx_axis_tlast_out          <= rx_axis_tlast_reg;
         end
      end
   end

   assign tx_axis_tvalid               = (address_swap_enable) ? tx_axis_tvalid_out : rx_axis_tvalid;
   assign tx_axis_tdata                = (address_swap_enable) ? tx_axis_tdata_out : rx_axis_tdata;
   assign tx_axis_tkeep                = (address_swap_enable) ? tx_axis_tkeep_out : rx_axis_tkeep;
   assign tx_axis_tlast                = (address_swap_enable) ? (tx_axis_tlast_out & tx_axis_tready & tx_axis_tvalid_out) : rx_axis_tlast;
   assign rx_axis_tready               = tx_axis_tready;

endmodule
