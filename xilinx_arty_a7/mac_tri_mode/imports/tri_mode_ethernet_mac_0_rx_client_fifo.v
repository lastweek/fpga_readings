//------------------------------------------------------------------------------
// Title      : Receiver FIFO with AxiStream interfaces
// Version    : 1.3
// Project    : Tri-Mode Ethernet MAC
//------------------------------------------------------------------------------
// File       : tri_mode_ethernet_mac_0_rx_client_fifo.v
// Author     : Xilinx Inc.
// -----------------------------------------------------------------------------
// (c) Copyright 2004-2013 Xilinx, Inc. All rights reserved.
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
// Description: This is the receiver side FIFO for the design example
//              of the Tri-Mode Ethernet MAC core. AxiStream interfaces are used.
//
//              The FIFO is built around an Inferred Dual Port RAM, 
//              giving a total memory capacity of 4096 bytes.
//
//              Frame data received from the MAC receiver is written into the
//              FIFO on the rx_mac_aclk. An end-of-frame marker is written to
//              the BRAM parity bit on the last byte of data stored for a frame.
//              This acts as frame deliniation.
//
//              The rx_axis_mac_tvalid, rx_axis_mac_tlast, and rx_axis_mac_tuser signals
//              qualify the frame. A frame which ends with rx_axis_mac_tuser asserted
//              indicates a bad frame and will cause the FIFO write address
//              pointer to be reset to the base address of that frame. In this
//              way the bad frame will be overwritten with the next received
//              frame and is therefore dropped from the FIFO.
//
//              Frames will also be dropped from the FIFO if an overflow occurs.
//              If there is not enough memory capacity in the FIFO to store the
//              whole of an incoming frame, the write address pointer will be
//              reset and the overflow signal asserted.
//
//              When there is at least one complete frame in the FIFO,
//              the 8-bit AxiStream read interface's rx_axis_fifo_tvalid signal will
//              be enabled allowing data to be read from the FIFO.
//
//              The FIFO has been designed to operate with different clocks
//              on the write and read sides. The read clock (user side) should
//              always operate at an equal or faster frequency than the write
//              clock (MAC side).
//
//              The FIFO is designed to work with a minimum frame length of 8
//              bytes.
//
//              The FIFO memory size can be increased by expanding the rd_addr
//              and wr_addr signal widths, to address further BRAMs.
//
//              Requirements :
//              * Minimum frame size of 8 bytes
//              * Spacing between good/bad frame signaling (encoded by
//                rx_axis_mac_tvalid, rx_axis_mac_tlast, rx_axis_mac_tuser), is at least 64
//                clock cycles
//              * Write AxiStream clock is 125MHz downto 1.25MHz
//              * Read AxiStream clock equal to or faster than write clock,
//                and downto 20MHz
//
//------------------------------------------------------------------------------

