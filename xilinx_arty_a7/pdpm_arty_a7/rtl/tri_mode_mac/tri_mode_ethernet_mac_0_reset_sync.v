//------------------------------------------------------------------------------
// Title      : Synchronous Reset generation flip-flop pair
// Project    : Tri-Mode ethernet MAC
//------------------------------------------------------------------------------
// File       : tri_mode_ethernet_mac_0_reset_sync.v
// Author     : Xilinx, Inc.
//------------------------------------------------------------------------------
// Description: All flip-flops have the same asynchronous reset signal.
//              Together the flops create a minimum of a 1 clock period
//              duration pulse which is used for synchronous reset.
//
//              The flops are placed, using the ASYNC_REG atrtribute, into the
//              same slice.
//
// -----------------------------------------------------------------------------
// (c) Copyright 2006-2008 Xilinx, Inc. All rights reserved.
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

`timescale 1ps/1ps

(* dont_touch = "yes" *)
module tri_mode_ethernet_mac_0_reset_sync #(
  parameter INITIALISE = 1'b1,
  parameter DEPTH = 5
)
(
   input       reset_in,
   input       clk,
   input       enable,
   output      reset_out
);


  wire     reset_sync_reg0;
  wire     reset_sync_reg1;
  wire     reset_sync_reg2;
  wire     reset_sync_reg3;
  wire     reset_sync_reg4;

  (* ASYNC_REG = "TRUE", SHREG_EXTRACT = "NO" *)
  FDPE #(
   .INIT (INITIALISE[0])
  ) reset_sync0 (
  .C  (clk),
  .CE (enable),
  .PRE(reset_in),
  .D  (1'b0),
  .Q  (reset_sync_reg0)
  );

  (* ASYNC_REG = "TRUE", SHREG_EXTRACT = "NO" *)
  FDPE #(
   .INIT (INITIALISE[0])
  ) reset_sync1 (
  .C  (clk),
  .CE (enable),
  .PRE(reset_in),
  .D  (reset_sync_reg0),
  .Q  (reset_sync_reg1)
  );

  (* ASYNC_REG = "TRUE", SHREG_EXTRACT = "NO" *)
  FDPE #(
   .INIT (INITIALISE[0])
  ) reset_sync2 (
  .C  (clk),
  .CE (enable),
  .PRE(reset_in),
  .D  (reset_sync_reg1),
  .Q  (reset_sync_reg2)
  );

  (* ASYNC_REG = "TRUE", SHREG_EXTRACT = "NO" *)
  FDPE #(
   .INIT (INITIALISE[0])
  ) reset_sync3 (
  .C  (clk),
  .CE (enable),
  .PRE(reset_in),
  .D  (reset_sync_reg2),
  .Q  (reset_sync_reg3)
  );

  (* ASYNC_REG = "TRUE", SHREG_EXTRACT = "NO" *)
  FDPE #(
   .INIT (INITIALISE[0])
  ) reset_sync4 (
  .C  (clk),
  .CE (enable),
  .PRE(reset_in),
  .D  (reset_sync_reg3),
  .Q  (reset_sync_reg4)
  );


assign reset_out = reset_sync_reg4;


endmodule
