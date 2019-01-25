//------------------------------------------------------------------------------
// Title      : RAM memory for RX and TX client FIFOs
// Version    : 1.0
// Project    : Tri-Mode Ethernet MAC
//------------------------------------------------------------------------------
// File       : tri_mode_ethernet_mac_0_bram_tdp.v
// Author     : Xilinx Inc.
// -----------------------------------------------------------------------------
// (c) Copyright 2013 Xilinx, Inc. All rights reserved.
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
// Description: This is a parameterized inferred block RAM
//
//------------------------------------------------------------------------------

`timescale 1ps / 1ps

//------------------------------------------------------------------------------
// The module declaration for the block RAM
//------------------------------------------------------------------------------


module tri_mode_ethernet_mac_0_bram_tdp #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 12
) (
    // Port A
    input   wire                      a_clk,
    input   wire                      a_rst,
    input   wire                      a_wr,
    input   wire    [ADDR_WIDTH-1:0]  a_addr,
    input   wire    [DATA_WIDTH-1:0]  a_din,

    // Port B
    input   wire                      b_clk,
    input   wire                      b_en,
    input   wire                      b_rst,
    input   wire    [ADDR_WIDTH-1:0]  b_addr,
    output  reg     [DATA_WIDTH-1:0]  b_dout
);

// Shared memory
localparam RAM_DEPTH = 2 ** ADDR_WIDTH;
reg [DATA_WIDTH-1:0] mem [RAM_DEPTH-1:0];

// To write use port A
always @(posedge a_clk)
begin
    if(!a_rst && a_wr) begin
        mem[a_addr] <= a_din;
    end
end

// To read use Port B
always @(posedge b_clk)
begin
    if(b_rst)
       b_dout      <= {DATA_WIDTH{1'b0}};
    else if(b_en)
       b_dout      <= mem[b_addr];
end

endmodule

