//------------------------------------------------------------------------------
// File       : tri_mode_ethernet_mac_0_axi_mux.v
// Author     : Xilinx Inc.
// -----------------------------------------------------------------------------
// (c) Copyright 2010 Xilinx, Inc. All rights reserved.
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
// Description:  A simple AXI-Streaming MUX
//
//------------------------------------------------------------------------------

`timescale 1 ps/1 ps

module tri_mode_ethernet_mac_0_axi_mux (
   input                   mux_select,

   // mux inputs
   input       [7:0]       tdata0,
   input                   tvalid0,
   input                   tlast0,
   output reg              tready0,
   
   input       [7:0]       tdata1,
   input                   tvalid1,
   input                   tlast1,
   output reg              tready1,
   
   // mux outputs
   output reg  [7:0]       tdata,
   output reg              tvalid,
   output reg              tlast,
   input                   tready
);

always @(mux_select or tdata0 or tvalid0 or tlast0 or tdata1 or 
         tvalid1 or tlast1)
begin
   if (mux_select) begin
      tdata    = tdata1;
      tvalid   = tvalid1;
      tlast    = tlast1;
   end
   else begin
      tdata    = tdata0;
      tvalid   = tvalid0;
      tlast    = tlast0;
   end
end

always @(mux_select or tready)
begin
   if (mux_select) begin
      tready0     = 1'b1;
   end
   else begin
      tready0     = tready;
   end
   tready1     = tready;
end

endmodule
