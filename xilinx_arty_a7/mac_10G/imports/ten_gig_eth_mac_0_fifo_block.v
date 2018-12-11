//-----------------------------------------------------------------------------
//
// Title      : Verilog FIFO block level for MAC
// Project    : 10 Gigabit Ethernet MAC Core
//-----------------------------------------------------------------------------
// File       : ten_gig_eth_mac_0_fifo_block.v
// Author     : Xilinx Inc.
// Description: This is the FIFO block level Verilog code for the
// Ten Gigabit Ethernet MAC. It contains the block level instance and
// AXI FIFOs.
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

module ten_gig_eth_mac_0_fifo_block   #(
   parameter                           FIFO_SIZE = 512
) (
   // Port declarations
   input                               tx_clk0,
   input                               reset,
   input                               tx_axis_mac_aresetn,
   input                               tx_dcm_locked,
   input       [7:0]                   tx_ifg_delay,
   output      [25:0]                  tx_statistics_vector,
   output                              tx_statistics_valid,
   input       [15:0]                  pause_val,
   input                               pause_req,
   input                               rx_axis_fifo_aresetn,
   output      [63:0]                  rx_axis_fifo_tdata,
   output      [7:0]                   rx_axis_fifo_tkeep,
   output                              rx_axis_fifo_tvalid,
   output                              rx_axis_fifo_tlast,
   input                               rx_axis_fifo_tready,
   input                               tx_axis_fifo_aresetn,
   input       [63:0]                  tx_axis_fifo_tdata,
   input       [7:0]                   tx_axis_fifo_tkeep,
   input                               tx_axis_fifo_tvalid,
   input                               tx_axis_fifo_tlast,
   output                              tx_axis_fifo_tready,
   input                               rx_axis_mac_aresetn,
   
   input                               rx_clk0,
   input                               rx_dcm_locked,
   output      [29:0]                  rx_statistics_vector,
   output                              rx_statistics_valid,
   input                               s_axi_aclk,
   input                               s_axi_aresetn,
   
   input       [10:0]                  s_axi_awaddr,
   input                               s_axi_awvalid,
   output                              s_axi_awready,
   input       [31:0]                  s_axi_wdata,
   input                               s_axi_wvalid,
   output                              s_axi_wready,
   
   output      [1:0]                   s_axi_bresp,
   output                              s_axi_bvalid,
   input                               s_axi_bready,
   
   input       [10:0]                  s_axi_araddr,
   input                               s_axi_arvalid,
   output                              s_axi_arready,
   
   output      [31:0]                  s_axi_rdata,
   output      [1:0]                   s_axi_rresp,
   output                              s_axi_rvalid,
   input                               s_axi_rready,
   output                              xgmacint,
   output                              mdc,
   input                               mdio_in,
   output                              mdio_out,
   output                              mdio_tri,
   output      [63:0]                  xgmii_txd,
   output      [7:0]                   xgmii_txc,
   input       [63:0]                  xgmii_rxd,
   input       [7:0]                   xgmii_rxc
   );

