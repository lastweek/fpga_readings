//-----------------------------------------------------------------------------
//
// Title      : Verilog Example Design level for MAC
// Project    : 10 Gigabit Ethernet MAC Core
//-----------------------------------------------------------------------------
// File       : ten_gig_eth_mac_0_example_design.v
// Author     : Xilinx Inc.
// Description: This is the example design level Verilog code for the
// Ten Gigabit Ethernet MAC. It contains the FIFO block level instance and
// Transmit clock generation.  Dependent on configuration options, it  may
// also contain the address swap module for cores with both Transmit and
// Receive.
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

(* DowngradeIPIdentifiedWarnings = "yes" *)
module ten_gig_eth_mac_0_example_design
  (
   // Port declarations
   input                               reset,
   input                               tx_axis_aresetn,
   input                               rx_axis_aresetn,
   input                               address_swap_disable,
   output                              tx_statistics_vector,
   output                              rx_statistics_vector,

   input                               reset_error,
   input                               insert_error,
   input                               enable_pat_gen,
   input                               enable_pat_check,

   output                              gen_active_flash,
   output                              check_active_flash,
   output                              frame_error,
   
   input                               pause_req,

   input                               s_axi_aclk,
   input                               s_axi_aresetn,

   input                               read_stats,
   output                              stats_fail,

   output                              mdc,
   input                               mdio_in,
   output                              mdio_out,
   output                              mdio_tri,
   input                               gtx_clk,
   output                              xgmii_tx_clk,
   output      [63:0]                  xgmii_txd,
   output      [7:0]                   xgmii_txc,
   input                               xgmii_rx_clk,
   input       [63:0]                  xgmii_rxd,
   input       [7:0]                   xgmii_rxc
   );

   localparam FIFO_SIZE                = 1024;

