//------------------------------------------------------------------------------
// File       : tri_mode_ethernet_mac_0_axi_pipe.v
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
// Description:  A simple pipeline module to simplify the timing where a pattern
// generator and address swap module can be muxed into the data path
//
//------------------------------------------------------------------------------

`timescale 1 ps/1 ps

module tri_mode_ethernet_mac_0_axi_pipe (
   input                   axi_tclk,
   input                   axi_tresetn,

   input       [7:0]       rx_axis_fifo_tdata_in,
   input                   rx_axis_fifo_tvalid_in,
   input                   rx_axis_fifo_tlast_in,
   output                  rx_axis_fifo_tready_in,

   output      [7:0]       rx_axis_fifo_tdata_out,
   output                  rx_axis_fifo_tvalid_out,
   output                  rx_axis_fifo_tlast_out,
   input                   rx_axis_fifo_tready_out
);

reg      [5:0]             rd_addr;
reg      [5:0]             wr_addr;
reg                        wea;
reg                        rx_axis_fifo_tready_int;
reg                        rx_axis_fifo_tvalid_int;
wire     [1:0]             wr_block;
wire     [1:0]             rd_block;

assign rx_axis_fifo_tready_in  = rx_axis_fifo_tready_int;
assign rx_axis_fifo_tvalid_out = rx_axis_fifo_tvalid_int;

// should always write when valid data is accepted
always @(rx_axis_fifo_tvalid_in or rx_axis_fifo_tready_int)
begin
   wea = rx_axis_fifo_tvalid_in & rx_axis_fifo_tready_int;
end

// simply increment the write address after any valid write
always @(posedge axi_tclk)
begin
   if (!axi_tresetn) begin
      wr_addr <= 0;
   end
   else begin
      if (rx_axis_fifo_tvalid_in & rx_axis_fifo_tready_int)
         wr_addr <= wr_addr + 1;   
   end
end

// simply increment the read address after any validated read
always @(posedge axi_tclk)
begin
   if (!axi_tresetn) begin
      rd_addr <= 0;
   end
   else begin
      if (rx_axis_fifo_tvalid_int & rx_axis_fifo_tready_out)
         rd_addr <= rd_addr + 1;   
   end
end

assign wr_block = wr_addr[5:4];
assign rd_block = rd_addr[5:4]-1;

// need to generate the ready output - this is entirely dependant upon the full state
// of the fifo
always @(posedge axi_tclk)
begin
   if (!axi_tresetn) begin
      rx_axis_fifo_tready_int <= 0;
   end
   else begin
      if (wr_block == rd_block)
         rx_axis_fifo_tready_int <= 0;
      else
         rx_axis_fifo_tready_int <= 1;
   end
end

// need to generate the valid output - this is entirely dependant upon the full state
// of the fifo
always @(rd_addr or wr_addr)
begin
   if (rd_addr == wr_addr)
      rx_axis_fifo_tvalid_int <= 0;
   else
      rx_axis_fifo_tvalid_int <= 1;
end

genvar i;  
generate
  for (i=0; i<=7; i=i+1) begin : ram_loop
  RAM64X1D RAM64X1D_inst (
      .DPO     (rx_axis_fifo_tdata_out[i]), 
      .SPO     (), 
      .A0      (wr_addr[0]),
      .A1      (wr_addr[1]),
      .A2      (wr_addr[2]),
      .A3      (wr_addr[3]),
      .A4      (wr_addr[4]),
      .A5      (wr_addr[5]),
      .D       (rx_axis_fifo_tdata_in[i]), 
      .DPRA0   (rd_addr[0]),
      .DPRA1   (rd_addr[1]),
      .DPRA2   (rd_addr[2]),
      .DPRA3   (rd_addr[3]),
      .DPRA4   (rd_addr[4]),
      .DPRA5   (rd_addr[5]),
      .WCLK    (axi_tclk),
      .WE      (wea)
    );
   end
endgenerate
  
RAM64X1D RAM64X1D_inst_last (
    .DPO     (rx_axis_fifo_tlast_out), 
    .SPO     (), 
    .A0      (wr_addr[0]),
    .A1      (wr_addr[1]),
    .A2      (wr_addr[2]),
    .A3      (wr_addr[3]),
    .A4      (wr_addr[4]),
    .A5      (wr_addr[5]),
    .D       (rx_axis_fifo_tlast_in), 
    .DPRA0   (rd_addr[0]),
    .DPRA1   (rd_addr[1]),
    .DPRA2   (rd_addr[2]),
    .DPRA3   (rd_addr[3]),
    .DPRA4   (rd_addr[4]),
    .DPRA5   (rd_addr[5]),
    .WCLK    (axi_tclk),
    .WE      (wea)
  );

endmodule
