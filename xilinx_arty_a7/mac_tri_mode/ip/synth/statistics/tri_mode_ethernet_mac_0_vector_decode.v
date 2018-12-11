//----------------------------------------------------------------------
// File       : tri_mode_ethernet_mac_0_vector_decode.v
// Author     : Xilinx Inc.
// -----------------------------------------------------------------------------
// (c) Copyright 2004-2008 Xilinx, Inc. All rights reserved.
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
// Description: This is the Statistic Vector Decoder block.
//
//              Input statistic vectors are decoded into increment
//              signals.  Since this block is provided in HDL, it can be
//              edited and tailored to specific statistical gathering
//              applications.
//
//           ie. by editing this file, you can change the statistics
//              that are to be counted.

`timescale 1ps / 1ps




//----------------------------------------------------------------------
// The module declaration for the Statistic Vector Decoder block.
//----------------------------------------------------------------------

module tri_mode_ethernet_mac_0_vector_decode
   (
   // Transmitter Statistic Vector inputs from ethernet MAC
   input                   tx_clk,
   input                   tx_reset,
   input       [31:0]      tx_statistics_vector,
   input                   tx_statistics_valid,

   // Receiver Statistic Vector inputs from ethernet MAC
   input                   rx_clk,
   input                   rx_reset,
   input       [27:0]      rx_statistics_vector,
   input                   rx_statistics_valid,

   // Increment update signals for Statistic Counters 4 upwards
   output      [4:33]      increment_vector
   );



   // Signals to rename the tx_statistics_vector for readability!
   reg                  tx_pause_frame = 1'b0;
   reg   [3:0]          tx_attemps = 4'b0;
   reg                  tx_excessive_collision = 1'b0;
   reg                  tx_excessive_deferral = 1'b0;
   reg                  tx_late_collision = 1'b0;
   reg                  tx_deferred = 1'b0;
   wire                 tx_vlan_frame;
   reg                  tx_vlan_frame_reg = 1'b0;
   wire  [13:0]         tx_frame_length;
   reg                  tx_control_frame = 1'b0;
   reg                  tx_underrun_frame = 1'b0;
   reg                  tx_multicast_frame = 1'b0;
   reg                  tx_broadcast_frame = 1'b0;
   reg                  tx_good_frame = 1'b0;
   reg                  tx_byte_valid = 1'b0;

   // Reclocked for pipelining
   reg                  tx_good_frame_reg;
   reg                  tx_control_frame_reg;



   // Signals to rename the rx_statistics_vector for readability!
   wire                 rx_address_match;
   reg                  rx_alignment_error = 1'b0;
   reg                  rx_length_type_error = 1'b0;
   reg                  rx_bad_pause_opcode = 1'b0;
   reg                  rx_flow_control_frame = 1'b0;
   wire                 rx_vlan_frame;
   reg                  rx_vlan_frame_reg = 1'b0;
   wire                 rx_out_of_bounds_error;
   reg                  rx_out_of_bounds_error_reg = 1'b0;
   reg                  rx_control_frame = 1'b0;
   wire  [13:0]         rx_frame_length;
   reg                  rx_multicast_frame = 1'b0;
   reg                  rx_broadcast_frame = 1'b0;
   reg                  rx_fcs_error = 1'b0;
   reg                  rx_bad_frame = 1'b0;
   reg                  rx_good_frame = 1'b0;
   reg                  rx_byte_valid = 1'b0;

  // Reclocked for pipelining
   reg                  rx_good_frame_reg;
   reg                  rx_bad_frame_reg;
   reg                  rx_fcs_error_reg;
   reg                  rx_control_frame_reg;
   reg                  rx_length_type_error_reg;
   reg                  rx_flow_control_frame_reg;
   reg                  rx_bad_pause_opcode_reg;
   reg                  rx_alignment_error_reg;


   // New Statistic Valid Signals also taking into account the
   // clock enables (if applicable).
   wire                 rx_stats_valid;
   wire                 tx_stats_valid;

   // Reclocked for pipelining
   reg                  rx_stats_valid_pipe;
   reg                  rx_stats_valid_reg;
   reg                  tx_stats_valid_pipe;
   reg                  tx_stats_valid_reg;

   // Rx Frame size interpretation.
   reg                  rx_0_63;
   reg                  rx_64;
   reg                  rx_65_127;
   reg                  rx_128_255;
   reg                  rx_256_511;
   reg                  rx_512_1023;
   reg                  rx_1024_max;
   reg                  rx_oversize;

   // Tx Frame size interpretation.
   reg                  tx_0_64;
   reg                  tx_65_127;
   reg                  tx_128_255;
   reg                  tx_256_511;
   reg                  tx_512_1023;
   reg                  tx_1024_max;
   reg                  tx_oversize;


   // internal increment request bits which will later be routed to the
   // Statistic core.
   reg   [4: 33]         inc_vector;

   reg                  rx_oversize_frame;
   reg   [10:6]         rx_frame_length_reg;
   reg                  rx_mult_64;
   reg                  tx_oversize_frame;
   reg   [10:6]         tx_frame_length_reg;
   reg                  tx_mult_64;

   reg                  rx_statistics_valid_reg;
   reg                  tx_statistics_valid_reg;

   //--------------------------------------------------------------------
   // Transmitter Statistics Vector Interpretation
   //--------------------------------------------------------------------


   // The tx_statistics_vector is renamed for readability
   assign tx_vlan_frame          = tx_statistics_vector[19];
   assign tx_frame_length        = tx_statistics_vector[18:5]; // extra pipeline already


   // The tx_statistics_vector is registered and renamed for readability
   always @(posedge tx_clk)
   begin
      if (tx_stats_valid) begin
         tx_pause_frame         <= tx_statistics_vector[31];
         tx_byte_valid          <= tx_statistics_vector[30];
         tx_attemps             <= tx_statistics_vector[28:25];
         tx_excessive_collision <= tx_statistics_vector[23];
         tx_late_collision      <= tx_statistics_vector[22];
         tx_excessive_deferral  <= tx_statistics_vector[21];
         tx_deferred            <= tx_statistics_vector[20];
         tx_vlan_frame_reg      <= tx_statistics_vector[19];
         tx_control_frame       <= tx_statistics_vector[4];
         tx_underrun_frame      <= tx_statistics_vector[3];
         tx_multicast_frame     <= tx_statistics_vector[2];
         tx_broadcast_frame     <= tx_statistics_vector[1];
         tx_good_frame          <= tx_statistics_vector[0];
      end
   end


   // The tx_statistics_valid signal is only valid when clock enabled
   assign tx_stats_valid         = tx_statistics_valid && !tx_statistics_valid_reg;

   always @(posedge tx_clk)
   begin
      if (tx_reset) begin
         tx_statistics_valid_reg <= 1'b0;
      end
      else begin
         tx_statistics_valid_reg <= tx_statistics_valid;
      end
   end


   //--------------------------------------------------------------------
   // Receiver Statistics Vector Interpretation
   //--------------------------------------------------------------------


   // The rx_statistics_vector is renamed for readability
   assign rx_address_match       = rx_statistics_vector[27];
   assign rx_vlan_frame          = rx_statistics_vector[21];
   assign rx_out_of_bounds_error = rx_statistics_vector[20];
   assign rx_frame_length        = rx_statistics_vector[18:5];


   // The rx_statistics_vector is registered and renamed for readability
   always @(posedge rx_clk)
   begin
      if (rx_stats_valid) begin
         rx_alignment_error         <= rx_statistics_vector[26];
         rx_length_type_error       <= rx_statistics_vector[25];
         rx_bad_pause_opcode        <= rx_statistics_vector[24];
         rx_flow_control_frame      <= rx_statistics_vector[23];
         rx_byte_valid              <= rx_statistics_vector[22];
         rx_vlan_frame_reg          <= rx_statistics_vector[21];
         rx_out_of_bounds_error_reg <= rx_statistics_vector[20];
         rx_control_frame           <= rx_statistics_vector[19];
         rx_multicast_frame         <= rx_statistics_vector[4];
         rx_broadcast_frame         <= rx_statistics_vector[3];
         rx_fcs_error               <= rx_statistics_vector[2];
         rx_bad_frame               <= rx_statistics_vector[1];
         rx_good_frame              <= rx_statistics_vector[0];
      end
   end


   // The rx_statistics_valid signal is only captured at its rising edge (to avoid repeat counts)
   assign rx_stats_valid         = rx_statistics_valid && !rx_statistics_valid_reg
                                   // and only when the address match is set!
                                   && rx_address_match;

   always @(posedge rx_clk)
   begin
      if (rx_reset) begin
         rx_statistics_valid_reg <= 1'b0;
      end
      else begin
         rx_statistics_valid_reg <= rx_statistics_valid;
      end
   end


   //--------------------------------------------------------------------
   // Pipelining to compensate for the Statistic Vector Decoding Logic
   //--------------------------------------------------------------------


   // Pipeline receiver vector bits
   always @(posedge rx_clk)
   begin
      if (rx_reset) begin
         rx_stats_valid_pipe        <= 1'b0;
         rx_stats_valid_reg         <= 1'b0;
         rx_good_frame_reg          <= 1'b0;
         rx_bad_frame_reg           <= 1'b0;
         rx_fcs_error_reg           <= 1'b0;
         rx_control_frame_reg       <= 1'b0;
         rx_length_type_error_reg   <= 1'b0;
         rx_flow_control_frame_reg  <= 1'b0;
         rx_bad_pause_opcode_reg    <= 1'b0;
         rx_alignment_error_reg     <= 1'b0;
      end
      else begin
         rx_stats_valid_pipe        <= rx_stats_valid;
         rx_stats_valid_reg         <= rx_stats_valid_pipe;
         rx_good_frame_reg          <= rx_good_frame;
         rx_bad_frame_reg           <= rx_bad_frame;
         rx_fcs_error_reg           <= rx_fcs_error;
         rx_control_frame_reg       <= rx_control_frame;
         rx_length_type_error_reg   <= rx_length_type_error;
         rx_flow_control_frame_reg  <= rx_flow_control_frame;
         rx_bad_pause_opcode_reg    <= rx_bad_pause_opcode;
         rx_alignment_error_reg     <= rx_alignment_error;
      end
   end



   // Pipeline transmitter vector bits
   always @(posedge tx_clk)
   begin
      if (tx_reset) begin
         tx_stats_valid_pipe        <= 1'b0;
         tx_stats_valid_reg         <= 1'b0;
         tx_good_frame_reg          <= 1'b0;
         tx_control_frame_reg       <= 1'b0;
      end
      else begin
         tx_stats_valid_pipe        <= tx_stats_valid;
         tx_stats_valid_reg         <= tx_stats_valid_pipe;
         tx_good_frame_reg          <= tx_good_frame;
         tx_control_frame_reg       <= tx_control_frame;
      end
   end

   // add pipelining to simplify the size decode
   always @(posedge rx_clk)
   begin
      if (rx_reset) begin
         rx_oversize_frame          <= 0;
         rx_frame_length_reg        <= 0;
         rx_mult_64                 <= 0;
      end
      else begin
         rx_frame_length_reg        <= rx_frame_length[10:6];
         if (!rx_out_of_bounds_error &&
             ((!rx_vlan_frame && rx_frame_length > 14'd1518) ||        //1518 (non VLAN)
              rx_frame_length > 14'd1522))                            //1522 (VLAN)
            rx_oversize_frame       <= 1;
         else
            rx_oversize_frame       <= 0;
         if (rx_frame_length[5:0] == 6'b0)
            rx_mult_64              <= 1;
         else
            rx_mult_64              <= 0;
      end
   end

   always @(posedge tx_clk)
   begin
      if (tx_reset) begin
         tx_oversize_frame          <= 0;
         tx_frame_length_reg        <= 0;
         tx_mult_64                 <= 0;
      end
      else begin
         tx_frame_length_reg        <= tx_frame_length[10:6];
         if ((!tx_vlan_frame &&
              tx_frame_length > 14'd1518) ||        //1518 (non VLAN)
              tx_frame_length > 14'd1522)           //1522 (VLAN)
            tx_oversize_frame       <= 1;
         else
            tx_oversize_frame       <= 0;
         if (tx_frame_length[5:0] == 6'b0)
            tx_mult_64              <= 1;
         else
            tx_mult_64              <= 0;
      end
   end



   //-------------------------------------------------------------------
   // Statistic Vector Decoding Logic
   //-------------------------------------------------------------------



   // Decode the received frames length field to obtain frame size
   // ranges.
   always @(posedge rx_clk)
   begin
      if (rx_reset) begin
         rx_0_63                    <= 1'b0;
         rx_64                      <= 1'b0;
         rx_65_127                  <= 1'b0;
         rx_128_255                 <= 1'b0;
         rx_256_511                 <= 1'b0;
         rx_512_1023                <= 1'b0;
         rx_1024_max                <= 1'b0;
         rx_oversize                <= 1'b0;
      end
      else begin
         if (rx_oversize_frame) begin
            rx_0_63                 <= 1'b0;
            rx_64                   <= 1'b0;
            rx_65_127               <= 1'b0;
            rx_128_255              <= 1'b0;
            rx_256_511              <= 1'b0;
            rx_512_1023             <= 1'b0;
            rx_1024_max             <= 1'b0;
            rx_oversize             <= 1'b1;
         end
         else if (rx_frame_length_reg[10]) begin    // 1024 bytes or greater
            rx_0_63                 <= 1'b0;
            rx_64                   <= 1'b0;
            rx_65_127               <= 1'b0;
            rx_128_255              <= 1'b0;
            rx_256_511              <= 1'b0;
            rx_512_1023             <= 1'b0;
            rx_1024_max             <= 1'b1;
            rx_oversize             <= 1'b0;
         end
         else if (rx_frame_length_reg[9]) begin     // 512 bytes or greater
            rx_0_63                 <= 1'b0;
            rx_64                   <= 1'b0;
            rx_65_127               <= 1'b0;
            rx_128_255              <= 1'b0;
            rx_256_511              <= 1'b0;
            rx_512_1023             <= 1'b1;
            rx_1024_max             <= 1'b0;
            rx_oversize             <= 1'b0;
         end
         else if (rx_frame_length_reg[8]) begin     // 256 bytes or greater
            rx_0_63                 <= 1'b0;
            rx_64                   <= 1'b0;
            rx_65_127               <= 1'b0;
            rx_128_255              <= 1'b0;
            rx_256_511              <= 1'b1;
            rx_512_1023             <= 1'b0;
            rx_1024_max             <= 1'b0;
            rx_oversize             <= 1'b0;
         end
         else if (rx_frame_length_reg[7]) begin     // 128 bytes or greater
            rx_0_63                 <= 1'b0;
            rx_64                   <= 1'b0;
            rx_65_127               <= 1'b0;
            rx_128_255              <= 1'b1;
            rx_256_511              <= 1'b0;
            rx_512_1023             <= 1'b0;
            rx_1024_max             <= 1'b0;
            rx_oversize             <= 1'b0;
         end
         else if (rx_frame_length_reg[6]) begin     // 64 bytes or greater
            if (rx_mult_64) begin                           // exactly 64 bytes
               rx_0_63              <= 1'b0;
               rx_64                <= 1'b1;
               rx_65_127            <= 1'b0;                // greater than 64 bytes
               rx_128_255           <= 1'b0;
               rx_256_511           <= 1'b0;
               rx_512_1023          <= 1'b0;
               rx_1024_max          <= 1'b0;
               rx_oversize          <= 1'b0;
            end
            else begin                                      // 65-127 bytes
               rx_0_63              <= 1'b0;
               rx_64                <= 1'b0;
               rx_65_127            <= 1'b1;
               rx_128_255           <= 1'b0;
               rx_256_511           <= 1'b0;
               rx_512_1023          <= 1'b0;
               rx_1024_max          <= 1'b0;
               rx_oversize          <= 1'b0;
            end
         end
         else begin                                         // less than 64 bytes
            rx_0_63                 <= 1'b1;
            rx_64                   <= 1'b0;
            rx_65_127               <= 1'b0;
            rx_128_255              <= 1'b0;
            rx_256_511              <= 1'b0;
            rx_512_1023             <= 1'b0;
            rx_1024_max             <= 1'b0;
            rx_oversize             <= 1'b0;
         end
      end
   end



   // Decode the transmitter frames length field to obtain frame size
   // ranges.
   always @(posedge tx_clk)
   begin
      if (tx_reset) begin
         tx_0_64     <= 1'b0;
         tx_65_127   <= 1'b0;
         tx_128_255  <= 1'b0;
         tx_256_511  <= 1'b0;
         tx_512_1023 <= 1'b0;
         tx_1024_max <= 1'b0;
         tx_oversize <= 1'b0;
      end
     else begin
         if (tx_oversize_frame) begin
            tx_0_64                 <= 1'b0;
            tx_65_127               <= 1'b0;
            tx_128_255              <= 1'b0;
            tx_256_511              <= 1'b0;
            tx_512_1023             <= 1'b0;
            tx_1024_max             <= 1'b0;
            tx_oversize             <= 1'b1;
         end
         else if (tx_frame_length_reg[10]) begin    // 1024 bytes or greater
            tx_0_64                 <= 1'b0;
            tx_65_127               <= 1'b0;
            tx_128_255              <= 1'b0;
            tx_256_511              <= 1'b0;
            tx_512_1023             <= 1'b0;
            tx_1024_max             <= 1'b1;
            tx_oversize             <= 1'b0;
         end
         else if (tx_frame_length_reg[9]) begin     // 512 bytes or greater
            tx_0_64                 <= 1'b0;
            tx_65_127               <= 1'b0;
            tx_128_255              <= 1'b0;
            tx_256_511              <= 1'b0;
            tx_512_1023             <= 1'b1;
            tx_1024_max             <= 1'b0;
            tx_oversize             <= 1'b0;
         end
         else if (tx_frame_length_reg[8]) begin     // 256 bytes or greater
            tx_0_64                 <= 1'b0;
            tx_65_127               <= 1'b0;
            tx_128_255              <= 1'b0;
            tx_256_511              <= 1'b1;
            tx_512_1023             <= 1'b0;
            tx_1024_max             <= 1'b0;
            tx_oversize             <= 1'b0;
         end
         else if (tx_frame_length_reg[7]) begin     // 128 bytes or greater
            tx_0_64                 <= 1'b0;
            tx_65_127               <= 1'b0;
            tx_128_255              <= 1'b1;
            tx_256_511              <= 1'b0;
            tx_512_1023             <= 1'b0;
            tx_1024_max             <= 1'b0;
            tx_oversize             <= 1'b0;
         end
         else if (tx_frame_length_reg[6]            // 65 bytes or greater
         && !tx_mult_64) begin
            tx_0_64                 <= 1'b0;
            tx_65_127               <= 1'b1;
            tx_128_255              <= 1'b0;
            tx_256_511              <= 1'b0;
            tx_512_1023             <= 1'b0;
            tx_1024_max             <= 1'b0;
            tx_oversize             <= 1'b0;
         end
         else begin                                         // 64 bytes or less
            tx_0_64                 <= 1'b1;
            tx_65_127               <= 1'b0;
            tx_128_255              <= 1'b0;
            tx_256_511              <= 1'b0;
            tx_512_1023             <= 1'b0;
            tx_1024_max             <= 1'b0;
            tx_oversize             <= 1'b0;
         end
      end
   end



   // For Collision handling: detect when multiple attempts were made
   // to transmit a frame.
   assign multiple_attempt = tx_attemps[3] || tx_attemps[2] ||
                             tx_attemps[1];


   // For Collision handling: detect when only a single attempt was
   // required to transmit a frame.
   assign single_attempt   = tx_attemps[0] && !multiple_attempt;


   //-------------------------------------------------------------------
   // Statistic Counters 4 to 10 are the 1st set of counters reserved
   // for frame size bins.
   //
   // Only 1 counter in this set is updated per statistic_valid pulse.
   //-------------------------------------------------------------------



   // Counter 4: "64 byte frames received OK" increment request
   //------------
   always @(posedge rx_clk)
   begin
      if (rx_reset)
         inc_vector[4]              <= 1'b0;

      else if (rx_stats_valid_reg) begin
         // toggle whenever an update is required
         if (rx_good_frame_reg && rx_64)
            inc_vector[4]           <= !inc_vector[4];

      end
   end



   // Counter 5: "65-127 byte frames received OK" increment request
   //------------
   always @(posedge rx_clk)
   begin
      if (rx_reset)
         inc_vector[5]              <= 1'b0;

      else if (rx_stats_valid_reg) begin
         // toggle whenever an update is required
         if (rx_good_frame_reg && rx_65_127)
            inc_vector[5]           <= !inc_vector[5];

      end
   end



   // Counter 6: "128-255 byte frames received OK" increment request
   //------------
   always @(posedge rx_clk)
   begin
      if (rx_reset)
         inc_vector[6]              <= 1'b0;

      else if (rx_stats_valid_reg) begin
         // toggle whenever an update is required
         if (rx_good_frame_reg && rx_128_255)
            inc_vector[6]           <= !inc_vector[6];

      end
   end



   // Counter 7: "256-511 byte frames received OK" increment request
   //------------
   always @(posedge rx_clk)
   begin
      if (rx_reset)
         inc_vector[7]              <= 1'b0;

      else if (rx_stats_valid_reg) begin
         // toggle whenever an update is required
         if (rx_good_frame_reg && rx_256_511)
            inc_vector[7]           <= !inc_vector[7];

      end
   end



   // Counter 8: "512-1023 byte frames received OK" increment request
   //------------
   always @(posedge rx_clk)
   begin
      if (rx_reset)
         inc_vector[8]              <= 1'b0;

      else if (rx_stats_valid_reg) begin
         // toggle whenever an update is required
         if (rx_good_frame_reg && rx_512_1023)
            inc_vector[8]           <= !inc_vector[8];

      end
   end



   // Counter 9: "1024-MaxFrameSize byte frames received OK" increment
   //------------ request
   always @(posedge rx_clk)
   begin
      if (rx_reset)
         inc_vector[9]              <= 1'b0;

      else if (rx_stats_valid_reg) begin
         // toggle whenever an update is required
         if (rx_good_frame_reg && rx_1024_max)
            inc_vector[9]           <= !inc_vector[9];

      end
   end



   // Counter 10: "Oversized frames received OK" increment request
   //------------
   always @(posedge rx_clk)
   begin
      if (rx_reset)
         inc_vector[10]             <= 1'b0;

      else if (rx_stats_valid_reg) begin
         if (rx_oversize &&

             // Oversized but no other errors
             !rx_fcs_error_reg && !rx_length_type_error_reg
             && !rx_alignment_error_reg

             // and not a control frame
             && !rx_control_frame_reg)

            // toggle whenever an update is required
            inc_vector[10]          <= !inc_vector[10];

      end
   end



   //-------------------------------------------------------------------
   // Statistic Counters 11 to 17 are the 2nd set of counters reserved
   // for frame size bins.
   //
   // Only 1 counter in this set is updated per statistic_valid pulse.
   //-------------------------------------------------------------------



   // Counter 11: "64-byte frames transmitted OK" increment request
   //------------
   always @(posedge tx_clk)
   begin
      if (tx_reset)
         inc_vector[11]             <= 1'b0;

      else if (tx_stats_valid_reg) begin
         // toggle whenever an update is required
         if (tx_good_frame_reg && tx_0_64)
            inc_vector[11]          <= !inc_vector[11];

      end
   end



   // Counter 12: "65-127 byte frames transmitted OK" increment request
   //------------
   always @(posedge tx_clk)
   begin
      if (tx_reset)
         inc_vector[12]             <= 1'b0;

      else if (tx_stats_valid_reg) begin
         // toggle whenever an update is required
         if (tx_good_frame_reg && tx_65_127)
            inc_vector[12]          <= !inc_vector[12];

      end
   end



   // Counter 13: "128-255 byte frames transmitted OK" increment request
   //------------
   always @(posedge tx_clk)
   begin
      if (tx_reset)
         inc_vector[13]             <= 1'b0;

      else if (tx_stats_valid_reg) begin
         // toggle whenever an update is required
         if (tx_good_frame_reg && tx_128_255)
            inc_vector[13]          <= !inc_vector[13];

      end
   end



   // Counter 14: "256-511 byte frames transmitted OK" increment request
   //------------
   always @(posedge tx_clk)
   begin
      if (tx_reset)
         inc_vector[14]             <= 1'b0;

      else if (tx_stats_valid_reg) begin
         // toggle whenever an update is required
         if (tx_good_frame_reg && tx_256_511)
            inc_vector[14]          <= !inc_vector[14];

      end
   end



   // Counter 15: "512-1023 byte frames transmitted OK"
   //------------ increment request
   always @(posedge tx_clk)
   begin
      if (tx_reset)
         inc_vector[15]             <= 1'b0;

      else if (tx_stats_valid_reg) begin
         // toggle whenever an update is required
         if (tx_good_frame_reg && tx_512_1023)
            inc_vector[15]          <= !inc_vector[15];

      end
   end



   // Counter 16: "1024-MaxFrameSize byte frames transmitted OK"
   //------------ increment request
   always @(posedge tx_clk)
   begin
      if (tx_reset)
         inc_vector[16]             <= 1'b0;

      else if (tx_stats_valid_reg) begin
         // toggle whenever an update is required
         if (tx_good_frame_reg && tx_1024_max)
            inc_vector[16]          <= !inc_vector[16];

      end
   end



   // Counter 17: "Oversized frames transmitted OK" increment request
   //------------
   always @(posedge tx_clk)
   begin
      if (tx_reset)
         inc_vector[17]             <= 1'b0;

      else if (tx_stats_valid_reg) begin
         // toggle whenever an update is required
         if (tx_good_frame_reg && tx_oversize)
            inc_vector[17]          <= !inc_vector[17];

      end
   end



   //-------------------------------------------------------------------
   // Statistic update inputs for the standard counters
   //-------------------------------------------------------------------



   // Counter 18: "Frames Received OK" increment request
   //------------
   always @(posedge rx_clk)
   begin
      if (rx_reset)
         inc_vector[18]             <= 1'b0;

      else if (rx_stats_valid_pipe) begin
         // toggle whenever an update is required
         if (rx_good_frame)
            inc_vector[18]          <= !inc_vector[18];

      end
   end



   // Counter 19: "Frame Check Sequence Errors" increment request
   //------------
   always @(posedge rx_clk)
   begin
      if (rx_reset)
         inc_vector[19]             <= 1'b0;

      else if (rx_stats_valid_reg) begin
         // toggle whenever an update is required
         if (rx_fcs_error_reg && !rx_0_63)
            inc_vector[19]          <= !inc_vector[19];

      end
   end



   // Counter 20: "Broadcast frames received OK" increment request
   //------------
   always @(posedge rx_clk)
   begin
      if (rx_reset)
         inc_vector[20]             <= 1'b0;

      else if (rx_stats_valid_pipe) begin
         // toggle whenever an update is required
         if (rx_good_frame && rx_broadcast_frame)
            inc_vector[20]          <= !inc_vector[20];

      end
   end



   // Counter 21: "Multicast frames received OK" increment request
   //------------
   always @(posedge rx_clk)
   begin
      if (rx_reset)
         inc_vector[21]             <= 1'b0;

      else if (rx_stats_valid_pipe) begin
         // toggle whenever an update is required
         if (rx_good_frame && rx_multicast_frame)
            inc_vector[21]          <= !inc_vector[21];

      end
   end



   // Counter 22: "Control frames received OK" increment request
   //------------
   always @(posedge rx_clk)
   begin
      if (rx_reset)
         inc_vector[22]             <= 1'b0;

      else if (rx_stats_valid_pipe) begin
         // toggle whenever an update is required
         if (rx_good_frame && rx_control_frame)
            inc_vector[22]          <= !inc_vector[22];

      end
   end



   // Counter 23: "Length/Type Out of Range" increment request
   //------------
   always @(posedge rx_clk)
   begin
      if (rx_reset)
         inc_vector[23]             <= 1'b0;

      else if (rx_stats_valid_reg) begin
         // toggle whenever an update is required
         if (rx_length_type_error_reg && !rx_0_63)
            inc_vector[23]          <= !inc_vector[23];

      end
   end



   // Counter 24: "VLAN tagged frames received OK" increment request
   //------------
   always @(posedge rx_clk)
   begin
      if (rx_reset)
         inc_vector[24]             <= 1'b0;

      else if (rx_stats_valid_pipe) begin
         // toggle whenever an update is required
         if (rx_good_frame && rx_vlan_frame_reg)
            inc_vector[24]          <= !inc_vector[24];

      end
   end



   // Counter 25: "Pause frames received OK" increment request
   //------------
   always @(posedge rx_clk)
   begin
      if (rx_reset)
         inc_vector[25]             <= 1'b0;

      else if (rx_stats_valid_reg) begin
         // toggle whenever an update is required
         if (rx_flow_control_frame_reg && !rx_0_63)
            inc_vector[25]          <= !inc_vector[25];

      end
   end



   // Counter 26: "Control Frames Received with Unsupported Opcode"
   //------------ increment request
   always @(posedge rx_clk)
   begin
      if (rx_reset)
         inc_vector[26]             <= 1'b0;

      else if (rx_stats_valid_reg) begin
         // toggle whenever an update is required
         if (rx_bad_pause_opcode_reg && !rx_0_63)
            inc_vector[26]          <= !inc_vector[26];

      end
   end



   // Counter 27: "Frames transmitted OK" increment request
   //------------
   always @(posedge tx_clk)
   begin
      if (tx_reset)
         inc_vector[27]             <= 1'b0;

      else if (tx_stats_valid_pipe) begin
         // toggle whenever an update is required
         if (tx_good_frame)
            inc_vector[27]          <= !inc_vector[27];

      end
   end



   // Counter 28: "Broadcast frames transmitted OK" increment request
   //------------
   always @(posedge tx_clk)
   begin
      if (tx_reset)
         inc_vector[28]             <= 1'b0;

      else if (tx_stats_valid_pipe) begin
         // toggle whenever an update is required
         if (tx_good_frame && tx_broadcast_frame)
            inc_vector[28]          <= !inc_vector[28];

      end
   end



   // Counter 29: "Multicast frames transmitted OK" increment request
   //------------
   always @(posedge tx_clk)
   begin
      if (tx_reset)
         inc_vector[29]             <= 1'b0;

      else if (tx_stats_valid_pipe) begin
         // toggle whenever an update is required
         if (tx_good_frame && tx_multicast_frame)
            inc_vector[29]          <= !inc_vector[29];

      end
   end



   // Counter 30: "Underrun errors" increment request
   //------------
   always @(posedge tx_clk)
   begin
      if (tx_reset)
         inc_vector[30]             <= 1'b0;

      else if (tx_stats_valid_pipe) begin
         // toggle whenever an update is required
         if (tx_underrun_frame)
            inc_vector[30]          <= !inc_vector[30];

      end
   end



   // Counter 31: "Control frames transmitted OK" increment request
   //------------
   always @(posedge tx_clk)
   begin
      if (tx_reset)
         inc_vector[31]             <= 1'b0;

      else if (tx_stats_valid_reg && tx_good_frame_reg) begin
         // toggle whenever an update is required
         if (tx_control_frame_reg && tx_0_64)
            inc_vector[31]          <= !inc_vector[31];

      end
   end



   // Counter 32: "VLAN tagged frames transmitted OK" increment request
   //------------
   always @(posedge tx_clk)
   begin
      if (tx_reset)
         inc_vector[32]             <= 1'b0;

      else if (tx_stats_valid_pipe) begin
         // Good VLAN frames
         if (tx_good_frame && tx_vlan_frame_reg)
            inc_vector[32]          <= !inc_vector[32];

      end
   end



   // Counter 33: "Pause frames transmitted OK" increment request
   //------------
   always @(posedge tx_clk)
   begin
      if (tx_reset)
         inc_vector[33]             <= 1'b0;

      else if (tx_stats_valid_pipe) begin
         // toggle whenever an update is required
         if (tx_pause_frame)
            inc_vector[33]          <= !inc_vector[33];

      end
   end








   //-------------------------------------------------------------------
   // Output the increment request bits (routed to the Statistic core).
   //-------------------------------------------------------------------
   assign increment_vector = inc_vector;




endmodule