/*-------------------------------------------------------------------------*/

   // Signal declarations
   wire                                reset_terms;

   wire                                tx_dcm_locked;
   reg                                 tx_dcm_locked_reg;
   wire                                tx_clk0;
   wire        [63:0]                  xgmii_txd_core;
   wire        [7:0]                   xgmii_txc_core;
   wire        [63:0]                  xgmii_rxd_core;
   wire        [7:0]                   xgmii_rxc_core;

   (* KEEP = "TRUE" *)
   wire                                s_axi_aclk_int;
   wire        [10:0]                  s_axi_awaddr;
   wire                                s_axi_awvalid;
   wire                                s_axi_awready;

   wire        [31:0]                  s_axi_wdata;
   wire                                s_axi_wvalid;
   wire                                s_axi_wready;

   wire        [1:0]                   s_axi_bresp;
   wire                                s_axi_bvalid;
   wire                                s_axi_bready;

   wire        [10:0]                  s_axi_araddr;
   wire                                s_axi_arvalid;
   wire                                s_axi_arready;

   wire        [31:0]                  s_axi_rdata;
   wire        [1:0]                   s_axi_rresp;
   wire                                s_axi_rvalid;
   wire                                s_axi_rready;


   wire        [25:0]                  tx_statistics_vector_int;
   wire                                tx_statistics_valid_int;
   reg                                 tx_statistics_valid;
   reg         [27:0]                  tx_statistics_shift = 0;
   wire                                rx_clk_int;
   wire        [29:0]                  rx_statistics_vector_int;
   wire                                rx_statistics_valid_int;
   reg                                 rx_statistics_valid;
   reg         [31:0]                  rx_statistics_shift = 0;

   wire        [63:0]                  tx_axis_fifo_tdata;
   wire        [7:0]                   tx_axis_fifo_tkeep;
   wire                                tx_axis_fifo_tvalid;
   wire                                tx_axis_fifo_tlast;
   wire                                tx_axis_fifo_tready;
   wire        [63:0]                  rx_axis_fifo_tdata;
   wire        [7:0]                   rx_axis_fifo_tkeep;
   wire                                rx_axis_fifo_tvalid;
   wire                                rx_axis_fifo_tlast;
   wire                                rx_axis_fifo_tready;
   wire                                tx_reset;
   wire                                rx_reset;
   wire                                rx_dcm_locked;
   wire                                enable_gen;
   // change this tie off to alter the mode
   wire                                enable_vlan             = 1'b0;
   wire                                enable_custom_preamble  = 1'b0;

   assign tx_reset            = reset | ~tx_axis_aresetn;
   assign rx_reset            = reset | ~rx_axis_aresetn;
   //---------------------------------
   // Instantiate the FIFO block level
   //---------------------------------
   ten_gig_eth_mac_0_fifo_block #(
      .FIFO_SIZE                       (FIFO_SIZE)
   ) fifo_block_i (
      .tx_clk0                         (tx_clk0),
      .reset                           (reset),
      .tx_ifg_delay                    (8'd0),
      .tx_statistics_vector            (tx_statistics_vector_int),
      .tx_statistics_valid             (tx_statistics_valid_int),
      .pause_val                       (16'habcd),
      .pause_req                       (pause_req),
      .rx_axis_fifo_aresetn            (rx_axis_aresetn),
      .rx_axis_mac_aresetn             (rx_axis_aresetn),
      .rx_axis_fifo_tdata              (rx_axis_fifo_tdata),
      .rx_axis_fifo_tkeep              (rx_axis_fifo_tkeep),
      .rx_axis_fifo_tvalid             (rx_axis_fifo_tvalid),
      .rx_axis_fifo_tlast              (rx_axis_fifo_tlast),
      .rx_axis_fifo_tready             (rx_axis_fifo_tready),
      .tx_axis_mac_aresetn             (tx_axis_aresetn),
      .tx_axis_fifo_aresetn            (tx_axis_aresetn),
      .tx_axis_fifo_tdata              (tx_axis_fifo_tdata),
      .tx_axis_fifo_tkeep              (tx_axis_fifo_tkeep),
      .tx_axis_fifo_tvalid             (tx_axis_fifo_tvalid),
      .tx_axis_fifo_tlast              (tx_axis_fifo_tlast),
      .tx_axis_fifo_tready             (tx_axis_fifo_tready),
      .rx_statistics_vector            (rx_statistics_vector_int),
      .rx_statistics_valid             (rx_statistics_valid_int),
      .s_axi_aclk                      (s_axi_aclk_int),
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
      .xgmacint                        (),
      .mdc                             (mdc),
      .mdio_in                         (mdio_in),
      .mdio_out                        (mdio_out),
      .mdio_tri                        (mdio_tri),
      .tx_dcm_locked                   (tx_dcm_locked),
      .xgmii_txd                       (xgmii_txd_core),
      .xgmii_txc                       (xgmii_txc_core),
      .rx_clk0                         (rx_clk_int),
      .rx_dcm_locked                   (rx_dcm_locked),
      .xgmii_rxd                       (xgmii_rxd_core),
      .xgmii_rxc                       (xgmii_rxc_core));

   ten_gig_eth_mac_0_physical_if xgmac_phy_if (
      .reset                           (reset),
      .rx_axis_rstn                    (rx_axis_aresetn),
      .tx_clk0                         (tx_clk0),
      .tx_dcm_locked                   (tx_dcm_locked_reg),

      .xgmii_txd_core                  (xgmii_txd_core),
      .xgmii_txc_core                  (xgmii_txc_core),
      .xgmii_txd                       (xgmii_txd),
      .xgmii_txc                       (xgmii_txc),
      .xgmii_tx_clk                    (xgmii_tx_clk),

      .rx_clk0                         (rx_clk_int),
      .rx_dcm_locked                   (rx_dcm_locked),
      .xgmii_rx_clk                    (xgmii_rx_clk),
      .xgmii_rxd                       (xgmii_rxd),
      .xgmii_rxc                       (xgmii_rxc),
      .xgmii_rxd_core                  (xgmii_rxd_core),
      .xgmii_rxc_core                  (xgmii_rxc_core));

   ten_gig_eth_mac_0_clocking tx_clocking_i (
      .gtx_clk_in                      (gtx_clk),
      .tx_mmcm_reset                   (tx_reset),
      .s_axi_aclk_in                   (s_axi_aclk),
      .tx_clk0                         (tx_clk0),
      .s_axi_aclk                      (s_axi_aclk_int),
      .tx_mmcm_locked                  (tx_dcm_locked)
   );



   ten_gig_eth_mac_0_gen_check_wrapper pat_gen (
      .dest_addr                       (48'h0504030201DA),
      .src_addr                        (48'h05040302015A),
      .max_size                        (15'd200),
      .min_size                        (15'd64),
      .enable_vlan                     (enable_vlan),
      .vlan_id                         (12'hABC),
      .vlan_priority                   (3'd0),
      .preamble_data                   (56'h55555555555555),
      .enable_custom_preamble          (enable_custom_preamble),

      .aclk                            (rx_clk_int),
      .areset                          (rx_reset),
      .reset_error                     (reset_error),
      .insert_error                    (insert_error),
      .enable_pat_gen                  (enable_gen),
      .enable_pat_check                (enable_pat_check),

      // data from the RX data path
      .rx_axis_tdata                   (rx_axis_fifo_tdata),
      .rx_axis_tkeep                   (rx_axis_fifo_tkeep),
      .rx_axis_tvalid                  (rx_axis_fifo_tvalid),
      .rx_axis_tlast                   (rx_axis_fifo_tlast),
      .rx_axis_tready                  (rx_axis_fifo_tready),

      // data to the TX data path
      .tx_axis_tdata                   (tx_axis_fifo_tdata),
      .tx_axis_tkeep                   (tx_axis_fifo_tkeep),
      .tx_axis_tvalid                  (tx_axis_fifo_tvalid),
      .tx_axis_tlast                   (tx_axis_fifo_tlast),
      .tx_axis_tready                  (tx_axis_fifo_tready),

      .gen_active_flash                (gen_active_flash),
      .check_active_flash              (check_active_flash),
      .frame_error                     (frame_error)
   );

   // register the dcm_locked signal into the system clock domain
   always @(posedge tx_clk0)
   begin
      tx_dcm_locked_reg                <= tx_dcm_locked;
   end

   ten_gig_eth_mac_0_axi_lite_sm axi_lite_sm (
      .s_axi_aclk                      (s_axi_aclk_int),
      .s_axi_resetn                    (s_axi_aresetn),

      .enable_vlan                     (enable_vlan),
      .enable_custom_preamble          (enable_custom_preamble),

      .read_stats                      (read_stats),
      .stats_fail                      (stats_fail),

      .enable_pat_gen                  (enable_pat_gen),
      .enable_gen                      (enable_gen),
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
      .s_axi_rready                    (s_axi_rready)
   );


   // serialise the stats vector output to ensure logic isn't stripped during synthesis and to
   // reduce the IO required by the example design
   always @(posedge tx_clk0)
   begin
     tx_statistics_valid               <= tx_statistics_valid_int;
     if (tx_statistics_valid_int & !tx_statistics_valid) begin
        tx_statistics_shift            <= {2'b01,tx_statistics_vector_int};
     end
     else begin
        tx_statistics_shift            <= {tx_statistics_shift[26:0], 1'b0};
     end
   end

   assign tx_statistics_vector         = tx_statistics_shift[27];

   always @(posedge rx_clk_int)
   begin
     rx_statistics_valid               <= rx_statistics_valid_int;
     if (rx_statistics_valid_int & !rx_statistics_valid) begin
        rx_statistics_shift            <= {2'b01, rx_statistics_vector_int};
     end
     else begin
        rx_statistics_shift            <= {rx_statistics_shift[30:0], 1'b0};
     end
   end

   assign rx_statistics_vector         = rx_statistics_shift[31];

endmodule
