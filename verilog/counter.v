/*
 * Copyright (c) 2019 Yizhou Shan <ys@purdue.edu>. All rights reserved.
 * License: Apache License v2.0
 */

module counter(input clk, input reset, input enable,
	       output [3:0] out);

	wire clk, reset, enable;
	reg [3:0] out;

	always @ (posedge clk) begin
		if (reset == 1'b1) begin
			out <= 4'b0000;
		end else if (enable == 1'b1) begin
			out <= out + 1;
		end
	end
endmodule