/*-------------------------------------------------------------------------*/

   // Signal declarations

  wire rx_axis_mac_aresetn_i  = ~reset | rx_axis_mac_aresetn;
  wire rx_axis_fifo_aresetn_i = ~reset | rx_axis_fifo_aresetn;
  wire tx_axis_mac_aresetn_i  = ~reset | tx_axis_mac_aresetn;
  wire tx_axis_fifo_aresetn_i = ~reset | tx_axis_fifo_aresetn;

  (* KEEP = "true" *)
  wire         [63:0]                  tx_axis_mac_tdata;
  (* KEEP = "true" *)
  wire         [7:0]                   tx_axis_mac_tkeep;
  (* KEEP = "true" *)
  wire                                 tx_axis_mac_tvalid;
  (* KEEP = "true" *)
  wire                                 tx_axis_mac_tlast;
  (* KEEP = "true" *)
  wire                                 tx_axis_mac_tready;

  (* KEEP = "true" *)
  wire         [63:0]                  rx_axis_mac_tdata;
  (* KEEP = "true" *)
  wire         [7:0]                   rx_axis_mac_tkeep;
  (* KEEP = "true" *)
  wire                                 rx_axis_mac_tvalid;
  (* KEEP = "true" *)
  wire                                 rx_axis_mac_tuser;
  (* KEEP = "true" *)
  wire                                 rx_axis_mac_tlast;




   //-----------------------
   // Instantiate the MAC
   //-----------------------
   ten_gig_eth_mac_0_support xgmac_support_i (
      .tx_clk0                         (tx_clk0),
 
      .reset                           (reset),
      .tx_axis_aresetn                 (tx_axis_mac_aresetn),
      .tx_axis_tdata                   (tx_axis_mac_tdata),
      .tx_axis_tvalid                  (tx_axis_mac_tvalid),
      .tx_axis_tlast                   (tx_axis_mac_tlast),
      .tx_axis_tuser                   (1'b0),
      .tx_ifg_delay                    (tx_ifg_delay),
      .tx_axis_tkeep                   (tx_axis_mac_tkeep),
      .tx_axis_tready                  (tx_axis_mac_tready),
      .tx_statistics_vector            (tx_statistics_vector),
      .tx_statistics_valid             (tx_statistics_valid),
      
      .pause_val                       (pause_val),
      .pause_req                       (pause_req),
      .rx_axis_aresetn                 (rx_axis_mac_aresetn),
      .rx_axis_tdata                   (rx_axis_mac_tdata),
      .rx_axis_tkeep                   (rx_axis_mac_tkeep),
      .rx_axis_tvalid                  (rx_axis_mac_tvalid),
      .rx_axis_tuser                   (rx_axis_mac_tuser),
      .rx_axis_tlast                   (rx_axis_mac_tlast),
      .rx_statistics_vector            (rx_statistics_vector),
      .rx_statistics_valid             (rx_statistics_valid),
      
      .s_axi_aclk                      (s_axi_aclk),
      .s_axi_aresetn                   (s_axi_aresetn),
      .s_axi_awaddr                    (s_axi_awaddr),
      .s_axi_awvalid                   (s_axi_awvalid),
      .s_axi_awready                   (s_axi_awready),
      .s_axi_wdata                     (s_axi_wdata),
      .s_axi_wvalid                    (s_axi_wvalid),
      .s_axi_wready                    (s_axi_wready),
      .s_axi_bresp                     (s_axi_bresp),
      .s_axi_bvalid                    (s_axi_bvalid),
      .s_axi_bready                    (s_axi_bready),
      .s_axi_araddr                    (s_axi_araddr),
      .s_axi_arvalid                   (s_axi_arvalid),
      .s_axi_arready                   (s_axi_arready),
      .s_axi_rdata                     (s_axi_rdata),
      .s_axi_rresp                     (s_axi_rresp),
      .s_axi_rvalid                    (s_axi_rvalid),
      .s_axi_rready                    (s_axi_rready),
      .xgmacint                        (xgmacint),
      .mdc                             (mdc),
      .mdio_in                         (mdio_in),
      .mdio_out                        (mdio_out),
      .mdio_tri                        (mdio_tri),
      .tx_dcm_locked                   (tx_dcm_locked),
 
      .xgmii_txd                       (xgmii_txd),
      .xgmii_txc                       (xgmii_txc),
      .rx_clk0                         (rx_clk0),
      .rx_dcm_locked                   (rx_dcm_locked),
      .xgmii_rxd                       (xgmii_rxd),
      .xgmii_rxc                       (xgmii_rxc)
   );

   
   //-----------------------
   // Instantiate the client
   // loopback design example.
   //-----------------------
   ten_gig_eth_mac_0_xgmac_fifo #(
      .TX_FIFO_SIZE                    (FIFO_SIZE),
      .RX_FIFO_SIZE                    (FIFO_SIZE)
   ) ten_gig_ethernet_mac_fifo  (
      .tx_axis_fifo_aresetn            (tx_axis_fifo_aresetn_i),
      .tx_axis_fifo_aclk               (rx_clk0),
      .tx_axis_fifo_tdata              (tx_axis_fifo_tdata),
      .tx_axis_fifo_tkeep              (tx_axis_fifo_tkeep),
      .tx_axis_fifo_tvalid             (tx_axis_fifo_tvalid),
      .tx_axis_fifo_tlast              (tx_axis_fifo_tlast),
      .tx_axis_fifo_tready             (tx_axis_fifo_tready),
      .tx_fifo_full                    (),
      .tx_fifo_status                  (),
      .rx_axis_fifo_aresetn            (rx_axis_fifo_aresetn_i),
      .rx_axis_fifo_aclk               (rx_clk0),
      .rx_axis_fifo_tdata              (rx_axis_fifo_tdata),
      .rx_axis_fifo_tkeep              (rx_axis_fifo_tkeep),
      .rx_axis_fifo_tvalid             (rx_axis_fifo_tvalid),
      .rx_axis_fifo_tlast              (rx_axis_fifo_tlast),
      .rx_axis_fifo_tready             (rx_axis_fifo_tready),
      .rx_fifo_status                  (),
      .tx_axis_mac_aresetn             (tx_axis_mac_aresetn_i),
      .tx_axis_mac_aclk                (tx_clk0),
      .tx_axis_mac_tdata               (tx_axis_mac_tdata),
      .tx_axis_mac_tkeep               (tx_axis_mac_tkeep),
      .tx_axis_mac_tvalid              (tx_axis_mac_tvalid),
      .tx_axis_mac_tlast               (tx_axis_mac_tlast),
      .tx_axis_mac_tready              (tx_axis_mac_tready),
      .rx_axis_mac_aresetn             (rx_axis_mac_aresetn_i),
      .rx_axis_mac_aclk                (rx_clk0),
      .rx_axis_mac_tdata               (rx_axis_mac_tdata),
      .rx_axis_mac_tkeep               (rx_axis_mac_tkeep),
      .rx_axis_mac_tvalid              (rx_axis_mac_tvalid),
      .rx_axis_mac_tlast               (rx_axis_mac_tlast),
      .rx_axis_mac_tuser               (rx_axis_mac_tuser),
      .rx_fifo_full                    ()
   );


endmodule
