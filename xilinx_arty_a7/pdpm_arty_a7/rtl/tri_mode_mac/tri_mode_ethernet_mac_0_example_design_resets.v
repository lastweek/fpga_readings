//------------------------------------------------------------------------------
// File       : tri_mode_ethernet_mac_0_example_design_resets.v
// Author     : Xilinx Inc.
// -----------------------------------------------------------------------------
// (c) Copyright 2012 Xilinx, Inc. All rights reserved.
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
// -----------------------------------------------------------------------------
// Description:  This block generates fully synchronous resets for each clock domain
`timescale 1 ps/1 ps

module tri_mode_ethernet_mac_0_example_design_resets
   (
   // clocks
   input          s_axi_aclk,
   input          gtx_clk,

   // asynchronous resets
   input          glbl_rst,
   input          reset_error,
   input          rx_reset,
   input          tx_reset,

   input          dcm_locked,

   // synchronous reset outputs
  
   output         glbl_rst_intn,
   
   output   reg   gtx_resetn = 0,
   
   output   reg   s_axi_resetn = 0,
   output         phy_resetn,
   output   reg   chk_resetn = 0
   );

// define internal signals
    reg           s_axi_pre_resetn = 0;
    wire          s_axi_reset_int;
    
    reg           gtx_pre_resetn = 0;
    wire          gtx_clk_reset_int;
    
    reg           chk_pre_resetn = 0;
    wire          chk_reset_int;
    wire          dcm_locked_sync;
    reg           phy_resetn_int;
    reg  [5:0]    phy_reset_count;

  //----------------------------------------------------------------------------
  // Synchronise the async dcm_locked into the gtx_clk clock domain
  //----------------------------------------------------------------------------
  tri_mode_ethernet_mac_0_sync_block dcm_sync (
     .clk              (gtx_clk),
     .data_in          (dcm_locked),
     .data_out         (dcm_locked_sync)
  );


  //----------------------------------------------------------------------------
  // Generate resets required for the fifo side signals etc
  //----------------------------------------------------------------------------
  // in each case the async reset is first captured and then synchronised

  //---------------
  // global reset
   tri_mode_ethernet_mac_0_reset_sync glbl_reset_gen (
      .clk              (gtx_clk),
      .enable           (dcm_locked_sync),
      .reset_in         (glbl_rst),
      .reset_out        (glbl_rst_int)
   );

   assign glbl_rst_intn = !glbl_rst_int;



  //---------------
  // AXI-Lite reset
   tri_mode_ethernet_mac_0_reset_sync axi_lite_reset_gen (
      .clk              (s_axi_aclk),
      .enable           (phy_resetn_int),
      .reset_in         (glbl_rst),
      .reset_out        (s_axi_reset_int)
   );

   // Create fully synchronous reset in the s_axi clock domain.
   always @(posedge s_axi_aclk)
   begin
     if (s_axi_reset_int) begin
       s_axi_pre_resetn <= 0;
       s_axi_resetn     <= 0;
     end
     else begin
       s_axi_pre_resetn <= 1;
       s_axi_resetn     <= s_axi_pre_resetn;
     end
   end

  //---------------
  
  // gtx_clk reset
  
   tri_mode_ethernet_mac_0_reset_sync gtx_reset_gen (
      
      .clk              (gtx_clk),
      
      .enable           (dcm_locked_sync),
      .reset_in         (glbl_rst || rx_reset || tx_reset),
      
      .reset_out        (gtx_clk_reset_int)
      
   );

   
   // Create fully synchronous reset in the gtx_clk domain.
   always @(posedge gtx_clk)
   begin
     if (gtx_clk_reset_int) begin
       gtx_pre_resetn  <= 0;
       gtx_resetn      <= 0;
     end
     else begin
       gtx_pre_resetn  <= 1;
       gtx_resetn      <= gtx_pre_resetn;
     end
   end

  //---------------
  // data check reset
   tri_mode_ethernet_mac_0_reset_sync chk_reset_gen (
      
      .clk              (gtx_clk),
      
      .enable           (dcm_locked_sync),
      .reset_in         (glbl_rst || reset_error),
      .reset_out        (chk_reset_int)
   );

   
   // Create fully synchronous reset in the gtx_clk domain.
   always @(posedge gtx_clk)
   
   begin
     if (chk_reset_int) begin
       chk_pre_resetn  <= 0;
       chk_resetn      <= 0;
     end
     else begin
       chk_pre_resetn  <= 1;
       chk_resetn      <= chk_pre_resetn;
     end
   end


   //---------------
   // PHY reset
   // the phy reset output (active low) needs to be held for at least 10x25MHZ cycles
   // this is derived using the 125MHz available and a 6 bit counter
   always @(posedge gtx_clk)
   begin
      if (glbl_rst_int) begin
         phy_resetn_int <= 0;
         phy_reset_count <= 0;
      end
      else begin
         if (!(&phy_reset_count)) begin
            phy_reset_count <= phy_reset_count + 1;
         end
         else begin
            phy_resetn_int <= 1;
         end
      end
   end

   assign phy_resetn = phy_resetn_int;

endmodule
