//------------------------------------------------------------------------------
// File       : tri_mode_ethernet_mac_0_axi_lite_sm.v
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
// Description:  This module is reponsible for bringing up both the MAC and the
// attached PHY (if any) to enable basic packet transfer in both directions.
// It is intended to be directly usable on a xilinx demo platform to demonstrate
// simple bring up and data transfer.  The mac speed is set via inputs (which
// can be connected to dip switches) and the PHY is configured to ONLY advertise the
// specified speed.  To maximise compatibility on boards only IEEE registers are used
// and the PHY address can be set via a parameter.
//
//------------------------------------------------------------------------------

`timescale 1 ps/1 ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module tri_mode_ethernet_mac_0_axi_lite_sm (
      input                s_axi_aclk,
      input                s_axi_resetn,

      input       [1:0]    mac_speed,
      input                update_speed,
      input                serial_command,
      output               serial_response,
      
      input                phy_loopback,

      output reg  [11:0]   s_axi_awaddr = 0,
      output reg           s_axi_awvalid = 0,
      input                s_axi_awready,

      output reg  [31:0]   s_axi_wdata = 0,
      output reg           s_axi_wvalid = 0,
      input                s_axi_wready,

      input       [1:0]    s_axi_bresp,
      input                s_axi_bvalid,
      output reg           s_axi_bready = 0,

      output reg  [11:0]   s_axi_araddr = 0,
      output reg           s_axi_arvalid = 0,
      input                s_axi_arready,

      input       [31:0]   s_axi_rdata,
      input       [1:0]    s_axi_rresp,
      input                s_axi_rvalid,
      output reg           s_axi_rready = 0
);


// main state machine

localparam  STARTUP               = 0,
           UPDATE_SPEED          = 1,
      
           MDIO_RD               = 2,
           MDIO_POLL_CHECK       = 3,
           MDIO_1G               = 4,
           MDIO_10_100           = 5,
           MDIO_RESTART          = 12,
           MDIO_LOOPBACK         = 13,
           MDIO_STATS            = 14,
           MDIO_STATS_POLL_CHECK = 15,
           RESET_MAC_TX          = 16,
           RESET_MAC_RX          = 17,
           CNFG_MDIO             = 18,
           CNFG_FLOW             = 19,
           CNFG_FILTER           = 22,
           CNFG_LO_ADDR          = 20,
           CNFG_HI_ADDR          = 21,

           CHECK_SPEED           = 25;

      
// MDIO State machine
localparam  IDLE                  = 0,
            SET_DATA              = 1,
            INIT                  = 2,
            POLL                  = 3;
// AXI State Machine
           
localparam  READ                  = 1,
            
            WRITE                 = 2,
            DONE                  = 3;



      
// Management configuration register address     (0x500)
localparam CONFIG_MANAGEMENT_ADD  = 17'h500;
// Flow control configuration register address   (0x40C)
localparam CONFIG_FLOW_CTRL_ADD   = 17'h40C;

// Receiver configuration register address       (0x404)
localparam RECEIVER_ADD           = 17'h404;

// Transmitter configuration register address    (0x408)
localparam TRANSMITTER_ADD        = 17'h408;

// Speed configuration register address    (0x410)
localparam SPEED_CONFIG_ADD       = 17'h410;

// Unicast Word 0 configuration register address (0x700)
localparam CONFIG_UNI0_CTRL_ADD   = 17'h700;

// Unicast Word 1 configuration register address (0x704)
localparam CONFIG_UNI1_CTRL_ADD   = 17'h704;

// Address Filter configuration register address (0x708)
localparam CONFIG_ADDR_CTRL_ADD   = 17'h708;


      
// MDIO registers
localparam MDIO_CONTROL           = 17'h504;
localparam MDIO_TX_DATA           = 17'h508;
localparam MDIO_RX_DATA           = 17'h50C;
localparam MDIO_OP_RD             = 2'b10;
localparam MDIO_OP_WR             = 2'b01;

      
// PHY Registers
// phy address is actually a 6 bit field but other bits are reserved so simpler to specify as 8 bit
localparam PHY_ADDR               = 8'h7;
localparam PHY_CONTROL_REG        = 8'h0;
localparam PHY_STATUS_REG         = 8'h1;
localparam PHY_ABILITY_REG        = 8'h4;
localparam PHY_1000BASET_CONTROL_REG = 8'h9;
//-------------------------------------------------
// Wire/reg declarations
reg      [4:0]    axi_status;          // used to keep track of axi transactions
      
reg               mdio_ready;          // captured to acknowledge the end of mdio transactions
reg      [31:0]   axi_rd_data;
reg      [31:0]   axi_wr_data;
      
reg      [31:0]   mdio_wr_data;

  
reg      [4:0]    axi_state;           // main state machine to configure example design
      
  
reg      [1:0]    mdio_access_sm;      // mdio state machine to handle mdio register config
reg      [1:0]    axi_access_sm;       // axi state machine - handles the 5 channels

reg               start_access;        // used to kick the axi acees state machine
      
reg               start_mdio;          // used to kick the mdio state machine
reg               drive_mdio;          // selects between mdio fields and direct sm control
reg      [1:0]    mdio_op;
reg      [7:0]    mdio_reg_addr;
reg               writenread;
reg      [16:0]   addr;
reg      [1:0]    speed;
wire              update_speed_sync;
reg               update_speed_reg;

reg      [20:0]   count_shift = {21{1'b1}};

reg      [36:0]   serial_command_shift;
reg               load_data;
reg               capture_data;
reg               write_access;
reg               read_access;

wire              s_axi_reset;

assign s_axi_reset = !s_axi_resetn;

tri_mode_ethernet_mac_0_sync_block update_speed_sync_inst (
   .clk              (s_axi_aclk),
   .data_in          (update_speed),
   .data_out         (update_speed_sync)
);

always @(posedge s_axi_aclk)
begin
   if (s_axi_reset) begin
      update_speed_reg <= 0;
   end
   else begin
      update_speed_reg <= update_speed_sync;
   end
end

//----------------------------------------------------------------------------
// Management process. This process sets up the configuration by
// turning off flow control, then checks gathered statistics at the
// end of transmission
//----------------------------------------------------------------------------
always @(posedge s_axi_aclk)
begin
   if (s_axi_reset) begin
      axi_state      <= STARTUP;
      start_access   <= 0;
      
      start_mdio     <= 0;
      drive_mdio     <= 0;
      mdio_op        <= 0;
      mdio_reg_addr  <= 0;
      writenread     <= 0;
      addr           <= 0;
      axi_wr_data    <= 0;
      speed          <= mac_speed;
   end
   // main state machine is kicking off multi cycle accesses in each state so has to
   // stall while they take place
      
   else if (axi_access_sm == IDLE && mdio_access_sm == IDLE && !start_access && !start_mdio) begin
     
      case (axi_state)
         STARTUP : begin
            // this state will be ran after reset to wait for count_shift
      
            if (count_shift[20] == 1'b0) begin
                        
               // set up MDC frequency. Write 0x58 to Management configuration
               // register (Add=340). This will enable MDIO and set MDC to 2.5MHz
               // (set CLOCK_DIVIDE value to 24 dec. for 125MHz s_axi_aclk and
               // enable mdio)
                     
               $display("** Note: Setting MDC Frequency to 2.5MHZ....");
               speed          <= mac_speed;
               start_access   <= 1;
               writenread     <= 1;
               addr           <= CONFIG_MANAGEMENT_ADD;
                     
               axi_wr_data    <= 32'h58;
                    
               axi_state      <= UPDATE_SPEED;
            end
         end   
         // program the MAC to the required speed
         UPDATE_SPEED : begin
            $display("** Note: Programming MAC speed");
            
            drive_mdio     <= 0;
            
            start_access   <= 1;
            writenread     <= 1;
            addr           <= SPEED_CONFIG_ADD;
            // bits 31:30 are used
            axi_wr_data    <= {speed, 30'h0};
      
            axi_state      <= MDIO_RD;
                  
         end
   
         MDIO_RD : begin
            // read phy status - if response is all ones then do not perform any
            // further MDIO accesses
            $display("** Note: Checking for PHY");
            drive_mdio     <= 1;   // switch axi transactions to use mdio values..
            start_mdio     <= 1;
            writenread     <= 0;
            mdio_reg_addr  <= PHY_STATUS_REG;
            mdio_op        <= MDIO_OP_RD;
            axi_state      <= MDIO_POLL_CHECK;
         end
         MDIO_POLL_CHECK : begin
            if (axi_rd_data[16:0] == 17'h1ffff) begin
               // if status is all ones then no PHY exists at this address
               // (this is used by the tri_mode_ethernet_mac_0_demo_tb to avoid performing lots of phy accesses)
               axi_state      <= RESET_MAC_RX;
               end
            else begin
               axi_state      <= MDIO_1G;
               end
         end
         MDIO_1G : begin
            // set 1G advertisement
            $display("** Note: Setting PHY 1G advertisement");
            start_mdio     <= 1;
            mdio_reg_addr  <= PHY_1000BASET_CONTROL_REG;
            mdio_op        <= MDIO_OP_WR;
            // 0x200 is 1G full duplex, 0x100 is 1G half duplex
            // only advertise the mode we want..
            axi_wr_data    <= {16'h0, 6'h0, speed[1], 9'h0};
            axi_state      <= MDIO_10_100;
         end
         MDIO_10_100 : begin
            // set 10/100 advertisement
            $display("** Note: Setting PHY 10/100M advertisement");
            start_mdio     <= 1;
            mdio_reg_addr  <= PHY_ABILITY_REG;
            mdio_op        <= MDIO_OP_WR;
            // bit8 : full 100M, bit7 : half 100M, bit6 : full 10M, bit5 : half 10M
            // only advertise the mode we want..
            axi_wr_data    <= {16'h0, 7'h0, !speed[1] & speed[0], 1'b0, !speed[1] & !speed[0], 6'h0};
            axi_state      <= MDIO_RESTART;
         end
         MDIO_RESTART : begin
            // set autoneg and reset
            // if loopback is selected then do not set autonegotiate and program the required speed directly
            // otherwise set autonegotiate
            $display("** Note: Applying PHY software reset");
            start_mdio     <= 1;
            mdio_reg_addr  <= PHY_CONTROL_REG;
            mdio_op        <= MDIO_OP_WR;
            if (phy_loopback) begin
               // bit15: software reset, bit13 : speed LSB, bit 8 : full duplex, bit 6 : speed MSB
               axi_wr_data    <= {16'h0, 2'b10, !speed[1] & speed[0], 4'h0, 1'b1,  1'b0, speed[1], 6'h0};
               axi_state   <= MDIO_LOOPBACK;
            end
            else begin
            // bit15: software reset, bit12 : AN enable (set after power up)
               axi_wr_data    <= {16'h0, 4'h9, 12'h0};
               axi_state   <= MDIO_STATS;
            end
         end
         MDIO_LOOPBACK : begin
            // set phy loopback
            $display("** Note: Settling PHY Loopback");
            start_mdio     <= 1;
            mdio_reg_addr  <= PHY_CONTROL_REG;
            mdio_op        <= MDIO_OP_WR;
            // bit14: loopback, bit13 : speed LSB, bit 8 : full duplex, bit 6 : speed MSB
            axi_wr_data    <= {16'h0, 2'b01, !speed[1] & speed[0], 4'h0, 1'b1,  1'b0, speed[1], 6'h0};
            axi_state      <= RESET_MAC_RX;
         end
         MDIO_STATS : begin
            start_mdio     <= 1;
            $display("** Note: Wait for Autonegotiation to complete");
            mdio_reg_addr  <= PHY_STATUS_REG;
            mdio_op        <= MDIO_OP_RD;
            axi_state      <= MDIO_STATS_POLL_CHECK;
         end
         MDIO_STATS_POLL_CHECK : begin
            // bit 5 is autoneg complete - assume required speed is selected
            if (axi_rd_data[5] == 1'b1 && axi_rd_data[16] == 1'b1)
               axi_state      <= RESET_MAC_RX;
            else
               axi_state      <= MDIO_STATS;
         end

         // once here the PHY is ACTIVE - NOTE only IEEE registers are used
         // this state will drive the reset to the example design (apart from this block)
         // this will be separately captured and synched into the various clock domains
         RESET_MAC_RX : begin
            $display("** Note: Reseting MAC RX");
            
            drive_mdio     <= 0;
            
            start_access   <= 1;
            writenread     <= 1;
            addr           <= RECEIVER_ADD;
            axi_wr_data    <= 32'h90000000;
            axi_state      <= RESET_MAC_TX;
         end
         // this state will drive the reset to the example design (apart from this block)
         // this will be separately captured and synched into the various clock domains
         RESET_MAC_TX : begin
            $display("** Note: Reseting MAC TX");
            start_access   <= 1;
            writenread     <= 1;
            addr           <= TRANSMITTER_ADD;
            axi_wr_data    <= 32'h90000000;
            
            axi_state      <= CNFG_MDIO;
            
         end
            
         CNFG_MDIO : begin
            // set up MDC frequency. Write 2E to Management configuration
            // register (Add=340). This will enable MDIO and set MDC to 2.5MHz
            // (set CLOCK_DIVIDE value to 50 dec. for 125MHz s_axi_aclk and
            // enable mdio)
            $display("** Note: Setting MDC Frequency to 2.5MHZ....");
            start_access   <= 1;
            writenread     <= 1;
            addr           <= CONFIG_MANAGEMENT_ADD;
            axi_wr_data    <= 32'h68;
            axi_state      <= CNFG_FLOW;
         end
         
         CNFG_FLOW : begin
            $display("** Note: Disabling Flow control....");
            start_access   <= 1;
            writenread     <= 1;
            addr           <= CONFIG_FLOW_CTRL_ADD;
            axi_wr_data    <= 32'h0;
            axi_state      <= CNFG_LO_ADDR;
         end
         CNFG_LO_ADDR : begin
            $display("** Note: Configuring unicast address(low word)....");
            start_access   <= 1;
            writenread     <= 1;
            addr           <= CONFIG_UNI0_CTRL_ADD;
            axi_wr_data    <= 32'h040302DA;
            axi_state      <= CNFG_HI_ADDR;
         end
         CNFG_HI_ADDR : begin
            $display("** Note: Configuring unicast address(high word)....");
            start_access   <= 1;
            writenread     <= 1;
            addr           <= CONFIG_UNI1_CTRL_ADD;
            axi_wr_data    <= 32'h0605;
            axi_state      <= CNFG_FILTER;
         end
         CNFG_FILTER : begin
            $display("** Note: Setting core to promiscuous mode....");
            start_access   <= 1;
            writenread     <= 1;
            addr           <= CONFIG_ADDR_CTRL_ADD;
            axi_wr_data    <= 32'h80000000;
            axi_state      <= CHECK_SPEED;
         end
         CHECK_SPEED : begin
            if (update_speed_reg) begin
              axi_state      <= UPDATE_SPEED;
              speed          <= mac_speed;
            end
            else begin
               if (capture_data)
                  axi_wr_data <= serial_command_shift[33:2];
               if (write_access || read_access) begin
                  addr         <= {5'b0, serial_command_shift[13:2]};
                  start_access <= 1;
                  writenread   <= write_access;
               end
            end
         end
         default : begin
            axi_state <= STARTUP;
         end
      endcase
   end
   else begin
      start_access <= 0;
      
      start_mdio   <= 0;
      
   end
end


            
//------------------------------------------------
// MDIO setup - split from main state machine to make more manageable

always @(posedge s_axi_aclk)
begin
   if (s_axi_reset) begin
      mdio_access_sm <= IDLE;
   end
   else if (axi_access_sm == IDLE || axi_access_sm == DONE) begin
      case (mdio_access_sm)
         IDLE : begin
            if (start_mdio) begin
               if (mdio_op == MDIO_OP_WR) begin
                  mdio_access_sm <= SET_DATA;
                  mdio_wr_data   <= axi_wr_data;
               end
               else begin
                  mdio_access_sm <= INIT;
                  mdio_wr_data   <= {PHY_ADDR, mdio_reg_addr, mdio_op, 3'h1, 11'h0};
               end
            end
         end
         SET_DATA : begin
            mdio_access_sm <= INIT;
            mdio_wr_data   <= {PHY_ADDR, mdio_reg_addr, mdio_op, 3'h1, 11'h0};
         end
         INIT : begin
            mdio_access_sm <= POLL;
         end
         POLL : begin
            if (mdio_ready)
               mdio_access_sm <= IDLE;
         end
      endcase
   end
   else if (mdio_access_sm == POLL && mdio_ready) begin
      mdio_access_sm <= IDLE;
   end
end

//-------------------------------------------------------------------------------------------
// processes to generate the axi transactions - only simple reads and write can be generated

always @(posedge s_axi_aclk)
begin
   if (s_axi_reset) begin
      axi_access_sm <= IDLE;
   end
   else begin
      case (axi_access_sm)
         IDLE : begin
            
            if (start_access || start_mdio || mdio_access_sm != IDLE) begin
               if (mdio_access_sm == POLL) begin
                  axi_access_sm <= READ;
               end
               else if ((start_access && writenread) ||
                        (mdio_access_sm == SET_DATA || mdio_access_sm == INIT) || start_mdio) begin
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
            
         if (drive_mdio) begin
            s_axi_araddr   <= MDIO_RX_DATA;
         end
         else begin
            s_axi_araddr   <= addr;
         end
         
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
            
            if (drive_mdio & s_axi_rdata[16])
               mdio_ready <= 1;
         
         end
      end
   end
   else begin
      s_axi_rready      <= 0;
      axi_status[1]     <= 0;
            
      if (axi_access_sm == IDLE & (start_access || start_mdio)) begin
         mdio_ready     <= 0;
         axi_rd_data    <= 0;
      end
   end
end

// WRITE ADDR
always @(posedge s_axi_aclk)
begin
   if (axi_access_sm == WRITE) begin
      if (!axi_status[2]) begin
            
         if (drive_mdio) begin
            if (mdio_access_sm == SET_DATA)
               s_axi_awaddr <= MDIO_TX_DATA;
            else
               s_axi_awaddr <= MDIO_CONTROL;
         end
         else begin
            s_axi_awaddr   <= addr;
         end
         s_axi_awvalid  <= 1'b1;
         if (s_axi_awready == 1'b1 && s_axi_awvalid) begin
            axi_status[2] <= 1;
            s_axi_awaddr      <= 0;
            s_axi_awvalid     <= 0;
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
            
         if (drive_mdio) begin
            s_axi_wdata   <= mdio_wr_data;
         end
         else begin
            s_axi_wdata   <= axi_wr_data;
         end
         s_axi_wvalid  <= 1'b1;
         if (s_axi_wready == 1'b1 && s_axi_wvalid) begin
            axi_status[3] <= 1;
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
      axi_status[4]     <= 0;
   end
end

//-------------------------------------------------------------------------------------------------------
// to avoid logic being stripped a serial input is included which enables an address/data and control to be setup for
// a user config access..
always @(posedge s_axi_aclk)
begin
    if (load_data)
       serial_command_shift <= {serial_command_shift[35:33], axi_rd_data, serial_command_shift[0], serial_command};
    else
       serial_command_shift <= {serial_command_shift[35:0], serial_command};
end

// only deassert serial_response once we reach the state in which we can use the serial_command
assign serial_response = (axi_state == CHECK_SPEED) ? serial_command_shift[35] : 1'b1;

// the serial command is expected to have a start and stop bit - to avoid a counter -
// and a two bit code field in the uppper two bits.
// these decode as follows:
// 00 - read address
// 01 - write address
// 10 - write data
// 11 - read data - slightly more involved - when detected the read data is registered into the shift and passed out
// 11 is used for read data as if the input is tied high the output will simply reflect whatever was
// captured but will not result in any activity
// it is expected that the write data is setup BEFORE the write address
always @(posedge s_axi_aclk)
begin
    load_data <= 0;
    capture_data <= 0;
    write_access <= 0;
    read_access  <= 0;
    if (!serial_command_shift[36] & serial_command_shift[35] & serial_command_shift[0])
       if (serial_command_shift[34] & serial_command_shift[33])       // READ DATA
          load_data <= 1;
       else if (serial_command_shift[34] & !serial_command_shift[33]) // WRITE DATA
          capture_data <= 1;
       else if (!serial_command_shift[34] & serial_command_shift[33]) // WRITE ADDRESS
          write_access <= 1;
       else                                                           // READ ADDRESS
          read_access <= 1;
end

// don't reset this  - it will always be updated before it is used..
// it does need an init value (all ones)
always @(posedge s_axi_aclk)
begin
    count_shift <= {count_shift[19:0], s_axi_reset};
end

endmodule