`timescale 1ps / 1ps

//------------------------------------------------------------------------------
// The module declaration for the Receiver FIFO
//------------------------------------------------------------------------------

(* DowngradeIPIdentifiedWarnings = "yes" *)
module tri_mode_ethernet_mac_0_rx_client_fifo
  (
    // User-side (read-side) AxiStream interface
    input            rx_fifo_aclk,
    input            rx_fifo_resetn,
    output reg [7:0] rx_axis_fifo_tdata = 8'd0,
    output reg       rx_axis_fifo_tvalid,
    output           rx_axis_fifo_tlast,
    input            rx_axis_fifo_tready,

    // MAC-side (write-side) AxiStream interface
    input            rx_mac_aclk,
    input            rx_mac_resetn,
    input [7:0]      rx_axis_mac_tdata,
    input            rx_axis_mac_tvalid,
    input            rx_axis_mac_tlast,
    input            rx_axis_mac_tuser,

    // FIFO status and overflow indication,
    // synchronous to write-side (rx_mac_aclk) interface
    output [3:0]     fifo_status,
    output           fifo_overflow
  );


  //----------------------------------------------------------------------------
  // Define internal signals
  //----------------------------------------------------------------------------

  // Binary encoded read state machine states
  parameter WAIT_s      = 3'b000;
  parameter QUEUE1_s    = 3'b001;
  parameter QUEUE2_s    = 3'b010;
  parameter QUEUE3_s    = 3'b011;
  parameter QUEUE_SOF_s = 3'b100;
  parameter SOF_s       = 3'b101;
  parameter DATA_s      = 3'b110;
  parameter EOF_s       = 3'b111;

  
  reg [2:0]   rd_state;
  
  reg [2:0]   rd_nxt_state;

  // Binary encoded write state machine states
  parameter IDLE_s   = 3'b000;
  parameter FRAME_s  = 3'b001;
  parameter GF_s     = 3'b010;
  parameter BF_s     = 3'b011;
  parameter OVFLOW_s = 3'b100;

  
  reg  [2:0]  wr_state;
  
  reg  [2:0]  wr_nxt_state;

  wire        wr_en;
  reg  [11:0] wr_addr;
  wire        wr_addr_inc;
  wire        wr_start_addr_load;
  wire        wr_addr_reload;
  reg  [11:0] wr_start_addr;
  wire [8:0]  wr_eof_data_bram;
  reg  [7:0]  wr_data_bram;
  reg  [7:0]  wr_data_pipe[0:1];
  reg         wr_dv_pipe[0:2];
  reg         wr_gfbf_pipe[0:1];
  reg         wr_gf;
  reg         wr_bf;
  reg         wr_eof_bram_pipe[0:1];
  reg         wr_eof_bram;
  reg         frame_in_fifo;

  reg  [11:0] rd_addr;
  wire        rd_addr_inc;
  reg         rd_addr_reload;
  wire [8:0]  rd_eof_data_bram;
  wire [7:0]  rd_data_bram;
  reg  [7:0]  rd_data_pipe = 8'd0;
  reg  [7:0]  rd_data_delay = 8'd0;
  reg  [1:0]  rd_valid_pipe;
  wire [0:0]  rd_eof_bram;
  reg         rd_en;
  reg         rd_pull_frame;
  reg         rd_eof;

  (* INIT = "0" *)
  reg         wr_store_frame_tog = 1'b0;
  wire        rd_store_frame_sync;

  (* INIT = "0" *)
  reg         rd_store_frame_delay = 1'b0;
  reg         rd_store_frame;
  reg  [8:0]  rd_frames;
  reg         wr_fifo_full;

  reg  [1:0]  old_rd_addr;
  reg         update_addr_tog;
  wire        update_addr_tog_sync;
  reg         update_addr_tog_sync_reg;

  reg  [11:6] wr_rd_addr;
  wire [12:0] wr_addr_diff_in;
  reg  [11:0] wr_addr_diff;

  reg  [3:0]  wr_fifo_status;
  reg         rx_axis_fifo_tlast_int;

  wire        rx_fifo_reset;
  wire        rx_mac_reset;

  // invert reset sense as architecture is optimised for active high resets
  assign rx_fifo_reset = !rx_fifo_resetn;
  assign rx_mac_reset  = !rx_mac_resetn;


  //----------------------------------------------------------------------------
  // Begin FIFO architecture
  //----------------------------------------------------------------------------


  //----------------------------------------------------------------------------
  // Read state machines and control
  //----------------------------------------------------------------------------

  // Read state machine.
  // States are WAIT, QUEUE1, QUEUE2, QUEUE3, QUEUE_SOF, SOF, DATA, EOF.
  // Clock state to next state.
  always @(posedge rx_fifo_aclk)
  begin
     if (rx_fifo_reset == 1'b1) begin
        rd_state <= WAIT_s;
     end
     else begin
        rd_state <= rd_nxt_state;
     end
  end

  assign rx_axis_fifo_tlast = rx_axis_fifo_tlast_int;

  // Decode next state, combinatorial.
  always @(rd_state, frame_in_fifo, rd_eof, rx_axis_fifo_tready, rx_axis_fifo_tlast_int,
           rd_valid_pipe)
  begin
     case (rd_state)
        WAIT_s : begin
           // Wait until there is a full frame in the FIFO, then
           // start to load the pipeline.
           if (frame_in_fifo == 1'b1 && rx_axis_fifo_tlast_int == 1'b0) begin
              rd_nxt_state <= QUEUE1_s;
           end
           else begin
              rd_nxt_state <= WAIT_s;
           end
        end

        // Load the output pipeline, which takes three clock cycles.
        QUEUE1_s : begin
           rd_nxt_state <= QUEUE2_s;
        end

        QUEUE2_s : begin
           rd_nxt_state <= QUEUE3_s;
        end

        QUEUE3_s : begin
           rd_nxt_state <= QUEUE_SOF_s;
        end

        QUEUE_SOF_s : begin
           // The pipeline is full and the frame output starts now.
           rd_nxt_state <= DATA_s;
        end

        SOF_s : begin
           // A new frame begins immediately following end of last frame.
           if (rx_axis_fifo_tready == 1'b1) begin
              rd_nxt_state <= DATA_s;
           end
           else begin
              rd_nxt_state <= SOF_s;
           end
        end

        DATA_s : begin
           // Read data from the FIFO. When the EOF marker is detected from
           // the BRAM output, move to EOF state.
           if (rx_axis_fifo_tready == 1'b1 && rd_eof == 1'b1) begin
              rd_nxt_state <= EOF_s;
           end
           else begin
              rd_nxt_state <= DATA_s;
           end
        end

        EOF_s : begin
           // Hold in this state until tready is asserted and the EOF
           // marker (tlast) is accepted on interface.
           // If there is another frame in the FIFO, then it will already be
           // queued into the pipeline so move straight to SOF state.
           if (rx_axis_fifo_tready == 1'b1) begin
              if (rd_valid_pipe[1] == 1'b1) begin
                 rd_nxt_state <= SOF_s;
              end
              else begin
                 rd_nxt_state <= WAIT_s;
              end
           end
           else begin
              rd_nxt_state <= EOF_s;
           end
         end

         default : begin
           rd_nxt_state <= WAIT_s;
         end

     endcase
  end

  // Detect if frame_in_fifo was high 3 reads ago.
  // This is used to ensure we only treat data in the pipeline as valid if
  // frame_in_fifo goes high at or before the EOF marker of the current frame.
  // It may be that there is valid data (i.e a partial frame has been written)
  // but until the end of that frame we do not know if it is a good frame.
  always @(posedge rx_fifo_aclk)
  begin
     if (rx_axis_fifo_tready == 1'b1) begin
        rd_valid_pipe <= {rd_valid_pipe[0], frame_in_fifo};
     end
  end

  // Decode tlast signal from EOF marker.
  always @(posedge rx_fifo_aclk)
  begin
     if (rx_fifo_reset == 1'b1) begin
        rx_axis_fifo_tlast_int <= 1'b0;
     end
     else if (rx_axis_fifo_tready == 1'b1) begin
        // Assert tlast signal when the EOF marker has been detected, and
        // continue to drive it until it has been accepted on the interface.
        case (rd_state)
           EOF_s :
              rx_axis_fifo_tlast_int <= 1'b1;
           default :
              rx_axis_fifo_tlast_int <= 1'b0;
        endcase
     end
  end

  // Decode the tvalid output based on state.
  always @(posedge rx_fifo_aclk)
  begin
     if (rx_fifo_reset == 1'b1) begin
        rx_axis_fifo_tvalid <= 1'b0;
     end
     else begin
        case (rd_state)
           QUEUE_SOF_s :
              rx_axis_fifo_tvalid <= 1'b1;
           SOF_s :
              rx_axis_fifo_tvalid <= 1'b1;
           DATA_s :
              rx_axis_fifo_tvalid <= 1'b1;
           EOF_s :
              rx_axis_fifo_tvalid <= 1'b1;
           default :
              if (rx_axis_fifo_tready == 1'b1) begin
                 rx_axis_fifo_tvalid <= 1'b0;
              end
         endcase
     end
  end

  // Decode internal control signals.
  // rd_en is used to enable the BRAM read and load the output pipeline.
  always @(rd_state, rx_axis_fifo_tready)
  begin
     case (rd_state)
         WAIT_s :
            rd_en <= 1'b0;
         QUEUE1_s :
            rd_en <= 1'b1;
         QUEUE2_s :
            rd_en <= 1'b1;
         QUEUE3_s :
            rd_en <= 1'b1;
         QUEUE_SOF_s :
            rd_en <= 1'b1;
         default :
            rd_en <= rx_axis_fifo_tready;
     endcase
  end

  // When the BRAM is being read, enable the read address to be incremented.
  assign rd_addr_inc = rd_en;

  // When the current frame is done, and if there is no frame in the FIFO, then
  // the FIFO must wait until a new frame is written in. This requires the read
  // address to be moved back to where the new frame will be written. The
  // pipeline is then reloaded using the QUEUE states.
  always @(posedge rx_fifo_aclk)
  begin
     if (rx_fifo_reset == 1'b1) begin
        rd_addr_reload <= 1'b0;
     end
     else begin
        if (rd_state == EOF_s && rd_nxt_state == WAIT_s)
           rd_addr_reload <= 1'b1;
        else
           rd_addr_reload <= 1'b0;
     end
  end

  // Data is available if there is at leat one frame stored in the FIFO.
  always @(posedge rx_fifo_aclk)
  begin
     if (rx_fifo_reset == 1'b1) begin
        frame_in_fifo <= 1'b0;
     end
     else begin
        if (rd_frames != 9'b0) begin
           frame_in_fifo <= 1'b1;
        end
        else begin
           frame_in_fifo <= 1'b0;
        end
     end
  end

  // When a frame has been stored we need to synchronize that event to the
  // read clock domain for frame count store.
  tri_mode_ethernet_mac_0_sync_block resync_wr_store_frame_tog
  (
    .clk       (rx_fifo_aclk),
    .data_in   (wr_store_frame_tog),
    .data_out  (rd_store_frame_sync)
  );

  always @(posedge rx_fifo_aclk)
  begin
     rd_store_frame_delay <= rd_store_frame_sync;
  end

  // Edge detect of the resynchronized frame count. This creates a pulse
  // when a new frame has been stored.
  always @(posedge rx_fifo_aclk)
  begin
     if (rx_fifo_reset == 1'b1) begin
        rd_store_frame       <= 1'b0;
     end
     else begin
        // Edge detector
        if ((rd_store_frame_delay ^ rd_store_frame_sync) == 1'b1) begin
           rd_store_frame    <= 1'b1;
        end
        else begin
           rd_store_frame    <= 1'b0;
        end
     end
  end

  // This creates a pulse when a new frame has begun to be output.
  always @(posedge rx_fifo_aclk)
  begin
     if (rx_fifo_reset == 1'b1) begin
        rd_pull_frame <= 1'b0;
     end
     else begin
        if (rd_state == SOF_s && rd_nxt_state != SOF_s) begin
           rd_pull_frame <= 1'b1;
        end
        else if (rd_state == QUEUE_SOF_s && rd_nxt_state != QUEUE_SOF_s) begin
           rd_pull_frame <= 1'b1;
        end
        else begin
           rd_pull_frame <= 1'b0;
        end
     end
  end

  // Up/down counter to monitor the number of frames stored within
  // the FIFO. Note:
  //    * increments at the end of a frame write cycle
  //    * decrements at the beginning of a frame read cycle
  always @(posedge rx_fifo_aclk)
  begin
     if (rx_fifo_reset == 1'b1) begin
        rd_frames <= 9'b0;
     end
     else begin
        // A frame is written to the FIFO in this cycle, and no frame is being
        // read out on the same cycle.
        if (rd_store_frame == 1'b1 && rd_pull_frame == 1'b0) begin
           rd_frames <= rd_frames + 9'b1;
        end
        // A frame is being read out on this cycle and no frame is being
        // written on the same cycle.
        else if (rd_store_frame == 1'b0 && rd_pull_frame == 1'b1) begin
           rd_frames <= rd_frames - 9'b1;
        end
     end
  end


  //----------------------------------------------------------------------------
  // Write state machines and control
  //----------------------------------------------------------------------------

  // Write state machine.
  // States are IDLE, FRAME, GF, BF, OVFLOW.
  // Clock state to next state.
  always @(posedge rx_mac_aclk)
  begin
     if (rx_mac_reset == 1'b1) begin
        wr_state <= IDLE_s;
     end
     else begin
        wr_state <= wr_nxt_state;
     end
  end

  // Decode next state, combinatorial.
  always @(wr_state, wr_dv_pipe[1], wr_gf, wr_bf, wr_fifo_full)
  begin
     case (wr_state)
        IDLE_s : begin
           // There is data in the incoming pipeline when dv_pipe[1] goes high.
           if (wr_dv_pipe[1] == 1'b1) begin
              wr_nxt_state <= FRAME_s;
           end
           else begin
              wr_nxt_state <= IDLE_s;
           end
        end

        FRAME_s : begin
           // If FIFO is full then go to overflow state.
           // If the good or bad flag is detected, then the end of the frame
           // has been reached and the gf or bf state is visited before idle.
           // Otherwise remain in frame state while data is written to FIFO.
           if (wr_fifo_full == 1'b1) begin
              wr_nxt_state <= OVFLOW_s;
           end
           else if (wr_gf == 1'b1) begin
              wr_nxt_state <= GF_s;
           end
           else if (wr_bf == 1'b1) begin
              wr_nxt_state <= BF_s;
           end
           else begin
              wr_nxt_state <= FRAME_s;
           end
        end

        GF_s : begin
           // Return to idle and wait for next frame.
           wr_nxt_state <= IDLE_s;
        end

        BF_s : begin
           // Return to idle and wait for next frame.
           wr_nxt_state <= IDLE_s;
        end

        OVFLOW_s : begin
           // Wait until the good or bad flag received.
           if (wr_gf == 1'b1 || wr_bf == 1'b1) begin
              wr_nxt_state <= IDLE_s;
           end
           else begin
              wr_nxt_state <= OVFLOW_s;
           end
        end

        default : begin
           wr_nxt_state <= IDLE_s;
        end

     endcase
  end

  // Decode control signals, combinatorial.
  // wr_en is used to enable the BRAM write and loading of the input pipeline.
  assign wr_en = (wr_state == FRAME_s) ? wr_dv_pipe[2] : 1'b0;

  // Increment the write address when we are receiving valid frame data.
  assign wr_addr_inc = (wr_state == FRAME_s) ? wr_dv_pipe[2] : 1'b0;

  // If the FIFO overflows or a frame is to be dropped, we need to move the
  // write address back to the start of the frame.  This allows the data to be
  // overwritten.
  assign wr_addr_reload = (wr_state == BF_s || wr_state == OVFLOW_s)
                          ? 1'b1 : 1'b0;

  // The start address is saved when in the idle state.
  assign wr_start_addr_load = (wr_state == IDLE_s) ? 1'b1 : 1'b0;

  // We need to know when a frame is stored, in order to increment the count of
  // frames stored in the FIFO.
  always @(posedge rx_mac_aclk)
  begin
     if (wr_state == GF_s) begin
        wr_store_frame_tog <= !wr_store_frame_tog;
     end
  end


  //----------------------------------------------------------------------------
  // Address counters
  //----------------------------------------------------------------------------

  // Write address is incremented when data is being written into the FIFO.
  always @(posedge rx_mac_aclk)
  begin
     if (rx_mac_reset == 1'b1) begin
        wr_addr <= 12'b0;
     end
     else begin
        if (wr_addr_reload == 1'b1) begin
           wr_addr <= wr_start_addr;
        end
        else if (wr_addr_inc == 1'b1) begin
           wr_addr <= wr_addr + 12'b1;
        end
     end
  end

  // Store the start address.
  always @(posedge rx_mac_aclk)
  begin
     if (rx_mac_reset == 1'b1) begin
        wr_start_addr <= 12'b0;
     end
     else begin
        if (wr_start_addr_load == 1'b1) begin
           wr_start_addr <= wr_addr;
        end
     end
  end

  // Read address is incremented when data is being read from the FIFO.
  always @(posedge rx_fifo_aclk)
  begin
     if (rx_fifo_reset == 1'b1) begin
        rd_addr <= 12'd0;
     end
     else begin
        if (rd_addr_reload == 1'b1) begin
           rd_addr <= rd_addr - 12'd3;
        end
        else if (rd_addr_inc == 1'b1) begin
           rd_addr <= rd_addr + 12'd1;
        end
     end
  end


  //----------------------------------------------------------------------------
  // Data pipelines
  //----------------------------------------------------------------------------

  // Register data inputs to BRAM.
  // No resets to allow for SRL16 target.
  always @(posedge rx_mac_aclk)
  begin
     wr_data_pipe[0] <= rx_axis_mac_tdata;
     wr_data_pipe[1] <= wr_data_pipe[0];
     wr_data_bram    <= wr_data_pipe[1];
  end

  // The valid input enables BRAM write and is a condition for other signals.
  always @(posedge rx_mac_aclk)
  begin
     wr_dv_pipe[0] <= rx_axis_mac_tvalid;
     wr_dv_pipe[1] <= wr_dv_pipe[0];
     wr_dv_pipe[2] <= wr_dv_pipe[1];
  end

  // End of frame flag set when tlast and tvalid are asserted together.
  always @(posedge rx_mac_aclk)
  begin
     wr_eof_bram_pipe[0] <= rx_axis_mac_tlast;
     wr_eof_bram_pipe[1] <= wr_eof_bram_pipe[0];
     wr_eof_bram <= wr_eof_bram_pipe[1] & wr_dv_pipe[1];
  end

  // Upon arrival of EOF flag, the frame is good good if tuser signal
  // is low, and bad if tuser signal is high.
  always @(posedge rx_mac_aclk)
  begin
     wr_gfbf_pipe[0] <= rx_axis_mac_tuser;
     wr_gfbf_pipe[1] <= wr_gfbf_pipe[0];
     wr_gf <= !wr_gfbf_pipe[1] & wr_eof_bram_pipe[1] & wr_dv_pipe[1];
     wr_bf <=  wr_gfbf_pipe[1] & wr_eof_bram_pipe[1] & wr_dv_pipe[1];
  end

  // Register data outputs from BRAM.
  // No resets to allow for SRL16 target.
  always @(posedge rx_fifo_aclk)
  begin
     if (rd_en == 1'b1) begin
          rd_data_delay <= rd_data_bram;
          rd_data_pipe  <= rd_data_delay;
          rx_axis_fifo_tdata <= rd_data_pipe;
     end
  end

  always @(posedge rx_fifo_aclk)
  begin
     if (rd_en == 1'b1) begin
          rd_eof <= rd_eof_bram[0];
     end
  end

  //----------------------------------------------------------------------------
  // Overflow functionality
  //----------------------------------------------------------------------------

  // to minimise the number of read address updates the bottom 6 bits of the
  // read address are not passed across and the write domain will only sample
  // them when bits 5 and 4 of the read address transition from 01 to 10.
  // Since this is for full detection this just means that if the read stops
  // the write will hit full up to 64 locations early

  // need to use two bits and look for an increment transition as reload can cause
  // a decrement on this boundary (decrement is only by 3 so above bit 2 should be safe)
  always @(posedge rx_fifo_aclk)
  begin
     if (rx_fifo_reset == 1'b1) begin
        old_rd_addr <= 2'b00;
        update_addr_tog <= 1'b0;
     end
     else begin
        old_rd_addr <= rd_addr[5:4];
        if (rd_addr[5:4] == 2'b10 & old_rd_addr == 2'b01) begin
           update_addr_tog <= !update_addr_tog;
        end
     end
  end


  tri_mode_ethernet_mac_0_sync_block sync_rd_addr_tog
  (
    .clk      (rx_mac_aclk),
    .data_in  (update_addr_tog),
    .data_out (update_addr_tog_sync)
  );

  // Convert the synchronized read address pointer gray code back to binary.
  always @(posedge rx_mac_aclk)
  begin
     if (rx_mac_reset == 1'b1) begin
        update_addr_tog_sync_reg <= 1'b0;
        wr_rd_addr               <= 6'd0;
     end
     else begin
        update_addr_tog_sync_reg <= update_addr_tog_sync;
        if (update_addr_tog_sync_reg ^ update_addr_tog_sync) begin
           wr_rd_addr <= rd_addr[11:6];
        end
     end
  end

  assign wr_addr_diff_in = {1'b0, wr_rd_addr, 6'd0} - {1'b0,wr_addr};

  // Obtain the difference between write and read pointers.
  always @(posedge rx_mac_aclk)
  begin
     if (rx_mac_reset == 1'b1) begin
        wr_addr_diff <= 12'b0;
     end
     else begin
        wr_addr_diff <= wr_addr_diff_in[11:0];
     end
  end

  // Detect when the FIFO is full.
  // The FIFO is considered to be full if the write address pointer is
  // within 0 to 3 of the read address pointer.
  always @(posedge rx_mac_aclk)
  begin
     if (rx_mac_reset == 1'b1) begin
        wr_fifo_full <= 1'b0;
     end
     else begin
        if (wr_addr_diff[11:4] == 8'b0 && wr_addr_diff[3:2] != 2'b0) begin
           wr_fifo_full <= 1'b1;
        end
        else begin
           wr_fifo_full <= 1'b0;
        end
     end
  end

  // Decode the overflow indicator output.
  assign fifo_overflow = (wr_state == OVFLOW_s) ? 1'b1 : 1'b0;


  //----------------------------------------------------------------------------
  // FIFO status signals
  //----------------------------------------------------------------------------

  // The FIFO status is four bits which represents the occupancy of the FIFO
  // in sixteenths. To generate this signal we therefore only need to compare
  // the 4 most significant bits of the write address pointer with the 4 most
  // significant bits of the read address pointer.

  always @(posedge rx_mac_aclk)
  begin
     if (rx_mac_reset == 1'b1) begin
         wr_fifo_status <= 4'b0;
     end
     else begin
        if (wr_addr_diff == 12'b0) begin
           wr_fifo_status <= 4'b0;
        end
        else begin
           wr_fifo_status[3] <= !wr_addr_diff[11];
           wr_fifo_status[2] <= !wr_addr_diff[10];
           wr_fifo_status[1] <= !wr_addr_diff[9];
           wr_fifo_status[0] <= !wr_addr_diff[8];
        end
     end
  end

  assign fifo_status = wr_fifo_status;


  //----------------------------------------------------------------------------
  // Instantiate FIFO block memory
  //----------------------------------------------------------------------------

  assign wr_eof_data_bram[8]   = wr_eof_bram;
  assign wr_eof_data_bram[7:0] = wr_data_bram;

  assign rd_eof_bram[0] = rd_eof_data_bram[8];
  assign rd_data_bram   = rd_eof_data_bram[7:0];

tri_mode_ethernet_mac_0_bram_tdp #
(
     .DATA_WIDTH  (9),
     .ADDR_WIDTH  (12)
  )
  rx_ramgen_i (
     .b_dout  (rd_eof_data_bram),
     .a_addr  (wr_addr[11:0]),
     .b_addr  (rd_addr[11:0]),
     .a_clk   (rx_mac_aclk),
     .b_clk   (rx_fifo_aclk),
     .a_din   (wr_eof_data_bram),
     .b_en    (rd_en),
     .a_rst   (rx_mac_reset),
     .b_rst   (rx_fifo_reset),
     .a_wr    (wr_en)
  );

endmodule
