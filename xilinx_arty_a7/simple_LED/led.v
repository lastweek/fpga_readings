/*
 * Hello world of this arty-a7 board: a simple LED program, whenever you change
 * the switch or push the button, several LEDs will be illuminated.
 *
 * The actual mapping between the led/tri_led and the on-board LED is
 * described by the constraint file. Interesting.
 */
module led(input [3:0]sw, input [3:0]btn,
	   output [3:0]led, output [3:0]tri_led);

	assign led = sw | btn;
	assign tri_led = sw | btn;
endmodule
