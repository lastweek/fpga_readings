//--------------------------------------------------------------------------
// Title      : FIFO BRAM
// Project    : Ten Gigabit Ethernet MAC Core
//--------------------------------------------------------------------------
// File       : fifo_ram.vhd
// Author     : Xilinx, Inc.
//--------------------------------------------------------------------------
// Description: BRAM used by tx and rx FIFOs
//--------------------------------------------------------------------------
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
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

module ten_gig_eth_mac_0_fifo_ram#(
  parameter ADDR_WIDTH = 9)
  (
  input  wire                          wr_clk,
  input  wire  [(ADDR_WIDTH-1):0]      wr_addr,
  input  wire  [63:0]                  data_in,
  input  wire  [3:0]                   ctrl_in,
  input  wire                          wr_allow,
  input  wire                          rd_clk,
  input  wire                          rd_sreset,
  input  wire  [(ADDR_WIDTH-1):0]      rd_addr,
  output wire  [63:0]                  data_out,
  output wire  [3:0]                   ctrl_out,
  input  wire                          rd_allow
 );

  localparam RAM_DEPTH = 2 ** ADDR_WIDTH;
  (* ram_style = "block" *)
  reg          [67:0]                  ram [RAM_DEPTH-1:0];
  
  reg          [67:0]                  wr_data_pipe = 0;
  reg                                  wr_allow_pipe = 0;
  reg          [(ADDR_WIDTH-1):0]      wr_addr_pipe = 0;

  wire         [67:0]                  wr_data;
  reg          [67:0]                  rd_data;

  wire                                 rd_allow_int;

  assign wr_data[63:0]                 = data_in;
  assign wr_data[67:64]                = ctrl_in;

  assign data_out                      = rd_data[63:0];
  assign ctrl_out                      = rd_data[67:64];

  // Block RAM must be enabled for synchronous reset to work.
  assign rd_allow_int                  = (rd_allow | rd_sreset);

  // For clean simulation 
  integer val;
  initial 
  begin
    for (val = 0; val < RAM_DEPTH; val = val+1) begin
      ram[val] <= 64'd0;
    end
  end

//----------------------------------------------------------------------
 // Infer BRAMs and connect them
 // appropriately.
//--------------------------------------------------------------------//   

  always @(posedge wr_clk)
   begin
      wr_data_pipe                     <= wr_data;
      wr_allow_pipe                    <= wr_allow;
      wr_addr_pipe                     <= wr_addr;
   end

  always @(posedge wr_clk)
   begin
     if (wr_allow_pipe) begin
       ram[wr_addr_pipe] <= wr_data_pipe;
     end
   end

  always @(posedge rd_clk)
   begin
     if (rd_allow_int) begin
       if (rd_sreset) begin
         rd_data <= 68'd0;
       end
       else begin
         rd_data <= ram[rd_addr];
       end
     end
   end

endmodule
