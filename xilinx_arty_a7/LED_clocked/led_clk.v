`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2019 02:17:14 PM
// Design Name: 
// Module Name: led_clk
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module led_clk (
    input board_clk,
    input switch,
    output reg [3:0] led);

    reg [32:0] counter;

    always @ (posedge board_clk) 
    begin
        if (switch == 1'b1)
            begin
                counter <= counter + 1;
                led[0] = counter[26];
            end
    end
endmodule