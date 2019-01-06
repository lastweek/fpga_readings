# Clocked LED

This example tries to demonstrate how to use the on-board clock.
The program takes `board_clk` and `switch` as input, and output is LED.

Some basic concepts:

	- The clock source is the on-board oscillator, which connects to pin E3.
	  This is the ONLY global clock source on the entire Arty board.
	  The common practice is we take this clock as input, and then use PLL/DLL/whatever
	  to transform it into multiple clocks with different frequencies.
	- Check out the xdc file. We used `create_clock` to generate the primary clock.
	- Check out the schematic pdf. You can see that there are some `IBUF`, `BUFG`,
	  and `OBUF` added automatically. I don't know why they are added, maybe because of the
	  FPGA. I've read UG402 (timing) and UG403 (SelectIO), these two docs talk about
	  those IO buf and clock buf. I have not fully understand yet.
	  Anyhow, at least I know that these are automatically generated.
