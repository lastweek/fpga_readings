# Deploy Tri-Mode MAC Reference Design at Arty A7-100T

Things changed
-

Steps
1. First try out its `demo_tb.v`. Works.
2. Default `clk_in_p` and `clk_in_n` assume 200MHz and it's diffirential clocks. Arty board only has a single-ended 100MHz clock. We need to change this.
	1. First step is to replace exiting two `clk_in_x` with single `clk_in`, and remove IBUFDS. Change from top file to clock file. Easy.
	2. At `tri_mode_ethernet_mac_0_clk_wiz`, change the paramaters of `MMCME2_ADV`. I compare the output by using a clock wizard in block design. Our input is 100MHz, first output is 125MHz, second output is 100MHz.
		a. change `.CLKFBOUT_MULT_F` from `5` to `10`
		b. change `.CLKIN1_PERIOD` from `5` to `10`
	3. Change `demo_tb.v`.
		a. change `clk_in_x` to `clk_in`
		b. change `gtx_period` to `5000`ps. Since we change from 200MHz to 100MHz clock.
	4. Run `demo_tb.v`. Make sure our changes are correct. Works.
3. Modify xdc file
4. Write bitstream and test