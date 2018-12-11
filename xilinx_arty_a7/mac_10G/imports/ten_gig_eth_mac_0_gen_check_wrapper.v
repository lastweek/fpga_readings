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
// Title      : Frame generation wrapper for 10 Gig Ethernet 
// Project    : 10 Gigabit Ethernet Core
//------------------------------------------------------------------------------------------
// File       : ten_gig_eth_mac_0_gen_check_wrapper.v
// Author     : Xilinx Inc.
// -----------------------------------------------------------------------------------------
// Description: This module allows either a user side loopback, with address swapping,
//              OR the generation of simple packets.  The selection being controlled by a top level input
//              which can be sourced fdrom a DIP switch in hardware.
//              The packet generation is controlled by simple parameters giving the ability to set the DA,
//              SA amd max/min size packets.  The data portion of each packet is always a simple
//              incrementing pattern.
//              When configured to loopback the first two columns of the packet are accepted and then the
//              packet is output with/without address swapping. Currently, this is hard wired in the address
//              swap logic.
//-------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------

`timescale 1ps/1ps

(* dont_touch = "yes" *)
module ten_gig_eth_mac_0_gen_check_wrapper (
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
   input wire                          reset_error,        
   input wire                          insert_error,        
   input wire                          enable_pat_gen,      
   input wire                          enable_pat_check,

   // data from the RX data path
   input       [63:0]                  rx_axis_tdata,
   input       [7:0]                   rx_axis_tkeep,
   input                               rx_axis_tvalid,
   input                               rx_axis_tlast,
   output                              rx_axis_tready,
   
   // data to the TX data path
   output      [63:0]                  tx_axis_tdata,
   output      [7:0]                   tx_axis_tkeep,
   output                              tx_axis_tvalid,
   output                              tx_axis_tlast,     
   input                               tx_axis_tready,
                      
   output wire                         gen_active_flash,
   output wire                         check_active_flash,  
   output wire                         frame_error        
);

   wire                                sync_reset;
   wire        [63:0]                  rx_axis_tdata_int;
   wire        [7:0]                   rx_axis_tkeep_int;
   wire                                rx_axis_tvalid_int;
   wire                                rx_axis_tlast_int;
   wire                                rx_axis_tready_int;
                       
   wire        [63:0]                  pat_gen_tdata;
   wire        [7:0]                   pat_gen_tkeep;
   wire                                pat_gen_tvalid;
   wire                                pat_gen_tlast;
   wire                                pat_gen_tready;
                       
   wire        [63:0]                  mux_tdata;
   wire        [7:0]                   mux_tkeep;
   wire                                mux_tvalid;
   wire                                mux_tlast;
   wire                                mux_tready;
                       
   wire        [63:0]                  tx_axis_as_tdata;
   wire        [7:0]                   tx_axis_as_tkeep;
   wire                                tx_axis_as_tvalid;
   wire                                tx_axis_as_tlast;
   wire                                tx_axis_as_tready;
   
   wire                                enable_pat_gen_sync;
   wire                                enable_pat_check_sync;
   wire                                insert_error_sync;
   wire                                reset_error_sync;

   assign tx_axis_tdata                = tx_axis_as_tdata;
   assign tx_axis_tkeep                = tx_axis_as_tkeep;
   assign tx_axis_tvalid               = tx_axis_as_tvalid;
   assign tx_axis_tlast                = tx_axis_as_tlast;
   assign tx_axis_as_tready            = tx_axis_tready;
   assign rx_axis_tready               = rx_axis_tready_int;

   ten_gig_eth_mac_0_sync_reset rx_reset_gen (
      .reset_in                        (areset),
      .clk                             (aclk),
      .reset_out                       (sync_reset)
   );
   
   ten_gig_eth_mac_0_sync_block sync_pat_gen (
      .data_in                         (enable_pat_gen),
      .clk                             (aclk),
      .data_out                        (enable_pat_gen_sync)
   );
   
   ten_gig_eth_mac_0_sync_block sync_pat_chk (
      .data_in                         (enable_pat_check),
      .clk                             (aclk),
      .data_out                        (enable_pat_check_sync)
   );
   
   ten_gig_eth_mac_0_sync_block sync_insert_error (
      .data_in                         (insert_error),
      .clk                             (aclk),
      .data_out                        (insert_error_sync)
   );
   
   ten_gig_eth_mac_0_sync_block sync_reset_error (
      .data_in                         (reset_error),
      .clk                             (aclk),
      .data_out                        (reset_error_sync)
   );
   
   
   ten_gig_eth_mac_0_axi_pat_gen generator (
      .dest_addr                       (dest_addr),
      .src_addr                        (src_addr),
      .max_size                        (max_size),
      .min_size                        (min_size),
      .enable_vlan                     (enable_vlan),
      .vlan_id                         (vlan_id),
      .vlan_priority                   (vlan_priority),
      .preamble_data                   (preamble_data),
      .enable_custom_preamble          (enable_custom_preamble),
                         
      .aclk                            (aclk),
      .areset                          (sync_reset),
      .insert_error                    (insert_error_sync),
      .enable_pat_gen                  (enable_pat_gen_sync),
                         
      .tdata                           (pat_gen_tdata),
      .tkeep                           (pat_gen_tkeep),
      .tvalid                          (pat_gen_tvalid),
      .tlast                           (pat_gen_tlast),
      .tready                          (pat_gen_tready),
      .gen_active_flash                (gen_active_flash)
   );
  
   // simple mux between the rx_fifo AXI interface and the pat gen output
   ten_gig_eth_mac_0_axi_mux axi_mux_inst (
      .mux_select                      (enable_pat_gen_sync),
                         
      .tdata0                          (rx_axis_tdata),
      .tkeep0                          (rx_axis_tkeep),
      .tvalid0                         (rx_axis_tvalid),
      .tlast0                          (rx_axis_tlast),
      .tready0                         (rx_axis_tready_int),
                         
      .tdata1                          (pat_gen_tdata),
      .tkeep1                          (pat_gen_tkeep),
      .tvalid1                         (pat_gen_tvalid),
      .tlast1                          (pat_gen_tlast),
      .tready1                         (pat_gen_tready),
                         
      .tdata                           (mux_tdata),
      .tkeep                           (mux_tkeep),
      .tvalid                          (mux_tvalid),
      .tlast                           (mux_tlast),
      .tready                          (mux_tready)
   );
  
  
   // address swap module: based around a Dual port distributed ram
   // data is written in and the read only starts once the da/sa have been
   // stored.  

   ten_gig_eth_mac_0_address_swap address_swap (
      .aclk                            (aclk),
      .areset                          (sync_reset),  
      .enable_custom_preamble          (enable_custom_preamble),
      .address_swap_enable             (!enable_pat_gen_sync),  // do the address swap when in loopback
                                                           // no address swap when in pat_gen is enabled
      .rx_axis_tdata                   (mux_tdata),
      .rx_axis_tkeep                   (mux_tkeep),
      .rx_axis_tvalid                  (mux_tvalid),
      .rx_axis_tlast                   (mux_tlast),
      .rx_axis_tready                  (mux_tready), 
      .tx_axis_tdata                   (tx_axis_as_tdata),
      .tx_axis_tkeep                   (tx_axis_as_tkeep),
      .tx_axis_tvalid                  (tx_axis_as_tvalid),
      .tx_axis_tlast                   (tx_axis_as_tlast),
      .tx_axis_tready                  (tx_axis_as_tready)
   );
 
  
   ten_gig_eth_mac_0_axi_pat_check checker(
      .dest_addr                       (dest_addr),
      .src_addr                        (src_addr),
      .max_size                        (max_size),
      .min_size                        (min_size),
      .enable_vlan                     (enable_vlan),
      .vlan_id                         (vlan_id),
      .vlan_priority                   (vlan_priority),
      .preamble_data                   (preamble_data),
      .enable_custom_preamble          (enable_custom_preamble),
                          
      .aclk                            (aclk),
      .areset                          (sync_reset),
      .reset_error                     (reset_error_sync),
      .enable_pat_check                (enable_pat_check_sync),
                          
      .tdata                           (rx_axis_tdata),
      .tkeep                           (rx_axis_tkeep),
      .tvalid                          (rx_axis_tvalid),
      .tlast                           (rx_axis_tlast),
      .tready                          (rx_axis_tready_int),
      .tuser                           (1'b1),
      .frame_error                     (frame_error),
      .check_active_flash              (check_active_flash)
   );

endmodule
