/*
 * Copyright (c) 2019 Yizhou Shan <ys@purdue.edu>. All rights reserved.
 * License: Apache License v2.0
 */

/*
 * This file is the testbench for counter.v
 * It seems there is no need to separate these two modules into two files.
 * But this makes the whole thing cleaner.
 *
 * Braindead verilog. How can I use this to handle complex logic? Say,
 * how can I handle a network packet?
 */

`include "counter.v"

module counter_tb();

	reg clk, reset, enable;
	wire [3:0] counter1, counter2;

	initial begin
		$display("Time clk reset enable counter1 counter2");
		$monitor("%g %b %b %b %b %b",
			$time, clk, reset, enable, counter1, counter2);
		
		clk = 1;
		reset = 0;
		enable = 0;

		#5 reset = 1;
		#10 reset = 0;

		#5 enable = 1;
		#100 enable = 0;

		#10 $finish;
	end

	/* Clock generator */
	always begin
		#5 clk = ~clk;
	end

	counter counter_foo(clk, reset, enable, counter1);
	counter counter_bar(clk, reset, enable, counter2);

endmodule
