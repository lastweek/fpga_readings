/*
 * Copyright (c) 2019 Yizhou Shan <ys@purdue.edu>. All rights reserved.
 * License: Apache License v2.0
 */

/*
 * This file is used to explore different syntaxs
 * I'm reading Introduction to Verilog (Peter M. Nyasulu). Nice and concise.
 *
 * I went though all the syntaxs, and had a basic understanding now.
 * I still need to write and practice more, and experience more erros to
 * learn. Anyhow, now the thing is I need to learn how the verilog code is
 * mapped into actual gate logic. Especially how this code will be executed
 * concurrently..
 */

`include "counter.v"

`define AAA aaa
`define BBB bbb

module add4(input [3:0] a, input [3:0] b, output [3:0] c);
	assign c = a & b;
endmodule

/* A parameterized module */
module shift_n(input [7:0] in, output [7:0] out);
	/*
	 * The parameter n feels like an argument passed down
	 * by caller. It truly is, but in a weird way.
	 *
	 * And we initialize to 2. GCC has an option to have compile
	 * error is n is not set before use. Does Verilog compiler
	 * has similar stuff?
	 */
	parameter n = 2;
	assign out = (in << n);
endmodule

/*
 * Typically inputs are wire since their data is latched outside the module.
 * Outputs are type reg if their signals were stored inside an always or initial block.
 */
module foo(input clk, input i1, input i2, input [15:0] i3,
	   output o1, output reg o2, output reg [7:0] o3);

	wire [7:0] shift_in, shift_out;
	wire foo_1, foo_2;
	reg bar_1, bar_2;

	/* Test parameterized module: pass n = 3 */
	shift_n #(3) shift_foo(shift_in, shift_out);

	/*
	 * {initial begin} is a one-time init function
	 * which will be executed at the very beginning.
	 * It feels like a constructor.
	 */
	initial begin
		bar_1 = 1;

		/*
		 * 1) Delayed assignment: wait 5 cycles before executing
		 *    right-handle statement.
		 * 2) Intra-assignment delay: after executing right-handle
		 *    statement, wait 5 cycles to assign the value to left-hand.
		 *
		 * Both are just used in simulation. Not for synthesis.
		 */
		#5 bar_1 = 0;
		bar_1 = #5 1;

		$display("Howdy");
		$display("`AAA");
	end

	/*
	 * Blocking assignment:
	 * bar_2 will not be executed until bar_1 was assigned.
	 * This is like C code.
	 */
	always @ (posedge clk) begin
		bar_1 = i1;
		bar_2 = i2;
	end

endmodule
