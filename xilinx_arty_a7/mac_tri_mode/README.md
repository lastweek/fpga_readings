# Deploy Tri-Mode MAC Reference Design at Arty A7-100T

This directory contains my modified code and a simple note that records the steps I made to deploy tri-mode mac reference design on arty a7-100T.

You may never need to do this, maybe because you have the Xilinx AC701 board, or because you are lucky enough to stay away from FPGA.
But for those who have Arty A7-100T board and want to deploy your own network functions, this simple note can save you sooo much time.

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
