/*-------------------------------------------------------------------------------
-- Title      : Demo testbench
-- Project    : 10 Gigabit Ethernet MAC
-------------------------------------------------------------------------------
-- File       : demo_tb.v
-------------------------------------------------------------------------------
-- Description: This testbench will exercise the ports of the MAC core to
--              demonstrate the functionality.
-------------------------------------------------------------------------------
// (c) Copyright 2004-2014 Xilinx, Inc. All rights reserved.
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
-------------------------------------------------------------------------------
*/
//------------------------------------------------------------------------
/* -- This testbench performs the following operations on the MAC core:
--  - The clock divide register is set for MDIO operation.   */
//  - Flow control is disabled on both transmit and receive
/*  - The client XGMII port is wired as a loopback, so that transmitted frames
--    are then injected into the receiver.
--  - Four frames are pushed into the receiver. The first is a minimum
--    length frame, the second is slightly longer, the third has an error
--    asserted and the fourth frame only sends 21 bytes of data: the remainder 
--    of the data field is padded up to the minimum frame length i.e. 46 bytes.


--  - These frames are then looped back and sent out by the transmitter.
--  */
/*  - Four statistics counters are then read to verify correct operation: the
--    number of good transmitted frames, the number of transmit errors,
--    the number of good received frames and the number of errored received
--    frames.*/

`timescale 1ps / 1ps
module ten_gig_eth_mac_0_frame_typ;
   // This module abstracts the frame data for simpler manipulation
   reg      [31:0]                     data [0:31];
   reg      [3:0]                      ctrl [0:31];
   reg      [4:0]                      last_quad_data_column_index = 5'b0; // Holds the index value for the last full column
   reg                                 error;


   `define FRAME_TYP [32*32+32*4+5+1:1]

   reg      `FRAME_TYP                 bits;

   function `FRAME_TYP tobits;
      input dummy;
      begin
         bits                          = {data[ 0], data[ 1], data[ 2], data[ 3], data[ 4],
                                          data[ 5], data[ 6], data[ 7], data[ 8], data[ 9],
                                          data[10], data[11], data[12], data[13], data[14],
                                          data[15], data[16], data[17], data[18], data[19],
                                          data[20], data[21], data[22], data[23], data[24],
                                          data[25], data[26], data[27], data[28], data[29],
                                          data[30], data[31], ctrl[ 0], ctrl[ 1], ctrl[ 2],
                                          ctrl[ 3], ctrl[ 4], ctrl[ 5], ctrl[ 6], ctrl[ 7],
                                          ctrl[ 8], ctrl[ 9], ctrl[10], ctrl[11], ctrl[12],
                                          ctrl[13], ctrl[14], ctrl[15], ctrl[16], ctrl[17],
                                          ctrl[18], ctrl[19], ctrl[20], ctrl[21], ctrl[22],
                                          ctrl[23], ctrl[24], ctrl[25], ctrl[26], ctrl[27],
                                          ctrl[28], ctrl[29], ctrl[30], ctrl[31], 
                                          last_quad_data_column_index, error};
         tobits                        = bits;
      end
   endfunction // tobits

   task frombits;
      input `FRAME_TYP frame;
      begin
         bits                          = frame;
         {data[ 0], data[ 1], data[ 2], data[ 3], data[ 4], data[ 5],
          data[ 6], data[ 7], data[ 8], data[ 9], data[10], data[11],
          data[12], data[13], data[14], data[15], data[16], data[17],
          data[18], data[19], data[20], data[21], data[22], data[23],
          data[24], data[25], data[26], data[27], data[28], data[29],
          data[30], data[31], ctrl[ 0], ctrl[ 1], ctrl[ 2], ctrl[ 3],
          ctrl[ 4], ctrl[ 5], ctrl[ 6], ctrl[ 7], ctrl[ 8], ctrl[ 9],
          ctrl[10], ctrl[11], ctrl[12], ctrl[13], ctrl[14], ctrl[15],
          ctrl[16], ctrl[17], ctrl[18], ctrl[19], ctrl[20], ctrl[21],
          ctrl[22], ctrl[23], ctrl[24], ctrl[25], ctrl[26], ctrl[27],
          ctrl[28], ctrl[29], ctrl[30], ctrl[31], last_quad_data_column_index, error} = bits;
      end
   endtask // frombits
   
endmodule // ten_gig_eth_mac_0_frame_typ

`define MIN_FRAME_DATA_BYTES  60
`define OVERHEAD              18   // DA/SA (12) + L/T (2) + CRC (4)

// FRAME_GEN_MULTIPLIER constant determines the number of word blocks after DA/SA to be sent
// For instance if index of last complete ctrl column (eg. ctrl column[14] == 4'b1111) 
// then the block size is (14 + 1) - 3 = 12.
// That means that 12 * 4 = 48 bytes are contained in one block
// If FRAME_GEN_MULTIPLIER is set to 2 then 2*12*4 = 96 bytes are sent after DA/SA
// and the same 48 byte will be sent 2 times.
// In order to get correct frames through the TYPE/LENGTH field is to be set to 2*48 - 2 = 94 (0h5E) 
// in this case the general formula for LENGTH/TYPE field is as follows:
// [[(index of last complete ctrl column + 1) - 3] * 4 * FRAME_GEN_MULTIPLIER ]- 2 + 
// (0,1,2 or 3 depending from the value of the ctrl column after the last complete ctrl column)
// Note that this multiplier constant is applied to every frame inserted into RX therefore the L/T field 
// is to be set appropriately for every frame unless the frame is a control frame.
`define FRAME_GEN_MULTIPLIER  1

