// ------------------------------------------------------------------------------
// (c) Copyright 2014 Xilinx, Inc. All rights reserved.
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
// ------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// Title      : AXI Lite configuration state machine
// Project    : 10 Gig Ethernet MAC FIFO Reference Design
//------------------------------------------------------------------------------
// File       : ten_gig_eth_mac_0_axi_lite_sm.v
// Author     : Xilinx Inc.
// -----------------------------------------------------------------------------
// Description:  This module is reponsible for bringing up the XGMAC
//               to enable basic packet transfer in both directions.
//
//---------------------------------------------------------------------------------------------

`timescale 1 ps/1 ps

(* dont_touch = "yes" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ten_gig_eth_mac_0_axi_lite_sm (
   input                               s_axi_aclk,
   input                               s_axi_resetn,

   input                               enable_vlan,
   input                               enable_custom_preamble,
   
   input                               read_stats,
   output reg                          stats_fail = 0,
         
   input                               enable_pat_gen,
   output reg                          enable_gen = 0,

   output reg  [10:0]                  s_axi_awaddr = 0,
   output reg                          s_axi_awvalid = 0,
   input                               s_axi_awready,

   output reg  [31:0]                  s_axi_wdata = 0,
   output reg                          s_axi_wvalid = 0,
   input                               s_axi_wready,

   input       [1:0]                   s_axi_bresp,
   input                               s_axi_bvalid,
   output reg                          s_axi_bready = 0,

   output reg  [10:0]                  s_axi_araddr = 0,
   output reg                          s_axi_arvalid = 0,
   input                               s_axi_arready,

   input       [31:0]                  s_axi_rdata,
   input       [1:0]                   s_axi_rresp,
   input                               s_axi_rvalid,
   output reg                          s_axi_rready = 0
); 
  
  // Main state machine
  localparam  STARTUP                  = 0,
              RESET_MAC_TX             = 1,
              RESET_MAC_RX             = 2,
              CONFIG_DONE              = 3,
              UPPER_TX_OK              = 4,
              CHECK_TX_OK              = 5,
              UPPER_TX_UNDERRUN        = 6,
              CHECK_TX_UNDERRUN        = 7,
              UPPER_RX_OK              = 8,
              CHECK_RX_OK              = 9,
              UPPER_RX_FCS_ERR         = 10, 
              CHECK_RX_FCS_ERR         = 11;
  
  // AXI State Machine
  localparam  IDLE                     = 0,
              READ                     = 1,
              WRITE                    = 2,
              DONE                     = 3;
  
  
  
  // Management configuration register address     (0x500)
  localparam CONFIG_MANAGEMENT_ADDR    = 11'h500;
  
  // Receiver configuration register address       (0x404)
  localparam RECEIVER_ADDR             = 11'h404;
  
  // Transmitter configuration register address    (0x408)
  localparam TRANSMITTER_ADDR          = 11'h408;
  
  localparam STATS_TX_OK               = 11'h2D8;
  localparam STATS_TX_UNDERRUN         = 11'h2F0;
  localparam STATS_RX_OK               = 11'h290;
  localparam STATS_RX_FCS_ERR          = 11'h298;
  
  
  //-------------------------------------------------
  // Wire/reg declarations
  reg          [4:0]                   axi_status;          // used to keep track of axi transactions
  
  reg          [31:0]                  axi_rd_data;
  reg          [31:0]                  axi_wr_data;
  reg          [31:0]                  lower_stats_data;
  
  reg          [3:0]                   axi_state;           // main state machine to configure example design
  reg          [3:0]                   prev_axi_state;      // previous state
  reg          [1:0]                   axi_access_sm;       // axi state machine - handles the 5 channels
  
  reg                                  start_access;        // used to kick the axi acees state machine
  reg                                  writenread;
  reg          [16:0]                  addr;
  
  reg          [20:0]                  count_shift = {21{1'b1}};
                        
  reg          [1:0]                   rvalid_cnt;
  reg                                  enable_cnt;
  
  wire         [1:0]                   config_mode;
  
  reg                                  read_stats_delay = 0;
  reg                                  read_stats_start = 0;
  wire                                 read_stats_sync;
  
  wire                                 enable_pat_gen_sync;
  
   ten_gig_eth_mac_0_sync_block sync_enable_pat_gen (
      .data_in                         (enable_pat_gen),
      .clk                             (s_axi_aclk),
      .data_out                        (enable_pat_gen_sync)
   );
   
  assign config_mode                   = {enable_vlan,enable_custom_preamble};  // Controlled by DIP switches

   always @(posedge s_axi_aclk)
   begin
      if (!s_axi_resetn) begin
         prev_axi_state                <= 4'd0;
      end
      else begin
         prev_axi_state                <= axi_state;
      end
   end
  
   //----------------------------------------------------------------------------
   // Management process. This process sets up the configuration by
   // turning off flow control, then checks gathered statistics at the
   // end of transmission
   //----------------------------------------------------------------------------
   always @(posedge s_axi_aclk)
   begin
      if (!s_axi_resetn) begin
         axi_state                     <= STARTUP;
         enable_gen                    <= 0;
         start_access                  <= 0;
         writenread                    <= 0;
         addr                          <= 0;
         axi_wr_data                   <= 0;
         stats_fail                    <= 0;
      end
      // main state machine is kicking off multi cycle accesses in each state so has to
      // stall while they take place
      else if (axi_access_sm == IDLE && !start_access) begin
         case (axi_state)
            STARTUP : begin
               // this state will be ran after reset to wait for count_shift
               if (count_shift[20] == 1'b0) begin
                  // set up MDC frequency. Write 1A to Management configuration
                  // register (Add=340). This will enable MDIO and set MDC to 2.3MHz < 2.5MHz
                  // (set CLOCK_DIVIDE value to 26 dec. for 125MHz s_axi_aclk 
                  // resulting in 125/(2x(1+26))=2.3MHz and enable mdio)
                  $display("** Note: Setting MDC Frequency to 2.3MHZ....");
                  start_access         <= 1;
                  writenread           <= 1;
                  addr                 <= CONFIG_MANAGEMENT_ADDR;
                  axi_wr_data          <= 32'h5A;
                  // axi_wr_data          <= 32'h43;   //Sim speedup
                  axi_state            <= RESET_MAC_RX;
               end
            end       
            RESET_MAC_RX : begin
               $display("** Note: Reseting MAC RX");
               start_access            <= 1;
               writenread              <= 1;
               addr                    <= RECEIVER_ADDR;
               case (config_mode)
                  2'b00 : axi_wr_data  <= 32'h90000000;
                  2'b01 : axi_wr_data  <= 32'h94000000;
                  2'b10 : axi_wr_data  <= 32'h98000000;
                  2'b11 : axi_wr_data  <= 32'h9C000000;
               endcase
               axi_state               <= RESET_MAC_TX;
            end
            // this state will drive the reset to the example design (apart from this block)
            // this will be separately captured and synched into the various clock domains
            RESET_MAC_TX : begin
               $display("** Note: Reseting MAC TX");
               start_access            <= 1;
               writenread              <= 1;
               addr                    <= TRANSMITTER_ADDR;
               case (config_mode)
                  // 2'b00 : axi_wr_data <= 32'h92000000;  //IFG adjust enable
                  2'b00 : axi_wr_data  <= 32'h90000000;
                  2'b01 : axi_wr_data  <= 32'h90800000;
                  2'b10 : axi_wr_data  <= 32'h98000000;
                  2'b11 : axi_wr_data  <= 32'h98800000;
               endcase
               axi_state               <= CONFIG_DONE;
            end
            // this state drives the enable_gen to the example design 
            // this is separately captured and synched into the various clock domains
            CONFIG_DONE : begin
               // enable the pattern generator
               enable_gen              <= enable_pat_gen_sync;
               if (read_stats_start) begin
                  $display("** Note: Checking basic statistics");
                  start_access         <= 1;
                  writenread           <= 0;
                  addr                 <= STATS_TX_OK;
                  axi_state            <= UPPER_TX_OK;
               end
            end
            UPPER_TX_OK : begin
                $display("** Note: Checking TX OK statistics");
                start_access           <= 1;
                writenread             <= 0;
                addr[2]                <= 1'b1; // read upper 32 bits
                axi_state              <= CHECK_TX_OK;
            end
            CHECK_TX_OK : begin
               if ({axi_rd_data, lower_stats_data} == 64'h3 ) begin
                  $display("** Note: TX Frames OK Stats Passed");
               end
               else begin
                  $display("** Error: TX Frames OK Stats Failed");
                  stats_fail           <= 1;
               end
               start_access            <= 1;
               writenread              <= 0;
               addr                    <= STATS_TX_UNDERRUN;
               axi_state               <= UPPER_TX_UNDERRUN;
            end
            UPPER_TX_UNDERRUN : begin
                $display("** Note: Checking TX Underrun statistics");
                start_access           <= 1;
                writenread             <= 0;
                addr[2]                <= 1'b1; // read upper 32 bits
                axi_state              <= CHECK_TX_UNDERRUN;
            end
            CHECK_TX_UNDERRUN : begin
               if ({axi_rd_data, lower_stats_data} == 64'h0 ) begin
                  $display("** Note: TX Frames Underrun Stats Passed");
               end
               else begin
                  $display("** Error: TX Frames Underrun Stats Failed");
                  stats_fail           <= 1;
               end
               start_access            <= 1;
               writenread              <= 0;
               addr                    <= STATS_RX_OK;
               axi_state               <= UPPER_RX_OK;
            end
            UPPER_RX_OK : begin
                $display("** Note: Checking RX OK statistics");
                start_access           <= 1;
                writenread             <= 0;
                addr[2]                <= 1'b1; // read upper 32 bits
                axi_state              <= CHECK_RX_OK;
            end
            CHECK_RX_OK : begin
               if ({axi_rd_data, lower_stats_data} == 64'h3 ) begin
                  $display("** Note: RX Frames OK Stats Passed");
               end
               else begin
                  $display("** Error: RX Frames OK Stats Failed");
                  stats_fail           <= 1;
               end
               start_access            <= 1;
               writenread              <= 0;
               addr                    <= STATS_RX_FCS_ERR;
               axi_state               <= UPPER_RX_FCS_ERR;
            end
            UPPER_RX_FCS_ERR : begin
                $display("** Note: Checking RX FCS_Error statistics");
                start_access           <= 1;
                writenread             <= 0;
                addr[2]                <= 1'b1; // read upper 32 bits
                axi_state              <= CHECK_RX_FCS_ERR;
            end
            CHECK_RX_FCS_ERR : begin
               if ({axi_rd_data, lower_stats_data} == 64'h1 ) begin
                  $display("** Note: RX Frames FCS Error Stats Passed");
               end
               else begin
                  $display("** Error: RX Frames FCS Error Stats Failed");
                  stats_fail           <= 1;
               end
               axi_state               <= CONFIG_DONE;
            end
            default : begin
               axi_state <= STARTUP;
            end
         endcase
      end
      else begin
         start_access <= 0;
      end
   end
   
   ten_gig_eth_mac_0_sync_block sync_read_stats (
      .data_in                         (read_stats),
      .clk                             (s_axi_aclk),
      .data_out                        (read_stats_sync)
   );
   
   // capture the read stats signal to alow an edge detect
   always @(posedge s_axi_aclk)
   begin
      if (!s_axi_resetn) begin
         read_stats_delay              <= 0;
         read_stats_start              <= 0;
      end
      else begin
         read_stats_delay              <= read_stats_sync;
         read_stats_start              <= read_stats_sync & !read_stats_delay;
      end
   end

   //-------------------------------------------------------------------------------------------
   // Processes to generate the axi transactions - only simple reads and write can be generated
   //-------------------------------------------------------------------------------------------
  
   always @(posedge s_axi_aclk)
   begin
      if (!s_axi_resetn) begin
         axi_access_sm <= IDLE;
      end
      else begin
         case (axi_access_sm)
            IDLE : begin
               if (start_access) begin
                  if (start_access && writenread) begin
                     axi_access_sm <= WRITE;
                  end
                  else begin
                     axi_access_sm <= READ;
                  end
               end
            end
            WRITE : begin
               // wait in this state until axi_status signals the write is complete
               if (axi_status[4:2] == 3'b111)
                  axi_access_sm <= DONE;
            end
            READ : begin
               // wait in this state until axi_status signals the read is complete
               if (axi_status[1:0] == 2'b11)
                  axi_access_sm <= DONE;
            end
            DONE : begin
               axi_access_sm <= IDLE;
            end
         endcase
      end
   end
  
   // need a process per axi interface (i.e 5)
   // in each case the interface is driven accordingly and once acknowledged a sticky
   // status bit is set and the process waits until the access_sm moves on
   // READ ADDR
   always @(posedge s_axi_aclk)
   begin
      if (axi_access_sm == READ) begin
         if (!axi_status[0]) begin
            s_axi_araddr   <= addr;
            s_axi_arvalid  <= 1'b1;
            if (s_axi_arready == 1'b1 && s_axi_arvalid) begin
               axi_status[0] <= 1;
               s_axi_araddr      <= 0;
               s_axi_arvalid     <= 0;
            end
         end 
      end
      else begin
         axi_status[0]     <= 0;
         s_axi_araddr      <= 0;
         s_axi_arvalid     <= 0;
      end
   end
  
   // READ DATA/RESP
   always @(posedge s_axi_aclk)
   begin
      if (axi_access_sm == READ) begin
         if (!axi_status[1]) begin
            s_axi_rready  <= 1'b1;
            if (s_axi_rvalid == 1'b1 && s_axi_rready) begin
               axi_status[1] <= 1;
               s_axi_rready  <= 0;
               axi_rd_data   <= s_axi_rdata;
            end
         end
      end
      else begin
         s_axi_rready      <= 0;
         axi_status[1]     <= 0;
         if (axi_access_sm == IDLE & start_access) begin
            // need to capture the lower part of the stats to allow the full 64 bit comparison 
            // just capture the old read data whenever a new value is captured
            lower_stats_data        <= axi_rd_data;
            axi_rd_data    <= 0;
         end
      end
   end
  
   // WRITE ADDR
   always @(posedge s_axi_aclk)
   begin
      if (axi_access_sm == WRITE) begin
         if (!axi_status[2]) begin
            s_axi_awaddr      <= addr;
            s_axi_awvalid  <= 1'b1;
            if (s_axi_awready == 1'b1 && s_axi_awvalid) begin
               axi_status[2] <= 1;
               s_axi_awaddr  <= 0;
               s_axi_awvalid <= 0;
            end
         end
      end
      else begin
         s_axi_awaddr      <= 0;
         s_axi_awvalid     <= 0;
         axi_status[2]     <= 0;
      end
   end
  
   // WRITE DATA
   always @(posedge s_axi_aclk)
   begin
      if (axi_access_sm == WRITE) begin
         if (!axi_status[3]) begin
            s_axi_wdata      <= axi_wr_data;
            s_axi_wvalid  <= 1'b1;
            if (s_axi_wready == 1'b1 && s_axi_wvalid) begin
               axi_status[3] <= 1;
               s_axi_wdata      <= 0;
               s_axi_wvalid     <= 0;
            end
         end
      end
      else begin
         s_axi_wdata      <= 0;
         s_axi_wvalid     <= 0;
         axi_status[3]     <= 0;
      end
   end
  
   // WRITE RESP
   always @(posedge s_axi_aclk)
   begin
      if (axi_access_sm == WRITE) begin
         if (!axi_status[4]) begin
            s_axi_bready  <= 1'b1;
            if (s_axi_bvalid == 1'b1 && s_axi_bready) begin
               axi_status[4] <= 1;
               s_axi_bready     <= 0;
            end
         end
      end
      else begin
         s_axi_bready     <= 0;
         axi_status[4]    <= 0;
      end
   end
    
   // don't reset this  - it will always be updated before it is used..
   // it does need an init value (all ones)
   always @(posedge s_axi_aclk)
   begin
       count_shift <= {count_shift[19:0], !s_axi_resetn};
   end
  
endmodule

