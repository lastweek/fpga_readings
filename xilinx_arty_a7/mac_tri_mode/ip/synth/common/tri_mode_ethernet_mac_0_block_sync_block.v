//------------------------------------------------------------------------------
// Title      : CDC Sync Block
// Project    : Tri-Mode Ethernet MAC
//------------------------------------------------------------------------------
// File       : tri_mode_ethernet_mac_0_block_sync_block.v
// Author     : Xilinx Inc.
//------------------------------------------------------------------------------
// Description: Used on signals crossing from one clock domain to another, this
//              is a multiple flip-flop pipeline, with all flops placed together
//              into the same slice.  Thus the routing delay between the two is
//              minimum to safe-guard against metastability issues.
// -----------------------------------------------------------------------------
// (c) Copyright 2001-2013 Xilinx, Inc. All rights reserved.
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

`timescale 1ps / 1ps

(* dont_touch = "yes" *)
module tri_mode_ethernet_mac_0_block_sync_block #(
  parameter INITIALISE = 1'b0,
  parameter DEPTH = 5
)
(
  input        clk,              // clock to be sync'ed to
  input        data_in,          // Data to be 'synced'
  output       data_out          // synced data
);

  // Internal Signals
  wire   data_sync0;
  wire   data_sync1;
  wire   data_sync2;
  wire   data_sync3;
  wire   data_sync4;


  (* ASYNC_REG = "TRUE", SHREG_EXTRACT = "NO" *)
  FDRE #(
    .INIT (INITIALISE[0])
  ) data_sync_reg0 (
    .C  (clk),
    .D  (data_in),
    .Q  (data_sync0),
	.CE (1'b1),
    .R  (1'b0)
  );

  (* ASYNC_REG = "TRUE", SHREG_EXTRACT = "NO" *)
  FDRE #(
   .INIT (INITIALISE[0])
  ) data_sync_reg1 (
  .C  (clk),
  .D  (data_sync0),
  .Q  (data_sync1),
  .CE (1'b1),
  .R  (1'b0)
  );

  (* ASYNC_REG = "TRUE", SHREG_EXTRACT = "NO" *)
  FDRE #(
   .INIT (INITIALISE[0])
  ) data_sync_reg2 (
  .C  (clk),
  .D  (data_sync1),
  .Q  (data_sync2),
  .CE (1'b1),
  .R  (1'b0)
  );

  (* ASYNC_REG = "TRUE", SHREG_EXTRACT = "NO" *)
  FDRE #(
   .INIT (INITIALISE[0])
  ) data_sync_reg3 (
  .C  (clk),
  .D  (data_sync2),
  .Q  (data_sync3),
  .CE (1'b1),
  .R  (1'b0)
  );

  (* ASYNC_REG = "TRUE", SHREG_EXTRACT = "NO" *)
  FDRE #(
   .INIT (INITIALISE[0])
  ) data_sync_reg4 (
  .C  (clk),
  .D  (data_sync3),
  .Q  (data_sync4),
  .CE (1'b1),
  .R  (1'b0)
  );

  assign data_out = data_sync4;


endmodule