// The IN_BAND_FCS_PASSING global parameter controls whether this feature is disabled or enabled 
// in the core
`define IN_BAND_FCS_PASSING   0

module ten_gig_eth_mac_0_demo_tb;

//   localparam                        tb_mode = "BIST";
   localparam                          tb_mode = "DEMO";

   // Frame data....
   ten_gig_eth_mac_0_frame_typ frame0();
   ten_gig_eth_mac_0_frame_typ frame1();
   ten_gig_eth_mac_0_frame_typ frame2();
   ten_gig_eth_mac_0_frame_typ frame3();
   ten_gig_eth_mac_0_frame_typ pauseframe();


   ten_gig_eth_mac_0_frame_typ tx_monitor_working_frame();
   ten_gig_eth_mac_0_frame_typ rx_stimulus_working_frame();


   // Store the frame data etc....
   initial
   begin

      // In order to get correct frames through the TYPE/LENGTH  
      // field is to be set according to the following formula:
      // TYPE/LENGTH = [[(index of last complete ctrl column + 1) - 3] * 4 * FRAME_GEN_MULTIPLIER ]- 2 + 
      // (0,1,2 or 3 depending from the value of the ctrl column after the last complete ctrl column)    
      // TYPE/LENGTH field is the 16LSBs of column 3
        
      // Frame 0...
      frame0.data[0]                   = 32'h04030201;  
      frame0.data[1]                   = 32'h02020605;        
      frame0.data[2]                   = 32'h06050403;
      frame0.data[3]                   = 32'h55AA2E00;  // <---
      frame0.data[4]                   = 32'hAA55AA55;  //    |
      frame0.data[5]                   = 32'h55AA55AA;  //    |  This part of the frame is looped
      frame0.data[6]                   = 32'hAA55AA55;  //    |  if FRAME_GEN_MULTIPLIER is set to 
      frame0.data[7]                   = 32'h55AA55AA;  //    |  more than 1
      frame0.data[8]                   = 32'hAA55AA55;  //    |  
      frame0.data[9]                   = 32'h55AA55AA;  //    |
      frame0.data[10]                  = 32'hAA55AA55;  //    |
      frame0.data[11]                  = 32'h55AA55AA;  //    |
      frame0.data[12]                  = 32'hAA55AA55;  //    |
      frame0.data[13]                  = 32'h55AA55AA;  //    |
      frame0.data[14]                  = 32'hAA55AA55;  // <---
      frame0.data[15]                  = 32'h00000000;
      frame0.data[16]                  = 32'h00000000;
      frame0.data[17]                  = 32'h00000000;
      frame0.data[18]                  = 32'h00000000;
      frame0.data[19]                  = 32'h00000000;
      frame0.data[20]                  = 32'h00000000;
      frame0.data[21]                  = 32'h00000000;
      frame0.data[22]                  = 32'h00000000;
      frame0.data[23]                  = 32'h00000000;
      frame0.data[24]                  = 32'h00000000;
      frame0.data[25]                  = 32'h00000000;
      frame0.data[26]                  = 32'h00000000;
      frame0.data[27]                  = 32'h00000000;
      frame0.data[28]                  = 32'h00000000;
      frame0.data[29]                  = 32'h00000000;
      frame0.data[30]                  = 32'h00000000;
      frame0.data[31]                  = 32'h00000000;
      frame0.ctrl[0]                   = 4'b1111;
      frame0.ctrl[1]                   = 4'b1111;
      frame0.ctrl[2]                   = 4'b1111;
      frame0.ctrl[3]                   = 4'b1111;
      frame0.ctrl[4]                   = 4'b1111;
      frame0.ctrl[5]                   = 4'b1111;
      frame0.ctrl[6]                   = 4'b1111;
      frame0.ctrl[7]                   = 4'b1111;
      frame0.ctrl[8]                   = 4'b1111;
      frame0.ctrl[9]                   = 4'b1111;
      frame0.ctrl[10]                  = 4'b1111;
      frame0.ctrl[11]                  = 4'b1111;
      frame0.ctrl[12]                  = 4'b1111;
      frame0.ctrl[13]                  = 4'b1111;
      frame0.ctrl[14]                  = 4'b1111;
      frame0.ctrl[15]                  = 4'b0000;
      frame0.ctrl[16]                  = 4'b0000;
      frame0.ctrl[17]                  = 4'b0000;
      frame0.ctrl[18]                  = 4'b0000;
      frame0.ctrl[19]                  = 4'b0000;
      frame0.ctrl[20]                  = 4'b0000;
      frame0.ctrl[21]                  = 4'b0000;
      frame0.ctrl[22]                  = 4'b0000;
      frame0.ctrl[23]                  = 4'b0000;
      frame0.ctrl[24]                  = 4'b0000;
      frame0.ctrl[25]                  = 4'b0000;
      frame0.ctrl[26]                  = 4'b0000;
      frame0.ctrl[27]                  = 4'b0000;
      frame0.ctrl[28]                  = 4'b0000;
      frame0.ctrl[29]                  = 4'b0000;
      frame0.ctrl[30]                  = 4'b0000;
      frame0.ctrl[31]                  = 4'b0000;

      frame0.error                     = 1'b0;
  
      // Frame 1
      frame1.data[0]                   = 32'h03040506;
      frame1.data[1]                   = 32'h05060102;
      frame1.data[2]                   = 32'h02020304;  
      frame1.data[3]                   = 32'hEE110081;  // <---  
      frame1.data[4]                   = 32'h11EE11EE;  //    |  
      frame1.data[5]                   = 32'hEE11EE11;  //    |  
      frame1.data[6]                   = 32'h11EE11EE;  //    |   This part of the frame is looped
      frame1.data[7]                   = 32'hEE11EE11;  //    |   if FRAME_GEN_MULTIPLIER is set to 
      frame1.data[8]                   = 32'h11EE11EE;  //    |   more than 1
      frame1.data[9]                   = 32'hEE11EE11;  //    |
      frame1.data[10]                  = 32'h11EE11EE;  //    |
      frame1.data[11]                  = 32'hEE11EE11;  //    |
      frame1.data[12]                  = 32'h11EE11EE;  //    |
      frame1.data[13]                  = 32'hEE11EE11;  //    |
      frame1.data[14]                  = 32'h11EE11EE;  //    |
      frame1.data[15]                  = 32'hEE11EE11;  //    |
      frame1.data[16]                  = 32'h11EE11EE;  //    |
      frame1.data[17]                  = 32'hEE11EE11;  //    |
      frame1.data[18]                  = 32'h11EE11EE;  //    |
      frame1.data[19]                  = 32'hEE11EE11;  //    |
      frame1.data[20]                  = 32'h11EE11EE;  // <---
      frame1.data[21]                  = 32'h0000EE11;
      frame1.data[22]                  = 32'h00000000;
      frame1.data[23]                  = 32'h00000000;
      frame1.data[24]                  = 32'h00000000;
      frame1.data[25]                  = 32'h00000000;
      frame1.data[26]                  = 32'h00000000;
      frame1.data[27]                  = 32'h00000000;
      frame1.data[28]                  = 32'h00000000;
      frame1.data[29]                  = 32'h00000000;
      frame1.data[30]                  = 32'h00000000;
      frame1.data[31]                  = 32'h00000000;

      frame1.ctrl[0]                   = 4'b1111;
      frame1.ctrl[1]                   = 4'b1111;
      frame1.ctrl[2]                   = 4'b1111;
      frame1.ctrl[3]                   = 4'b1111;
      frame1.ctrl[4]                   = 4'b1111;
      frame1.ctrl[5]                   = 4'b1111;
      frame1.ctrl[6]                   = 4'b1111;
      frame1.ctrl[7]                   = 4'b1111;
      frame1.ctrl[8]                   = 4'b1111;
      frame1.ctrl[9]                   = 4'b1111;
      frame1.ctrl[10]                  = 4'b1111;
      frame1.ctrl[11]                  = 4'b1111;
      frame1.ctrl[12]                  = 4'b1111;
      frame1.ctrl[13]                  = 4'b1111;
      frame1.ctrl[14]                  = 4'b1111;
      frame1.ctrl[15]                  = 4'b1111;
      frame1.ctrl[16]                  = 4'b1111;
      frame1.ctrl[17]                  = 4'b1111;
      frame1.ctrl[18]                  = 4'b1111;
      frame1.ctrl[19]                  = 4'b1111;
      frame1.ctrl[20]                  = 4'b1111;
      frame1.ctrl[21]                  = 4'b0011;
      frame1.ctrl[22]                  = 4'b0000;
      frame1.ctrl[23]                  = 4'b0000;
      frame1.ctrl[24]                  = 4'b0000;
      frame1.ctrl[25]                  = 4'b0000;
      frame1.ctrl[26]                  = 4'b0000;
      frame1.ctrl[27]                  = 4'b0000;
      frame1.ctrl[28]                  = 4'b0000;
      frame1.ctrl[29]                  = 4'b0000;
      frame1.ctrl[30]                  = 4'b0000;
      frame1.ctrl[31]                  = 4'b0000;

      frame1.error                     = 1'b0;

      // Frame 2
      frame2.data[0]                   = 32'h04030201;
      frame2.data[1]                   = 32'h02020605;
      frame2.data[2]                   = 32'h06050403;
      frame2.data[3]                   = 32'h55AA2E80;
      frame2.data[4]                   = 32'hAA55AA55;
      frame2.data[5]                   = 32'h55AA55AA;
      frame2.data[6]                   = 32'hAA55AA55;
      frame2.data[7]                   = 32'h55AA55AA;
      frame2.data[8]                   = 32'hAA55AA55;  
      frame2.data[9]                   = 32'h55AA55AA;
      frame2.data[10]                  = 32'hAA55AA55;
      frame2.data[11]                  = 32'h55AA55AA;
      frame2.data[12]                  = 32'hAA55AA55;
      frame2.data[13]                  = 32'h55AA55AA;
      frame2.data[14]                  = 32'hAA55AA55;
      frame2.data[15]                  = 32'h55AA55AA;
      frame2.data[16]                  = 32'hAA55AA55;
      frame2.data[17]                  = 32'h55AA55AA;
      frame2.data[18]                  = 32'hAA55AA55;
      frame2.data[19]                  = 32'h55AA55AA;
      frame2.data[20]                  = 32'h00000000;  
      frame2.data[21]                  = 32'h00000000;
      frame2.data[22]                  = 32'h00000000;  
      frame2.data[23]                  = 32'h00000000;
      frame2.data[24]                  = 32'h00000000;
      frame2.data[25]                  = 32'h00000000;
      frame2.data[26]                  = 32'h00000000;
      frame2.data[27]                  = 32'h00000000;
      frame2.data[28]                  = 32'h00000000;
      frame2.data[29]                  = 32'h00000000;
      frame2.data[30]                  = 32'h00000000;
      frame2.data[31]                  = 32'h00000000;

      frame2.ctrl[0]                   = 4'b1111;
      frame2.ctrl[1]                   = 4'b1111;
      frame2.ctrl[2]                   = 4'b1111;
      frame2.ctrl[3]                   = 4'b1111;
      frame2.ctrl[4]                   = 4'b1111;
      frame2.ctrl[5]                   = 4'b1111;
      frame2.ctrl[6]                   = 4'b1111;
      frame2.ctrl[7]                   = 4'b1111;
      frame2.ctrl[8]                   = 4'b1111;
      frame2.ctrl[9]                   = 4'b1111;
      frame2.ctrl[10]                  = 4'b1111;
      frame2.ctrl[11]                  = 4'b1111;
      frame2.ctrl[12]                  = 4'b1111;
      frame2.ctrl[13]                  = 4'b1111;
      frame2.ctrl[14]                  = 4'b1111;
      frame2.ctrl[15]                  = 4'b1111;
      frame2.ctrl[16]                  = 4'b1111;
      frame2.ctrl[17]                  = 4'b1111;
      frame2.ctrl[18]                  = 4'b1111;
      frame2.ctrl[19]                  = 4'b1111;
      frame2.ctrl[20]                  = 4'b0000;
      frame2.ctrl[21]                  = 4'b0000;
      frame2.ctrl[22]                  = 4'b0000;
      frame2.ctrl[23]                  = 4'b0000;
      frame2.ctrl[24]                  = 4'b0000;
      frame2.ctrl[25]                  = 4'b0000;
      frame2.ctrl[26]                  = 4'b0000;
      frame2.ctrl[27]                  = 4'b0000;
      frame2.ctrl[28]                  = 4'b0000;
      frame2.ctrl[29]                  = 4'b0000;
      frame2.ctrl[30]                  = 4'b0000;
      frame2.ctrl[31]                  = 4'b0000;
      
      frame2.error                     = 1'b1;

 
      // Frame 3
      frame3.data[0]                   = 32'h03040506;
      frame3.data[1]                   = 32'h05060102;
      frame3.data[2]                   = 32'h02020304;  
      frame3.data[3]                   = 32'hEE111600;
      frame3.data[4]                   = 32'h11EE11EE;  
      frame3.data[5]                   = 32'hEE11EE11;
      frame3.data[6]                   = 32'h11EE11EE;  
      frame3.data[7]                   = 32'hEE11EE11;
      frame3.data[8]                   = 32'hCCEE11EE;
      frame3.data[9]                   = 32'h00000000;
      frame3.data[10]                  = 32'h00000000;
      frame3.data[11]                  = 32'h00000000;
      frame3.data[12]                  = 32'h00000000;
      frame3.data[13]                  = 32'h00000000;
      frame3.data[14]                  = 32'h00000000;
      frame3.data[15]                  = 32'h00000000;
      frame3.data[16]                  = 32'h00000000;
      frame3.data[17]                  = 32'h00000000;
      frame3.data[18]                  = 32'h00000000;
      frame3.data[19]                  = 32'h00000000;
      frame3.data[20]                  = 32'h00000000;
      frame3.data[21]                  = 32'h00000000;
      frame3.data[22]                  = 32'h00000000;
      frame3.data[23]                  = 32'h00000000;
      frame3.data[24]                  = 32'h00000000;
      frame3.data[25]                  = 32'h00000000;
      frame3.data[26]                  = 32'h00000000;
      frame3.data[27]                  = 32'h00000000;
      frame3.data[28]                  = 32'h00000000;
      frame3.data[29]                  = 32'h00000000;
      frame3.data[30]                  = 32'h00000000;
      frame3.data[31]                  = 32'h00000000;

      frame3.ctrl[0]                   = 4'b1111;
      frame3.ctrl[1]                   = 4'b1111;
      frame3.ctrl[2]                   = 4'b1111;
      frame3.ctrl[3]                   = 4'b1111;
      frame3.ctrl[4]                   = 4'b1111;
      frame3.ctrl[5]                   = 4'b1111;
      frame3.ctrl[6]                   = 4'b1111;
      frame3.ctrl[7]                   = 4'b1111;
      frame3.ctrl[8]                   = 4'b1111;
      frame3.ctrl[9]                   = 4'b1111;
      frame3.ctrl[10]                  = 4'b1111;
      frame3.ctrl[11]                  = 4'b1111;
      frame3.ctrl[12]                  = 4'b1111;
      frame3.ctrl[13]                  = 4'b1111;
      frame3.ctrl[14]                  = 4'b1111;
      frame3.ctrl[15]                  = 4'b0000;
      frame3.ctrl[16]                  = 4'b0000;
      frame3.ctrl[17]                  = 4'b0000;
      frame3.ctrl[18]                  = 4'b0000;
      frame3.ctrl[19]                  = 4'b0000;
      frame3.ctrl[20]                  = 4'b0000;
      frame3.ctrl[21]                  = 4'b0000;
      frame3.ctrl[22]                  = 4'b0000;
      frame3.ctrl[23]                  = 4'b0000;
      frame3.ctrl[24]                  = 4'b0000;
      frame3.ctrl[25]                  = 4'b0000;
      frame3.ctrl[26]                  = 4'b0000;
      frame3.ctrl[27]                  = 4'b0000;
      frame3.ctrl[28]                  = 4'b0000;
      frame3.ctrl[29]                  = 4'b0000;
      frame3.ctrl[30]                  = 4'b0000;
      frame3.ctrl[31]                  = 4'b0000;
      
      frame3.error                     = 1'b0;
      
      pauseframe.data[0]               = 32'h00000000;  
      pauseframe.data[1]               = 32'h80010000;        
      pauseframe.data[2]               = 32'h010000c2;
      pauseframe.data[3]               = 32'h01000888;
      pauseframe.data[4]               = 32'h0000cdab;
      pauseframe.data[5]               = 32'h00000000;
      pauseframe.data[6]               = 32'h00000000;
      pauseframe.data[7]               = 32'h00000000;
      pauseframe.data[8]               = 32'h00000000;
      pauseframe.data[9]               = 32'h00000000;
      pauseframe.data[10]              = 32'h00000000;
      pauseframe.data[11]              = 32'h00000000;
      pauseframe.data[12]              = 32'h00000000;
      pauseframe.data[13]              = 32'h00000000;
      pauseframe.data[14]              = 32'h00000000;
      pauseframe.data[15]              = 32'h00000000;
      pauseframe.data[16]              = 32'h00000000;
      pauseframe.data[17]              = 32'h00000000;
      pauseframe.data[18]              = 32'h00000000;
      pauseframe.data[19]              = 32'h00000000;
      pauseframe.data[20]              = 32'h00000000;
      pauseframe.data[21]              = 32'h00000000;
      pauseframe.data[22]              = 32'h00000000;
      pauseframe.data[23]              = 32'h00000000;
      pauseframe.data[24]              = 32'h00000000;
      pauseframe.data[25]              = 32'h00000000;
      pauseframe.data[26]              = 32'h00000000;
      pauseframe.data[27]              = 32'h00000000;
      pauseframe.data[28]              = 32'h00000000;
      pauseframe.data[29]              = 32'h00000000;
      pauseframe.data[30]              = 32'h00000000;
      pauseframe.data[31]              = 32'h00000000;
      pauseframe.ctrl[0]               = 4'b1111;
      pauseframe.ctrl[1]               = 4'b1111;
      pauseframe.ctrl[2]               = 4'b1111;
      pauseframe.ctrl[3]               = 4'b1111;
      pauseframe.ctrl[4]               = 4'b1111;
      pauseframe.ctrl[5]               = 4'b1111;
      pauseframe.ctrl[6]               = 4'b1111;
      pauseframe.ctrl[7]               = 4'b1111;
      pauseframe.ctrl[8]               = 4'b1111;
      pauseframe.ctrl[9]               = 4'b1111;
      pauseframe.ctrl[10]              = 4'b1111;
      pauseframe.ctrl[11]              = 4'b1111;
      pauseframe.ctrl[12]              = 4'b1111;
      pauseframe.ctrl[13]              = 4'b1111;
      pauseframe.ctrl[14]              = 4'b1111;
      pauseframe.ctrl[15]              = 4'b0000;
      pauseframe.ctrl[16]              = 4'b0000;
      pauseframe.ctrl[17]              = 4'b0000;
      pauseframe.ctrl[18]              = 4'b0000;
      pauseframe.ctrl[19]              = 4'b0000;
      pauseframe.ctrl[20]              = 4'b0000;
      pauseframe.ctrl[21]              = 4'b0000;
      pauseframe.ctrl[22]              = 4'b0000;
      pauseframe.ctrl[23]              = 4'b0000;
      pauseframe.ctrl[24]              = 4'b0000;
      pauseframe.ctrl[25]              = 4'b0000;
      pauseframe.ctrl[26]              = 4'b0000;
      pauseframe.ctrl[27]              = 4'b0000;
      pauseframe.ctrl[28]              = 4'b0000;
      pauseframe.ctrl[29]              = 4'b0000;
      pauseframe.ctrl[30]              = 4'b0000;
      pauseframe.ctrl[31]              = 4'b0000;
      
      pauseframe.error                 = 1'b0;
   end  // initial

   // DUT signals
   reg                                 reset; 
   wire                                aresetn;
   wire                                address_swap_disable;

   wire                                tx_statistics_vector;
   //client receiver signals
   wire                                rx_statistics_vector;

 
   wire                                mdc;
   reg                                 mdio_in ;
   wire                                mdio_out;
   wire                                mdio_tri;
   reg                                 s_axi_aclk;
   reg                                 gtx_clk;
   wire                                xgmii_tx_clk;
   wire     [63:0]                     xgmii_txd;
   wire     [7 :0]                     xgmii_txc;
   reg                                 xgmii_rx_clk_tb;
   wire                                xgmii_rx_clk;
   reg      [63:0]                     xgmii_rxd_tb;
   reg      [7 :0]                     xgmii_rxc_tb;
   wire     [63:0]                     xgmii_rxd;
   wire     [7 :0]                     xgmii_rxc;

   reg      [4:0]                      current_last_quad_data_column_index = 5'b0;

   reg                                 tx_monitor_finished;
   wire                                rx_monitor_finished;
   reg                                 tx_monitor_errors;
   reg                                 configuration_finished;
   reg                                 management_finished;
   reg                                 management_errors;
   wire                                simulation_errors;
   wire                                simulation_finished;
  
   reg      [3:0]                      gen_active_count = 0;
   reg      [3:0]                      check_active_count = 0;
   wire                                gen_active_flash;
   wire                                check_active_flash;
   wire                                frame_error;
   wire                                stats_fail;
   reg                                 read_stats = 0;
   reg                                 enable_bist;
   reg                                 pause_req = 0;

   assign rx_monitor_finished          = 1;

   //--------------------------------------------------------------------
   // CRC engine
   //--------------------------------------------------------------------
   task calc_crc;
      input [2 :0]                     size;
      input [31:0]                     data_in;
      inout [31:0]                     fcs;
      
      reg   [31:0]                     crc;
      reg                              crc_feedback;
      
      reg   [7:0]                      data [0:3];
      integer                          I,J;
   begin
      data[0]                          = data_in[7:0];
      data[1]                          = data_in[15:8];
      data[2]                          = data_in[23:16];
      data[3]                          = data_in[31:24];
      
      crc = ~ fcs;
      for (J = 0; J < size; J = J + 1) 
      begin
         for (I = 0; I < 8; I = I + 1)
         begin
            crc_feedback               = crc[0] ^ data[J][I];
      
            crc[0]                     = crc[1];
            crc[1]                     = crc[2];
            crc[2]                     = crc[3];
            crc[3]                     = crc[4];
            crc[4]                     = crc[5];
            crc[5]                     = crc[6]  ^ crc_feedback;
            crc[6]                     = crc[7];
            crc[7]                     = crc[8];
            crc[8]                     = crc[9]  ^ crc_feedback;
            crc[9]                     = crc[10] ^ crc_feedback;
            crc[10]                    = crc[11];
            crc[11]                    = crc[12];
            crc[12]                    = crc[13];
            crc[13]                    = crc[14];
            crc[14]                    = crc[15];
            crc[15]                    = crc[16] ^ crc_feedback;
            crc[16]                    = crc[17];
            crc[17]                    = crc[18];
            crc[18]                    = crc[19];
            crc[19]                    = crc[20] ^ crc_feedback;
            crc[20]                    = crc[21] ^ crc_feedback;
            crc[21]                    = crc[22] ^ crc_feedback;
            crc[22]                    = crc[23];
            crc[23]                    = crc[24] ^ crc_feedback;
            crc[24]                    = crc[25] ^ crc_feedback;
            crc[25]                    = crc[26];
            crc[26]                    = crc[27] ^ crc_feedback;
            crc[27]                    = crc[28] ^ crc_feedback;
            crc[28]                    = crc[29];
            crc[29]                    = crc[30] ^ crc_feedback;
            crc[30]                    = crc[31] ^ crc_feedback;
            crc[31]                    = crc_feedback;
         end
      end
      fcs                              = ~ crc;
   end
   endtask // calc_crc
  
//----------------------------

   /*---------------------------------------------------------------------------
   -- wire up Device Under Test
   ---------------------------------------------------------------------------*/
   ten_gig_eth_mac_0_example_design dut (
      .reset                           (reset),
      .tx_axis_aresetn                 (aresetn),
      .address_swap_disable            (address_swap_disable),
      //.tx_clk                        (tx_clk),
      .tx_statistics_vector            (tx_statistics_vector),
      //.rx_clk                        (rx_clk),
      .rx_axis_aresetn                 (aresetn),
      .rx_statistics_vector            (rx_statistics_vector),
      .reset_error                     (1'b0),
      .insert_error                    (1'b0),
      .enable_pat_gen                  (enable_bist),
      .enable_pat_check                (enable_bist),

      .gen_active_flash                (gen_active_flash),
      .check_active_flash              (check_active_flash),
      .frame_error                     (frame_error),
      
      .pause_req                       (pause_req),
    
      .s_axi_aclk                      (s_axi_aclk),
      .s_axi_aresetn                   (aresetn),
      .read_stats                      (read_stats),   
      .stats_fail                      (stats_fail),      
      .mdc                             (mdc),
      .mdio_in                         (mdio_in),
      .mdio_out                        (mdio_out),
      .mdio_tri                        (mdio_tri),

      .gtx_clk                         (gtx_clk),
      .xgmii_tx_clk                    (xgmii_tx_clk),
      .xgmii_txd                       (xgmii_txd),
      .xgmii_txc                       (xgmii_txc),
      .xgmii_rx_clk                    (xgmii_rx_clk),
      .xgmii_rxd                       (xgmii_rxd),
      .xgmii_rxc                       (xgmii_rxc)
   );
   
   generate
   if (tb_mode == "DEMO") begin
      assign xgmii_rxd                 = xgmii_rxd_tb;
      assign xgmii_rxc                 = xgmii_rxc_tb;
      assign xgmii_rx_clk              = xgmii_rx_clk_tb;
   end
   else begin
      // loopback tx to rx
      assign xgmii_rxd                 = xgmii_txd;
      assign xgmii_rxc                 = xgmii_txc;
      assign xgmii_rx_clk              = xgmii_tx_clk;
   end
   endgenerate
   

   assign aresetn                      = ~reset;

   assign address_swap_disable         = (`IN_BAND_FCS_PASSING == 1) ? 1: 0;
   
   /*---------------------------------------------------------------------------
   -- Clock drivers
   ---------------------------------------------------------------------------*/
   initial                                // drives GTX_CLK at 156.25 MHz
   begin
      gtx_clk                          <= 0;
      forever begin
         #3200;                             // 156.25 MHz GTX_CLK
         gtx_clk                       <= 1;
         #3200;
         gtx_clk                       <= 0;
      end
   end

   initial
   begin
      xgmii_rx_clk_tb                  <= 0;
      #1000;
      forever begin
         #3200;
         xgmii_rx_clk_tb               <= 1;
         #3200;
         xgmii_rx_clk_tb               <= 0;
      end
   end // initial begin

 
   initial                               // drives s_axi_aclk at 156.25 MHz
   begin
      s_axi_aclk                       <= 0;
      #2000;
      forever begin
         #3200;                          // 156.25 MHz s_axi_aclk
         s_axi_aclk                    <= 1;
         #3200;
         s_axi_aclk                    <= 0;
      end
   end


   /*---------------------------------------------------------------------
    * TX Monitor process. This process checks the data coming out of the
    * transmitter to make sure that it matches that inserted into the 
    * transmitter.
    */

   task tx_monitor_get_next_column;
      output   [31:0]                  d;
      output   [ 3:0]                  c;
      reg   [31:0]                     cached_column_data;
      reg   [ 3:0]                     cached_column_ctrl;
      reg                              cached_column_valid;
   begin
      if (cached_column_valid) begin // depends on being 'x' first time round
         d                             = cached_column_data;
         c                             = cached_column_ctrl;
         cached_column_valid           = 0;
      end
      else begin // (!cached_column_valid)
         @(negedge xgmii_tx_clk)
         d                             = xgmii_txd[31:0];
         c                             = xgmii_txc[3:0];
         cached_column_data            = xgmii_txd[63:32];
         cached_column_ctrl            = xgmii_txc[7:4];
         cached_column_valid           = 1;
      end // (!cached_column_valid)
   end
   endtask // tx_monitor_get_next_column

   task tx_monitor_check_frame;
      input `FRAME_TYP                 frame;
      reg   [31:0]                     d, delayed_data;
      reg   [31:0]                     column_data_a, column_data_b;
      reg   [3 :0]                     c;
      reg   [31:0]                     fcs;
      reg   [15:0]                     frame_length;
      reg   [15:0]                     length_decrement;
      integer                          column_index;
      
   begin
      fcs                              = 32'b0;
      delayed_data                     = 32'b0;
      tx_monitor_working_frame.frombits(frame);
      // If there was an error (error) in the frame injected into the
      // receiver then it will not appear on the transmitted output, so 
      // don't look for it.
      if (tx_monitor_working_frame.error === 1'b1)
         disable                       tx_monitor_check_frame;
      d                                = 32'h00000000;
      c                                = 4'b0000;
      while (!(d[7:0] === 8'hFB && c[0] === 1'b1))
         tx_monitor_get_next_column(d, c);
      // Skip rest of preamble
      tx_monitor_get_next_column(d, c);
      tx_monitor_get_next_column(d, c);
      column_index                     = 0;
      frame_length                     = {tx_monitor_working_frame.data[3][7:0],
                                          tx_monitor_working_frame.data[3][15:8]};
      // if a control frame then force last quad value and size                                    
      if (frame_length === 16'h8808) begin
         frame_length                  = 60-14;
         tx_monitor_working_frame.last_quad_data_column_index = 14;
      end
      length_decrement                 = frame_length + 2'd2;  // 2 is added to include the L/T field itself 
           
      while (c === 4'b0000 & column_index <= 2) begin 
         if (column_index == 0 && address_swap_disable == 0) begin
            column_data_a              = tx_monitor_working_frame.data[column_index+2];
            column_data_b              = tx_monitor_working_frame.data[column_index+1];
            if (d !== {column_data_a[15:0], column_data_b[31:16]}) begin
               $display("ERROR: Transmit fail: data mismatch at PHY interface");
               tx_monitor_errors       = 1;
               disable                 tx_monitor_check_frame; 
            end 
         end // if (column_index = 0)
         else if (column_index == 1 && address_swap_disable == 0) begin
            column_data_a              = tx_monitor_working_frame.data[column_index-1];
            column_data_b              = tx_monitor_working_frame.data[column_index+1];
            if (d !== {column_data_a[15:0], column_data_b[31:16]}) begin
               $display("ERROR: Transmit fail: data mismatch at PHY interface");
               tx_monitor_errors       = 1;
               disable                 tx_monitor_check_frame;
            end
         end // if (column_index = 1)
         else if (column_index == 2 && address_swap_disable == 0) begin
            column_data_a              = tx_monitor_working_frame.data[column_index-1];
            column_data_b              = tx_monitor_working_frame.data[column_index-2];
            if (d !== {column_data_a[15:0], column_data_b[31:16]}) begin
               $display("ERROR: Transmit fail: data mismatch at PHY interface");
               tx_monitor_errors       = 1;
               disable                 tx_monitor_check_frame;
            end
         end // if (column_index = 2)
         if (column_index > 0) begin
            calc_crc(4,delayed_data, fcs);
         end
         delayed_data                  = d;
         column_index                  = column_index + 1;
         tx_monitor_get_next_column(d,c);
      end 
      if (frame_length >= `MIN_FRAME_DATA_BYTES - `OVERHEAD) begin // no padding is done by the core
         while (c === 4'b0000) begin
            if (column_index !== 3) begin   // to avoid duplicated address swap check 
               if (delayed_data !== tx_monitor_working_frame.data[column_index-1]) begin
                  $display("ERROR: Transmit fail: data mismatch at PHY interface here");
                  tx_monitor_errors    = 1;
                  disable              tx_monitor_check_frame;
               end 
            end 
            calc_crc(4,delayed_data, fcs);  
            delayed_data               = d;
            tx_monitor_get_next_column(d,c);      
            if (column_index >= tx_monitor_working_frame.last_quad_data_column_index) begin
               if (delayed_data !== tx_monitor_working_frame.data[column_index]) begin
                  $display("ERROR: Transmit fail: data mismatch at PHY interface");
                  tx_monitor_errors    = 1;
                  disable              tx_monitor_check_frame;
               end
                column_index           = 3;
            end
            else begin
               column_index            = column_index + 1;
            end
         end 
      end 
      else begin // if (frame_length < `MIN_FRAME_DATA_BYTES - `OVERHEAD) 0 padding is inserted by the core on tx 
         while (c === 4'b0000 && length_decrement >= 4) begin
            if (column_index !== 3) begin   // to avoid duplicated address swap check 
               if (delayed_data !== tx_monitor_working_frame.data[column_index-1]) begin
                  $display("ERROR: Transmit fail: data mismatch at PHY interface");
                  tx_monitor_errors    = 1;
                  disable              tx_monitor_check_frame;
               end
            end
            if (length_decrement == 4) begin
               if (d !== tx_monitor_working_frame.data[column_index]) begin
                  $display("ERROR: Transmit fail: data mismatch at PHY interface");
                  tx_monitor_errors    = 1;
                  disable              tx_monitor_check_frame;
               end
               column_index            = 3;
            end
            calc_crc(4,delayed_data, fcs);  
            delayed_data               = d;
            if (column_index >= tx_monitor_working_frame.last_quad_data_column_index) begin
               if (d !== tx_monitor_working_frame.data[column_index]) begin
                  $display("ERROR: Transmit fail: data mismatch at PHY interface");
                  tx_monitor_errors    = 1;
                  disable              tx_monitor_check_frame;
               end
               column_index            = 3;
            end
            else begin
               column_index            = column_index + 1;
            end
            tx_monitor_get_next_column(d,c);
            length_decrement = length_decrement - 4;                                                             
         end 
         if (c === 4'b0000 && length_decrement <= 3 && length_decrement !== 0) begin
            if (length_decrement == 3) begin
               if (delayed_data !== tx_monitor_working_frame.data[column_index-1]) begin
                  $display("ERROR: Transmit fail: data mismatch at PHY interface");
                  tx_monitor_errors    = 1;
                  disable              tx_monitor_check_frame;
               end
               if (d[23:0] !== tx_monitor_working_frame.data[column_index][23:0]) begin
                  $display("ERROR: Transmit fail: data mismatch at PHY interface");
                  tx_monitor_errors    = 1;
                  disable              tx_monitor_check_frame;
               end
               calc_crc(4,delayed_data,fcs);
               delayed_data            = d;
               column_index            = column_index + 1;
               tx_monitor_get_next_column(d,c);
               length_decrement        = 0;
            end 
            else if (length_decrement == 2) begin
               if (delayed_data !== tx_monitor_working_frame.data[column_index-1]) begin
                  $display("ERROR: Transmit fail: data mismatch at PHY interface");
                  tx_monitor_errors    = 1;
                  disable              tx_monitor_check_frame;
               end
               if (d[15:0] !== tx_monitor_working_frame.data[column_index][15:0]) begin
                  $display("ERROR: Transmit fail: data mismatch at PHY interface");
                  tx_monitor_errors    = 1;
                  disable              tx_monitor_check_frame;
               end
               calc_crc(4,delayed_data,fcs);
               delayed_data            = d;
               column_index            = column_index + 1;
               tx_monitor_get_next_column(d,c);
               length_decrement        = 0;
            end 
            else if (length_decrement == 1) begin
               if (delayed_data !== tx_monitor_working_frame.data[column_index-1]) begin
                  $display("ERROR: Transmit fail: data mismatch at PHY interface");
                  tx_monitor_errors    = 1;
                  disable              tx_monitor_check_frame;
               end
               if (d[7:0] !== tx_monitor_working_frame.data[column_index][7:0]) begin
                  $display("ERROR: Transmit fail: data mismatch at PHY interface");
                  tx_monitor_errors    = 1;
                  disable              tx_monitor_check_frame;
               end
               calc_crc(4,delayed_data,fcs);
               delayed_data            = d;
               column_index            = column_index + 1;
               tx_monitor_get_next_column(d,c);
               length_decrement        = 0;
            end
         end
         while (c == 4'b0000 && length_decrement == 0) begin
            calc_crc(4,delayed_data, fcs);   
            delayed_data               = d;
            tx_monitor_get_next_column(d,c);
         end
      end  
      if (c == 4'b1000) begin
         if (delayed_data[23:0] !== tx_monitor_working_frame.data[tx_monitor_working_frame.last_quad_data_column_index + 1][23:0]) begin
            $display("ERROR: Transmit fail: data mismatch at PHY interface");
            tx_monitor_errors          = 1;
            disable                    tx_monitor_check_frame;
         end
         calc_crc(3,delayed_data[23:0], fcs);    // data
         calc_crc(1,~delayed_data[31:24], fcs);  // CRC
         calc_crc(3,~d[23:0], fcs);
      end
      else if (c == 4'b1100) begin
         if (delayed_data[15:0] !== tx_monitor_working_frame.data[tx_monitor_working_frame.last_quad_data_column_index + 1][15:0])begin
            $display("ERROR: Transmit fail: data mismatch at PHY interface");
            tx_monitor_errors          = 1;
            disable                    tx_monitor_check_frame;
         end 
         calc_crc(2,delayed_data[15:0], fcs);     // data
         calc_crc(2,~delayed_data[31:16], fcs);   // CRC
         calc_crc(2,~d[15:0], fcs);               // CRC
      end
      else if (c == 4'b1110) begin
         if (delayed_data[7:0] !== tx_monitor_working_frame.data[tx_monitor_working_frame.last_quad_data_column_index + 1][7:0])begin 
            $display("ERROR: Transmit fail: data mismatch at PHY interface");
            tx_monitor_errors          = 1;
            disable                    tx_monitor_check_frame;
         end
         calc_crc(1,delayed_data[7:0], fcs);      // data
         calc_crc(3,~delayed_data[31:8], fcs);    // CRC
         calc_crc(1,~d[7:0], fcs);                // CRC
      end
      else if (c == 4'b1111) begin
         calc_crc(4,~delayed_data[31:0], fcs);  // CRC only
      end
      if (fcs !== 32'hffffffff) begin
         $display("ERROR: Transmit fail: CRC mismatch at PHY interface");
         tx_monitor_errors = 1;
      end
      $display("Transmitter: Frame completed at PHY interface"); 
   end
   endtask // tx_monitor_check_frame

   // TX Monitor process
   initial
   begin : p_tx_monitor
      tx_monitor_finished              = 0;
      tx_monitor_errors                = 0;
      if (tb_mode == "DEMO") begin
         wait(frame0.last_quad_data_column_index != 0);

         tx_monitor_check_frame(frame0.tobits(0));
         tx_monitor_check_frame(frame1.tobits(0));
         tx_monitor_check_frame(frame2.tobits(0));
         tx_monitor_check_frame(frame3.tobits(0));
      end
      tx_monitor_finished              = 1;
      if (tb_mode == "DEMO") begin
         // should see a pause frame after monitor finished - need to check content
         // this is a hard coded frame so can use a very simple monitor
         tx_monitor_check_frame(pauseframe.tobits(0));
      end
   end

    
   
   /* RX Stimulus process - insert frames into the PHY side of the 
    * receiver
    */

   task rx_stimulus_send_column;
      input [31:0]                     d;
      input [ 3:0]                     c;
      reg   [31:0]                     cached_column_data;
      reg   [ 3:0]                     cached_column_ctrl;
      reg                              cached_column_valid;
   begin
      if (cached_column_valid) begin
         @(posedge xgmii_rx_clk_tb);
         #3400;
         xgmii_rxd_tb[31: 0]           <= cached_column_data;
         xgmii_rxc_tb[ 3: 0]           <= cached_column_ctrl;
         xgmii_rxd_tb[63:32]           <= d;
         xgmii_rxc_tb[ 7: 4]           <= c;
         cached_column_valid           = 0;
      end
      else begin
         cached_column_data            = d;
         cached_column_ctrl            = c;
         cached_column_valid           = 1;
      end
   end
   endtask // rx_stimulus_send_column

   task rx_stimulus_send_idle;
   begin
      rx_stimulus_send_column(32'h07070707,4'b1111);
   end
   endtask // rx_stimulus_send_idle
   
   task rx_stimulus_send_frame;
      input `FRAME_TYP                 frame;
      integer                          column_index, lane_index, byte_count, I, J;
      integer                          data_block_index;
      reg   [31:0]                     scratch_column_data, current_column_data;
      reg   [3 :0]                     scratch_column_ctrl, current_column_ctrl;
      reg   [7 :0]                     code_temp;
      
      reg   [31:0]                     fcs,rx_crc; 
      
   begin
      rx_stimulus_working_frame.frombits(frame);
         
      column_index                     = 0;
      lane_index                       = 0;
      byte_count                       = 0;
               
      fcs                              = 32'b0;
      rx_crc                           = 32'b0;
       
      // send preamble
      rx_stimulus_send_column(32'h555555FB, 4'b0001);
      rx_stimulus_send_column(32'hD5555555, 4'b0000);
      // send complete columns and calculate CRC
      while (rx_stimulus_working_frame.ctrl[column_index] === 4'b1111 & column_index <= 2) begin
         rx_stimulus_send_column(rx_stimulus_working_frame.data[column_index], 4'b0000);
         calc_crc(4,rx_stimulus_working_frame.data[column_index], fcs);
         
         column_index                  = column_index + 1;
         byte_count                    = byte_count + 4;
      end
      // send 32-bit data word blocks after DA/SA
      // eg. if ctrl column[14] == 4'b1111 then the block size is (14 + 1) - 3 = 12
      // that means that 12 * 4 = 48 bytes are contained in one block
      // If `FRAME_GEN_MULTIPLIER is set to 2 then 2*12*4 = 96 bytes are sent after DA/SA
      // and the same 48 byte will be sent 2 times.
      // In order to get correct frames through the TYPE/LENGTH field is to be set to 94 in this case
      // the general formula for LENGTH/TYPE field is as follows:
      // [[(index of last complete ctrl column + 1) - 3] * 4 * FRAME_GEN_MULTIPLIER ]- 2 + 
      // (0,1,2 or 3 depending from the value of the ctrl column after the last complete ctrl column)
      for (data_block_index = 0; data_block_index < `FRAME_GEN_MULTIPLIER; data_block_index = data_block_index + 1) begin 
         column_index                  = 3;
         while (rx_stimulus_working_frame.ctrl[column_index] === 4'b1111) begin
            rx_stimulus_send_column(rx_stimulus_working_frame.data[column_index],4'b0000);
            calc_crc(4,rx_stimulus_working_frame.data[column_index], fcs);
            column_index               = column_index + 1;
            byte_count                 = byte_count + 4;
         end
      end
      current_last_quad_data_column_index = column_index - 1;
         
      // calculate CRC for partial columns 
      if (rx_stimulus_working_frame.ctrl[column_index] === 4'b0111 ) begin
         calc_crc(3,rx_stimulus_working_frame.data[column_index], fcs);
      end
      else if (rx_stimulus_working_frame.ctrl[column_index] === 4'b0011 ) begin
         calc_crc(2,rx_stimulus_working_frame.data[column_index], fcs);
      end
      else if (rx_stimulus_working_frame.ctrl[column_index] === 4'b0001 ) begin
         calc_crc(1,rx_stimulus_working_frame.data[column_index], fcs);
      end
         
      // send DATA bytes that are in last partial column
      current_column_data              = rx_stimulus_working_frame.data[column_index];
      current_column_ctrl              = rx_stimulus_working_frame.ctrl[column_index];
      while (current_column_ctrl[lane_index]) begin
         for (J = 0; J < 8; J = J + 1)
            scratch_column_data[lane_index*8+J] = current_column_data[lane_index*8+J];
         scratch_column_ctrl[lane_index] = 0;
         lane_index                    = lane_index + 1;
         byte_count                    = byte_count + 1;
      end
      
      // reorder crc format          
      rx_crc                           = {fcs[7:0],fcs[15:8],fcs[23:16],fcs[31:24]};
       
      // send the CRC
      for (I = 3; I >= 0; I = I - 1) begin
         if (lane_index == 4) begin
            rx_stimulus_send_column(scratch_column_data,
                                    scratch_column_ctrl);
            lane_index                 = 0;
         end
         for (J = 0; J < 8; J = J + 1)
            scratch_column_data[lane_index*8+J] = rx_crc[I*8+J];
         scratch_column_ctrl           = 0;
         lane_index                    = lane_index + 1;
      end // for (I = 3; I >= 0; I = I - 1)
      // send the terminate/error column
      if (lane_index == 4) begin
         rx_stimulus_send_column(scratch_column_data,
                                 scratch_column_ctrl);
         lane_index                    = 0;
      end
      // send an /E/ if error, /T/ if not
      code_temp                        = rx_stimulus_working_frame.error ? 8'hFE : 8'hFD;
      for (J = 0; J < 8; J = J + 1)
         scratch_column_data[lane_index*8+J] = code_temp[J];
      scratch_column_ctrl[lane_index]  = 1;
      
      lane_index                       = lane_index + 1;
      while (lane_index < 4) begin
         code_temp                     = 8'h07;
         for (J = 0; J < 8; J = J + 1)
            scratch_column_data[lane_index*8+J] = code_temp[J];
         scratch_column_ctrl[lane_index] = 1;
         lane_index                    = lane_index + 1;
      end
      rx_stimulus_send_column(scratch_column_data,
                              scratch_column_ctrl);
      $display("Receiver: frame inserted into PHY interface");
   end
   endtask // rx_stimulus_send_frame

   initial
   begin : p_rx_stimulus
      integer I;
      if (tb_mode == "DEMO") begin
         $display("Timing checks are not valid");
         while (reset !== 0)
            rx_stimulus_send_idle;
         for (I = 0; I < 175; I = I + 1)
            rx_stimulus_send_idle;
         while (!configuration_finished)
            rx_stimulus_send_idle;
         $display("Timing checks are valid");
         rx_stimulus_send_frame(frame0.tobits(0));
         frame0.last_quad_data_column_index = current_last_quad_data_column_index;
      
         rx_stimulus_send_idle;
         rx_stimulus_send_idle;
         rx_stimulus_send_frame(frame1.tobits(0));
         frame1.last_quad_data_column_index = current_last_quad_data_column_index;
      
         rx_stimulus_send_idle;
         rx_stimulus_send_idle;
         rx_stimulus_send_frame(frame2.tobits(0));
         frame2.last_quad_data_column_index = current_last_quad_data_column_index;
      
         rx_stimulus_send_idle;
         rx_stimulus_send_idle;
         rx_stimulus_send_frame(frame3.tobits(0));
         frame3.last_quad_data_column_index = current_last_quad_data_column_index;
      
         while (1)
            rx_stimulus_send_idle;
      end
   end // block: p_rx_stimulus

   // Management interface process
   initial
   begin : p_management
      integer I;
      configuration_finished           = 0;
      management_finished              = 0;
      mdio_in                          = 1'b1;
      pause_req                        = 1'b0;
      @(negedge reset);
      $display("Waiting for DCMs to obtain lock...");
      #1000000;
      configuration_finished           = 1;

      // WAit for TX and RX to finish
      wait (tx_monitor_finished == 1 && rx_monitor_finished == 1);
      /*-----------------------------------------------------------------
       -- Reading statistics
       ------------------------------------------------------------------*/
      // allow the statistic counters to complete updating
      #420000;
      if (tb_mode == "DEMO")
         read_stats                    = 1;
      #1000000;

      if (tb_mode == "DEMO") begin
         $display("Requesting an 802.3 Pause frame...");
         pause_req                     = 1'b1;
         #10000;
         pause_req                     = 1'b0;
         #100000;
      end

      management_finished = 1;
   end

   // reset process
   initial
   begin
      if (tb_mode == "DEMO")
         enable_bist                   = 1'b0;
      else
         enable_bist                   = 1'b1;
      
      $display("Resetting the core...");
      reset                            <= 1;
      #200000;
      reset                            <= 0;
   end

   // Simulation control and end-of-test checking
   assign simulation_finished =
      tx_monitor_finished & rx_monitor_finished & management_finished;
   assign simulation_errors =
      tx_monitor_errors | management_errors | stats_fail;

   initial
   begin
      if (tb_mode == "DEMO") begin             
         fork: sim_in_progress
            @(posedge simulation_finished) disable sim_in_progress;
            #10000000                     disable sim_in_progress;
         join
      end 
      else begin
         #10000000;
      end
      if (simulation_finished && (tb_mode == "DEMO")) begin
         if (simulation_errors) begin
            $display("** Test completed with errors");
         end
         else begin
            $display("** Test completed successfully");
         end
      end
      else begin
         if (tb_mode == "DEMO") begin             
            $display("** ERROR: Testbench timed out");
         end
         else begin
            // if the tb is in BIST mode then we do not time out - however we do check the 
            // flash outputs have both toggled and that no frame errors were found
            if ((gen_active_count == 0) || (check_active_count == 0) || frame_error) begin
               $display("** Test completed with errors");
            end
            else begin
               $display("** Test completed successfully");
            end
         end
      end
      $stop;
   end // initial begin
     
   always @(posedge gen_active_flash)
   begin
      // only want to count to 15
      if (!(&gen_active_count))
         gen_active_count              <= gen_active_count + 1;
   end
   
   always @(posedge check_active_flash)
   begin
      // only want to count to 15
      if (!(&check_active_count))
         check_active_count            <= check_active_count + 1;
   end

endmodule
