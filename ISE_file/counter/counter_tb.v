`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:46:38 08/17/2023
// Design Name:   counter
// Module Name:   D:/lzq123/ISE_file/counter/counter_tb.v
// Project Name:  counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] cnt;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk), 
		.rst(rst), 
		.cnt(cnt)
	);

	initial begin
		// Initialize Inputs
		#0 clk = 0;
			rst = 0;
		#5 rst = 1'b1;
	end
	always #10 clk=~clk;
      
endmodule

