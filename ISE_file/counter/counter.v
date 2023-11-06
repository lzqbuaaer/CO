`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:45:37 08/17/2023 
// Design Name: 
// Module Name:    counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module counter(
    input clk,
    input rst,
    output reg [7:0] cnt
    );
	always@(posedge clk,negedge rst) begin
		if(!rst)
		cnt<=0;
		else
		cnt<=cnt+1'b1;
	end

endmodule
