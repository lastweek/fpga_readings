//------------------------------------------------------------------------------
// File       : tri_mode_ethernet_mac_0_example_design_clock.v
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
// Description:  This block generates the clocking logic required for the
//               example design.

`timescale 1 ps/1 ps

module tri_mode_ethernet_mac_0_example_design_clocks
   (
   // differential clock inputs
   //input          clk_in_p,
   //input          clk_in_n,
   input          clk_in,

   // asynchronous control/resets
   input          glbl_rst,
   output         dcm_locked,

   // clock outputs
   output         gtx_clk_bufg,
   
   output         s_axi_aclk,
   
   // 25MHz for PHY
   output         mii_ref_clk
   );


   wire           clkin1;
   wire           mmcm_rst;
   wire           clkin1_bufg;
   wire           dcm_locked_int;
   wire           dcm_locked_sync;
   reg            dcm_locked_reg = 1;
   reg            dcm_locked_edge = 1;

/*
    // No need for manual buffering
    // arty a7 is using single-ended clock

  // Input buffering
  //------------------------------------
  IBUFDS clkin1_buf
   (.O  (clkin1),
    .I  (clk_in_p),
    .IB (clk_in_n));
*/
   assign clkin1 = clk_in;

  // route clkin1 through a BUFGCE for the MMCM reset generation logic
  BUFGCE bufg_clkin1 (.I(clkin1), .CE  (1'b1), .O(clkin1_bufg));

  // detect a falling edge on dcm_locked (after resyncing to this domain)
  tri_mode_ethernet_mac_0_sync_block lock_sync (
     .clk              (clkin1_bufg),
     .data_in          (dcm_locked_int),
     .data_out         (dcm_locked_sync)
  );

  // for the falling edge detect we want to force this at power on so init the flop to 1
  always @(posedge clkin1_bufg)
  begin
     dcm_locked_reg     <= dcm_locked_sync;
     dcm_locked_edge    <= dcm_locked_reg & !dcm_locked_sync;
  end

  // the MMCM reset should be at least 5ns - that is one cycle of the input clock -
  // since the source of the input reset is unknown (a push switch in board design)
  // this needs to be debounced
   tri_mode_ethernet_mac_0_reset_sync mmcm_reset_gen (
      .clk              (clkin1_bufg),
      .enable           (1'b1),
      .reset_in         (glbl_rst | dcm_locked_edge),
      .reset_out        (mmcm_rst)
   );


  //----------------------------------------------------------------------------
  // Generate clocks using the clock wizard
  //----------------------------------------------------------------------------

  tri_mode_ethernet_mac_0_clk_wiz clock_generator
  (
      // 100MHz Clock in ports
      .CLK_IN1       (clkin1),
      
      // Clock out ports
      .CLK_OUT1      (gtx_clk_bufg),
      .CLK_OUT2      (s_axi_aclk),
      .CLK_OUT3      (mii_ref_clk),
      // Status and control signals
      .RESET         (mmcm_rst),
      .LOCKED        (dcm_locked_int)
 );

 assign dcm_locked = dcm_locked_int;

  

endmodule
