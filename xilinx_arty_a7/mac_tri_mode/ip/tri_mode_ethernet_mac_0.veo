// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
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
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:ip:tri_mode_ethernet_mac:9.0
// IP Revision: 12

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
tri_mode_ethernet_mac_0 your_instance_name (
  .s_axi_aclk(s_axi_aclk),                      // input wire s_axi_aclk
  .s_axi_resetn(s_axi_resetn),                  // input wire s_axi_resetn
  .gtx_clk(gtx_clk),                            // input wire gtx_clk
  .glbl_rstn(glbl_rstn),                        // input wire glbl_rstn
  .rx_axi_rstn(rx_axi_rstn),                    // input wire rx_axi_rstn
  .tx_axi_rstn(tx_axi_rstn),                    // input wire tx_axi_rstn
  .rx_statistics_vector(rx_statistics_vector),  // output wire [27 : 0] rx_statistics_vector
  .rx_statistics_valid(rx_statistics_valid),    // output wire rx_statistics_valid
  .rx_mac_aclk(rx_mac_aclk),                    // output wire rx_mac_aclk
  .rx_reset(rx_reset),                          // output wire rx_reset
  .rx_enable(rx_enable),                        // output wire rx_enable
  .rx_axis_filter_tuser(rx_axis_filter_tuser),  // output wire [4 : 0] rx_axis_filter_tuser
  .rx_axis_mac_tdata(rx_axis_mac_tdata),        // output wire [7 : 0] rx_axis_mac_tdata
  .rx_axis_mac_tvalid(rx_axis_mac_tvalid),      // output wire rx_axis_mac_tvalid
  .rx_axis_mac_tlast(rx_axis_mac_tlast),        // output wire rx_axis_mac_tlast
  .rx_axis_mac_tuser(rx_axis_mac_tuser),        // output wire rx_axis_mac_tuser
  .tx_ifg_delay(tx_ifg_delay),                  // input wire [7 : 0] tx_ifg_delay
  .tx_statistics_vector(tx_statistics_vector),  // output wire [31 : 0] tx_statistics_vector
  .tx_statistics_valid(tx_statistics_valid),    // output wire tx_statistics_valid
  .tx_mac_aclk(tx_mac_aclk),                    // output wire tx_mac_aclk
  .tx_reset(tx_reset),                          // output wire tx_reset
  .tx_enable(tx_enable),                        // output wire tx_enable
  .tx_axis_mac_tdata(tx_axis_mac_tdata),        // input wire [7 : 0] tx_axis_mac_tdata
  .tx_axis_mac_tvalid(tx_axis_mac_tvalid),      // input wire tx_axis_mac_tvalid
  .tx_axis_mac_tlast(tx_axis_mac_tlast),        // input wire tx_axis_mac_tlast
  .tx_axis_mac_tuser(tx_axis_mac_tuser),        // input wire [0 : 0] tx_axis_mac_tuser
  .tx_axis_mac_tready(tx_axis_mac_tready),      // output wire tx_axis_mac_tready
  .pause_req(pause_req),                        // input wire pause_req
  .pause_val(pause_val),                        // input wire [15 : 0] pause_val
  .speedis100(speedis100),                      // output wire speedis100
  .speedis10100(speedis10100),                  // output wire speedis10100
  .gmii_txd(gmii_txd),                          // output wire [7 : 0] gmii_txd
  .gmii_tx_en(gmii_tx_en),                      // output wire gmii_tx_en
  .gmii_tx_er(gmii_tx_er),                      // output wire gmii_tx_er
  .gmii_tx_clk(gmii_tx_clk),                    // output wire gmii_tx_clk
  .gmii_rxd(gmii_rxd),                          // input wire [7 : 0] gmii_rxd
  .gmii_rx_dv(gmii_rx_dv),                      // input wire gmii_rx_dv
  .gmii_rx_er(gmii_rx_er),                      // input wire gmii_rx_er
  .gmii_rx_clk(gmii_rx_clk),                    // input wire gmii_rx_clk
  .mii_tx_clk(mii_tx_clk),                      // input wire mii_tx_clk
  .mdio(mdio),                                  // inout wire mdio
  .mdc(mdc),                                    // output wire mdc
  .s_axi_awaddr(s_axi_awaddr),                  // input wire [11 : 0] s_axi_awaddr
  .s_axi_awvalid(s_axi_awvalid),                // input wire s_axi_awvalid
  .s_axi_awready(s_axi_awready),                // output wire s_axi_awready
  .s_axi_wdata(s_axi_wdata),                    // input wire [31 : 0] s_axi_wdata
  .s_axi_wvalid(s_axi_wvalid),                  // input wire s_axi_wvalid
  .s_axi_wready(s_axi_wready),                  // output wire s_axi_wready
  .s_axi_bresp(s_axi_bresp),                    // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid(s_axi_bvalid),                  // output wire s_axi_bvalid
  .s_axi_bready(s_axi_bready),                  // input wire s_axi_bready
  .s_axi_araddr(s_axi_araddr),                  // input wire [11 : 0] s_axi_araddr
  .s_axi_arvalid(s_axi_arvalid),                // input wire s_axi_arvalid
  .s_axi_arready(s_axi_arready),                // output wire s_axi_arready
  .s_axi_rdata(s_axi_rdata),                    // output wire [31 : 0] s_axi_rdata
  .s_axi_rresp(s_axi_rresp),                    // output wire [1 : 0] s_axi_rresp
  .s_axi_rvalid(s_axi_rvalid),                  // output wire s_axi_rvalid
  .s_axi_rready(s_axi_rready),                  // input wire s_axi_rready
  .mac_irq(mac_irq)                            // output wire mac_irq
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file tri_mode_ethernet_mac_0.v when simulating
// the core, tri_mode_ethernet_mac_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

