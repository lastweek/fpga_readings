//------------------------------------------------------------------------------
// File       : tri_mode_ethernet_mac_0_axi_pat_gen.v
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
// Description:  This is a very simple pattern generator which will generate packets 
// with the supplied dest_addr and src_addr and incrementing data.  The packet size 
// increments between the min and max size (which can be set to the same value if a 
// specific size is required
//
// the pattteren generator is only throttled by the FIFO hitting full which in turn
// is throttled by the transmit rate of the MAC (10M/100M or 1G).  Since the example
// design system does not use active flow control it is possible for the FIFO's to 
// overflow on RX.  To avoid this a basic rate controller is implemented which will
// throttle the patteren generatoor output to just below the selected speed.
//
//------------------------------------------------------------------------------

`timescale 1 ps/1 ps

module tri_mode_ethernet_mac_0_axi_pat_gen #(
   parameter               DEST_ADDR      = 48'h64006a54ad7d,
   parameter               SRC_ADDR       = 48'h00183E02E5EB,
   parameter               MAX_SIZE       = 16'd500,
   parameter               MIN_SIZE       = 16'd64,
   parameter               ENABLE_VLAN    = 1'b0,
   parameter               VLAN_ID        = 12'd2,
   parameter               VLAN_PRIORITY  = 3'd2
)(
   input                   axi_tclk,
   input                   axi_tresetn,

   input                   enable_pat_gen,
   input       [1:0]       speed,

   output reg  [7:0]       tdata,
   output                  tvalid,
   output reg              tlast,
   input                   tready,
   
   output                  activity_flash_gen,
   output                  pkt_gen_enabled
);

localparam     IDLE        = 3'b000,
               HEADER      = 3'b001,
               SIZE        = 3'b010,
               DATA        = 3'b011,
               OVERHEAD    = 3'b100;
               
// work out the adjustment required to get the right packet size.               
localparam     PKT_ADJUST  = (ENABLE_VLAN) ? 22 : 18;

// generate the vlan fields
localparam     VLAN_HEADER = {8'h81, 8'h00, VLAN_PRIORITY, 1'b0, VLAN_ID};

// generate the require header count compare
localparam     HEADER_LENGTH = (ENABLE_VLAN) ? 15 : 11;

// generate the required bandwidth controls based on speed
// we want to use less than 100% bandwidth to avoid loopback overflow 
localparam     BW_1G       = 230;
localparam     BW_100M     = 23;
localparam     BW_10M      = 2;

reg         [11:0]         byte_count;
reg         [3:0]          header_count;
reg         [4:0]          overhead_count;
reg         [11:0]         pkt_size;
reg         [2:0]          next_gen_state;
reg                        byte_count_eq_1 = 0;
reg         [2:0]          gen_state;
wire        [7:0]          lut_data;
reg                        tvalid_int;

// rate control signals
reg         [7:0]          basic_rc_counter;
reg                        add_credit;
reg         [12:0]         credit_count;

reg   [15:0]         frame_activity_count = 16'b0;

wire                       axi_treset;

// Indicate if packagt is enabled or not
assign pkt_gen_enabled = enable_pat_gen;

// Indicate activity
assign activity_flash_gen = frame_activity_count[11];

assign axi_treset = !axi_tresetn;

// need a packet counter - max size limited to 11 bits
always @(posedge axi_tclk)
begin
   if (axi_treset) begin
      byte_count <= 0;
   end
   else if (gen_state == DATA & |byte_count & tready) begin
      byte_count <= byte_count -1;
   end     
   else if (gen_state == HEADER) begin
      byte_count <= pkt_size;
   end
end

always @(posedge axi_tclk)
begin
   if (axi_treset) begin
      byte_count_eq_1 <= 0;
   end
   else if (gen_state == DATA && byte_count == 12'h2 && tready) begin
      byte_count_eq_1 <= 1;
   end     
   else if (gen_state != DATA || (byte_count_eq_1 && tready)) begin
      byte_count_eq_1 <= 0;
   end
end

// need a smaller count to manage the header insertion
always @(posedge axi_tclk)
begin
   if (axi_treset) begin
      header_count <= 0;
   end
   else if (gen_state == HEADER & !(&header_count) & (tready | !tvalid_int)) begin
      header_count <= header_count + 1;
   end
   else if (gen_state == SIZE & tready) begin
      header_count <= 0;
   end
end

// need a count to manage the frame overhead (assume 24 bytes)
always @(posedge axi_tclk)
begin
   if (axi_treset) begin
      overhead_count <= 0;
   end
   else if (gen_state == OVERHEAD & |overhead_count & tready) begin
      overhead_count <= overhead_count - 1;
   end
   else if (gen_state == IDLE) begin
      overhead_count <= 24;
   end
end

// need a smaller count to manage the header insertion
// adjust parameter values by 18 to allow for header and crc
// so the pkt_size can be issued directly in the size field
always @(posedge axi_tclk)
begin
   if (axi_treset) begin
      pkt_size <= MIN_SIZE - PKT_ADJUST;
   end
   else if (gen_state == DATA & next_gen_state != DATA) begin
      if (pkt_size == MAX_SIZE - PKT_ADJUST)
         pkt_size <= MIN_SIZE - PKT_ADJUST;
      else
         pkt_size <= pkt_size + 1;
   end
end

// store the parametised values in a lut (64 deep)
// this should mean the values could be adjusted in fpga_editor etc..
genvar i;  
generate
  for (i=0; i<=7; i=i+1) begin : lut_loop
    LUT6 #(
       .INIT      ({48'd0,
                    VLAN_HEADER[i],
                    VLAN_HEADER[i+8],
                    VLAN_HEADER[i+16],
                    VLAN_HEADER[i+24],
                    SRC_ADDR[i],
                    SRC_ADDR[i+8],
                    SRC_ADDR[i+16],
                    SRC_ADDR[i+24],
                    SRC_ADDR[i+32],
                    SRC_ADDR[i+40],
                    DEST_ADDR[i],
                    DEST_ADDR[i+8],
                    DEST_ADDR[i+16],
                    DEST_ADDR[i+24],
                    DEST_ADDR[i+32],
                    DEST_ADDR[i+40]
                   })   // Specify LUT Contents
    ) LUT6_inst (
       .O         (lut_data[i]), 
       .I0        (header_count[0]),
       .I1        (header_count[1]),
       .I2        (header_count[2]),
       .I3        (header_count[3]),
       .I4        (1'b0),
       .I5        (1'b0) 
    );
   end
endgenerate
  
// rate control logic

// first we need an always active counter to provide the credit control
always @(posedge axi_tclk)
begin
   if (axi_treset | !enable_pat_gen)
      basic_rc_counter     <= 255;
   else
      basic_rc_counter     <= basic_rc_counter + 1;
end

// now we need to set the compare level depending upon the selected speed
// the credits are applied using a simple less-than check
always @(posedge axi_tclk)
begin
   if (speed[1])
      if (basic_rc_counter < BW_1G)
         add_credit        <= 1;
      else
         add_credit        <= 0;
   else if (speed[0])
      if (basic_rc_counter < BW_100M)
         add_credit        <= 1;
      else
         add_credit        <= 0;
   else
      if (basic_rc_counter < BW_10M)
         add_credit        <= 1;
      else
         add_credit        <= 0;
end
 
// basic credit counter - -ve value means do not send a frame
always @(posedge axi_tclk)
begin
   if (axi_treset)
      credit_count         <= 0;
   else begin
      // if we are in frame
      if (gen_state != IDLE) begin
         if (!add_credit & credit_count[12:10] != 3'b110)  // stop decrementing at -2048
            credit_count <= credit_count - 1;
      end
      else begin
         if (add_credit & credit_count[12:11] != 2'b01)    // stop incrementing at 2048
            credit_count <= credit_count + 1;         
      end
   end
end 

// simple state machine to control the data
// on the transition from IDLE we reset the counters and increment the packet size
always @(gen_state or enable_pat_gen or header_count or tready or byte_count or tvalid_int or
         credit_count or overhead_count)
begin
   next_gen_state = gen_state;
   case (gen_state)
      IDLE : begin
         if (enable_pat_gen & !tvalid_int & !credit_count[12])
            next_gen_state = HEADER;
      end
      HEADER : begin
         if (header_count == HEADER_LENGTH & tready)
            next_gen_state = SIZE;
      end
      SIZE : begin
         // when we enter SIZE header count is initially all 1's 
         // it is cleared when we enter SIZE which gives us the required two cycles in this state
         if (header_count == 0 & tready)
            next_gen_state = DATA;
      end
      DATA : begin
         // when an AVB AV channel we want to keep valid asserted to indicate a continuous feed of data
         //   the AVB module is then enitirely resposible for the bandwidth
         if (byte_count_eq_1 & tready) begin
            next_gen_state = OVERHEAD;
         end
      end
      OVERHEAD : begin
         if (overhead_count == 1 & tready) begin 
            next_gen_state = IDLE;
         end
      end
      default : begin
         next_gen_state = IDLE;
      end
   endcase
end

always @(posedge axi_tclk)
begin
   if (axi_treset) begin
      gen_state <= IDLE;
   end
   else begin
   gen_state <= next_gen_state;
   end
end


// now generate the TVALID output
always @(posedge axi_tclk)
begin
   if (axi_treset)
      tvalid_int <= 0;
   else if (gen_state != IDLE & gen_state != OVERHEAD)
      tvalid_int <= 1;
   else if (tready)
      tvalid_int <= 0;
end

// now generate the TDATA output
always @(posedge axi_tclk)
begin
   if (gen_state == HEADER & (tready | !tvalid_int))
      tdata <= lut_data;
   else if (gen_state == SIZE & tready) begin
      if (header_count[3])
         tdata <= {5'h0, pkt_size[10:8]};
      else
         tdata <= pkt_size[7:0];
   end
   else if (tready)
      tdata <= byte_count[7:0];
end


// now generate the TLAST output
always @(posedge axi_tclk)
begin
   if (axi_treset)
      tlast <= 0;
   else if (byte_count_eq_1 & tready)
      tlast <= 1;
   else if (tready)
      tlast <= 0;
end

assign tvalid = tvalid_int;

// now need a counter for frame activity to provide some feedback that frames are being received
// a 16 bit counter is used as this should give a slow flash rate at 10M and a very fast rate at 1G
always @(posedge axi_tclk)
begin
   if (axi_treset)
      frame_activity_count <= 0;
   else begin
      if (gen_state == HEADER)
         frame_activity_count <= frame_activity_count + 1;
   end
end

endmodule
