# Deploy Tri-Mode MAC Reference Design at Arty A7-100T

This directory contains my modified code and a simple note that records the steps I made to deploy tri-mode mac reference design on arty a7-100T. We first modify the original code to make it work on Arty A7-100T board, then we add our own HLS based packet generator and loopback logic (more to come).

## Just make the default code work

You may never need to do this, maybe because you have the Xilinx AC701 board, or because you are lucky enough to stay away from FPGA. But for those who stuck here just like me, let's rock.

Important things changed
- Clock
	- Change differential clock into single-ended clock
	- Change MMCM parameters
	- Generate one more 25MHz clock for PHY
- Constraints
	- Modify all top-level ports
	- Delete `mii_tx_er`, and `gtx_clk_bufg_out`

Steps
- First try out its `demo_tb.v`. Works.
- Default `clk_in_p` and `clk_in_n` assume 200MHz and it's diffirential clocks. Arty board only has a single-ended 100MHz clock. We need to change this.
	- First step is to replace exiting two `clk_in_x` with single `clk_in`, and remove IBUFDS. Change from top file to clock file. Easy.
	- At `tri_mode_ethernet_mac_0_clk_wiz`, change the paramaters of `MMCME2_ADV`. I got the new parameters by using a clock wizard in block design (who the hell using MMCM directly?). Our input is 100MHz, first output is 125MHz, second output is 100MHz.
		a. change `.CLKFBOUT_MULT_F` from `5` to `10`
		b. change `.CLKIN1_PERIOD` from `5` to `10`
	- Change `demo_tb.v`.
		a. change `clk_in_x` to `clk_in`
		b. change `gtx_period` to `5000`ps. Since we change from 200MHz to 100MHz clock.
	- Run `demo_tb.v`. Make sure our changes are correct. Works.
	- Okay, we need to add one more clock for PHY, I named it `mii_ref_clk_out`. Repeat the above steps and verify by running testbench.
- Modify xdc file
	- Map LEDs, buttons, switches accordingly
	- Map 25MHz clock to PHY X1 (according to [this](https://reference.digilentinc.com/_detail/arty/arty_eth.png?id=reference%3Aprogrammable-logic%3Aarty-a7%3Areference-manual))
- Write bitstream and test
	- Use Wireshark
	- Turn on SW2 to turn on packets generation, and you should be able to see LD5 flash
	- You should be able to see LEDs flash and RJ-45 LEDs flashing as well

Summary
- This is my first FPGA project, I spent a lot time just try to understand, modify, and deploy. I read many Xilinx documents such as SelectIO, clocking, constraints etc. I'm super glad I've read them, otherwise I will never be able to easily understand how to use clock wizard, MMCM, LVCMOS33 etc.
- We need to make some clock/xdc changes to original tri-mode ref design, as we noted above. It's not complex, and might be difficult for newbies.
- You will be able to find my code here. I did not maintain the git history for them.

## Hook with HLS-based Packet Generator

At `hls_pkt_gen/` folder, we use HLS to create a simple, buggy, but working packet generator.

Code changes at `tri_mode_ethernet_mac_0_basic_pat_gen.v`:
```
+/*
 tri_mode_ethernet_mac_0_axi_pat_gen #(
    .DEST_ADDR                 (DEST_ADDR),
    .SRC_ADDR                  (SRC_ADDR),
@@ -157,6 +161,19 @@ tri_mode_ethernet_mac_0_axi_pat_gen #(
    .activity_flash_gen        (activity_flash_gen),
    .pkt_gen_enabled           (pkt_gen_enabled)
 );
+*/
+
+/*
+ * This is my simple HLS-based packet generator.
+ */
+pkt_gen_0 my_pkt_gen(
+    .ap_clk               (axi_tclk),
+    .ap_rst_n               (axi_tresetn),
+    .output_r_TVALID        (pat_gen_tvalid),
+    .output_r_TREADY        (pat_gen_tready),
+    .output_r_TDATA           (pat_gen_tdata),
+
```

To test, in your host:
- Open wireshark and monitor packets
- Program FPGA, you should be able see many length varied packets

## Hook with HLS-based Loopback

At `hls_loopback/` folder, we use HLS to create a simple yet working loopback module.
You should replace the original `basic_pat_gen_inst` with our new generated IP.

Code changes at `tri_mode_ethernet_mac_0_example_design.v`:
```
+/*
    tri_mode_ethernet_mac_0_basic_pat_gen basic_pat_gen_inst (
       .axi_tclk                     (tx_fifo_clock),
       .axi_tresetn                  (tx_fifo_resetn),
@@ -710,9 +711,32 @@ module tri_mode_ethernet_mac_0_example_design
       .activity_flash_gen              (int_activity_flash_gen),
       .pkt_gen_enabled              (pkt_gen_enabled)
    );
+*/

+/*
+ * This is our own HLS-based loopback
+ * Checkout hls_loopback
+ */
+top_func_0 loopback (
+        /*
+         * Input from FIFO
+         */
+      .input_r_TVALID(rx_axis_fifo_tvalid),    // input wire input_r_TVALID
+      .input_r_TREADY(rx_axis_fifo_tready),    // output wire input_r_TREADY
+      .input_r_TDATA(rx_axis_fifo_tdata),      // input wire [31 : 0] input_r_TDATA
+      .input_r_TLAST(rx_axis_fifo_tlast),      // input wire [0 : 0] input_r_TLAST
+
+      /*
+       * Output to FIFO
+       */
+      .output_r_TVALID(tx_axis_fifo_tvalid),  // output wire output_r_TVALID
+      .output_r_TREADY(tx_axis_fifo_tready),  // input wire output_r_TREADY
+      .output_r_TDATA(tx_axis_fifo_tdata),    // output wire [31 : 0] output_r_TDATA
+      .output_r_TLAST(tx_axis_fifo_tlast),    // output wire [0 : 0] output_r_TLAST
+
+      .ap_clk(tx_fifo_clock),                    // input wire ap_clk
+      .ap_rst_n(tx_fifo_resetn)                // input wire ap_rst_n
+);
```

To test, in your host:
- Open wireshark and monitor packets
- Run `arping -I yourNetworkInterface 1.1.1.1 -c 1`, here `yourNetworkInterface` can be obtained from `ifconfig`. `-c 1` means only 1 arp packet will be sent out.
- You should be able to be see 2 packets in wireshark: 1 sent by your host, 1 loopback from FPGA.