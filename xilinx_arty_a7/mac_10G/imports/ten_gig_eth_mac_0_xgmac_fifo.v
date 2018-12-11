//-----------------------------------------------------------------------------
// Title      : XGMAC Tx/Rx FIFO Wrapper
// Project    : 10 Gig Ethernet MAC FIFO Reference Design
//-----------------------------------------------------------------------------
// File       : xgmac_fifo.v
// Author     : Xilinx Inc.
//-----------------------------------------------------------------------------
// Description:
// This module is the top level entity for the 10 Gig Ethernet MAC FIFO
// Reference Design.  This top level connects together the lower hierarchial
// entities which create this design. This is illustrated below.
//-----------------------------------------------------------------------------
//
//           .---------------------------------------------.
//           |                                             |
//           |       .----------------------------.        |
//           |       |       TRANSMIT_FIFO        |        |
//  ---------|------>|                            |--------|-------> MAC Tx
//           |       |                            |        |         Interface
//           |       '----------------------------'        |
//           |                                             |
//           |                                             |
//           |                                             |
// External  |                                             |
// AXI-S     |                                             |
// Interface |                                             |
//           |                                             |
//           |       .----------------------------.        |
//           |       |       RECEIVE_FIFO         |        |
//  <--------|-------|                            |<-------|--------   MAC Rx Interface
//           |       |                            |        |
//           |       '----------------------------'        |
//           |                                             |
//           |                                             |
//           |                                             |
//           |                                             |
//           |                                             |
//           '---------------------------------------------'
//
//-----------------------------------------------------------------------------
// Functionality:
//
// 1. TRANSMIT_FIFO accepts 64-bit data from the client and writes
//    this into the Transmitter FIFO. The logic will then extract this from
//    the FIFO and write this data to the MAC Transmitter in 64-bit words.
//
// 2. RECEIVE_FIFO accepts 64-bit data from the MAC Receiver and
//    writes this into the Receiver FIFO.  The client inferface can then
//    read 64-bit words from this FIFO.
//
//-----------------------------------------------------------------------------
// (c) Copyright 2001-2014 Xilinx, Inc. All rights reserved.
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
//
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

module ten_gig_eth_mac_0_xgmac_fifo #(
    parameter  TX_FIFO_SIZE = 512,
    parameter  RX_FIFO_SIZE = 512)
  (
    //--------------------------------------------------------------
    // client interface                                           --
    //--------------------------------------------------------------
    // tx_wr_clk domain
    input         tx_axis_fifo_aresetn,
    input         tx_axis_fifo_aclk,
    input [63:0]  tx_axis_fifo_tdata,
    input [7:0]   tx_axis_fifo_tkeep,
    input         tx_axis_fifo_tvalid,
    input         tx_axis_fifo_tlast,
    output        tx_axis_fifo_tready,
    output        tx_fifo_full,
    output [3:0]  tx_fifo_status,
    //rx_rd_clk domain
    input         rx_axis_fifo_aresetn,
    input         rx_axis_fifo_aclk,
    output [63:0] rx_axis_fifo_tdata,
    output [7:0]  rx_axis_fifo_tkeep,
    output        rx_axis_fifo_tvalid,
    output        rx_axis_fifo_tlast,
    input         rx_axis_fifo_tready,
    output [3:0]  rx_fifo_status,
    //--------------------------------------------------------------
    // mac transmitter interface                                  --
    //--------------------------------------------------------------
    input         tx_axis_mac_aresetn,
    input         tx_axis_mac_aclk,
    output [63:0] tx_axis_mac_tdata,
    output [7:0]  tx_axis_mac_tkeep,
    output        tx_axis_mac_tvalid,
    output        tx_axis_mac_tlast,
    input         tx_axis_mac_tready,
    //--------------------------------------------------------------
    // mac receiver interface                                     --
    //--------------------------------------------------------------
    input         rx_axis_mac_aresetn,
    input         rx_axis_mac_aclk,
    input [63:0]  rx_axis_mac_tdata,
    input [7:0]   rx_axis_mac_tkeep,
    input         rx_axis_mac_tvalid,
    input         rx_axis_mac_tlast,
    input         rx_axis_mac_tuser,
    output        rx_fifo_full);


   //Instance the transmit fifo.
  ten_gig_eth_mac_0_axi_fifo #(
      .FIFO_SIZE        (TX_FIFO_SIZE),
      .IS_TX            (1)
   ) i_tx_fifo (
      .wr_axis_aresetn (tx_axis_fifo_aresetn),
      .wr_axis_aclk    (tx_axis_fifo_aclk),
      .wr_axis_tdata   (tx_axis_fifo_tdata),
      .wr_axis_tkeep   (tx_axis_fifo_tkeep),
      .wr_axis_tvalid  (tx_axis_fifo_tvalid),
      .wr_axis_tlast   (tx_axis_fifo_tlast),
      .wr_axis_tready  (tx_axis_fifo_tready),
      .wr_axis_tuser   (tx_axis_fifo_tlast),
      .rd_axis_aresetn (tx_axis_mac_aresetn),
      .rd_axis_aclk    (tx_axis_mac_aclk),
      .rd_axis_tdata   (tx_axis_mac_tdata),
      .rd_axis_tkeep   (tx_axis_mac_tkeep),
      .rd_axis_tvalid  (tx_axis_mac_tvalid),
      .rd_axis_tlast   (tx_axis_mac_tlast),
      .rd_axis_tready  (tx_axis_mac_tready),
      .fifo_status     (tx_fifo_status),
      .fifo_full       (tx_fifo_full));



   //Instance the receive fifo
  ten_gig_eth_mac_0_axi_fifo #(
      .FIFO_SIZE        (RX_FIFO_SIZE),
      .IS_TX            (0)
   ) rx_fifo_inst (
      .wr_axis_aresetn (rx_axis_mac_aresetn),
      .wr_axis_aclk    (rx_axis_mac_aclk),
      .wr_axis_tdata   (rx_axis_mac_tdata),
      .wr_axis_tkeep   (rx_axis_mac_tkeep),
      .wr_axis_tvalid  (rx_axis_mac_tvalid),
      .wr_axis_tlast   (rx_axis_mac_tlast),
      .wr_axis_tready  (),
      .wr_axis_tuser   (rx_axis_mac_tuser),
      .rd_axis_aresetn (rx_axis_fifo_aresetn),
      .rd_axis_aclk    (rx_axis_fifo_aclk),
      .rd_axis_tdata   (rx_axis_fifo_tdata),
      .rd_axis_tkeep   (rx_axis_fifo_tkeep),
      .rd_axis_tvalid  (rx_axis_fifo_tvalid),
      .rd_axis_tlast   (rx_axis_fifo_tlast),
      .rd_axis_tready  (rx_axis_fifo_tready),
      .fifo_status     (rx_fifo_status),
      .fifo_full       (rx_fifo_full));



endmodule
