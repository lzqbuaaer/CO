`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:53:49 10/06/2023 
// Design Name: 
// Module Name:    test 
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
module test(
    output reg a,
    output reg b,
    output reg c
    );
	initial begin
		a=1;
		b=0;
		c=1;
	end
		
	initial begin
		#1;
		a<=b;
		b=c;
		c<=b;
	end

endmodule
