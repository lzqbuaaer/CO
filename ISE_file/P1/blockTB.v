`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:56:46 10/14/2023
// Design Name:   BlockChecker
// Module Name:   D:/lzq123/co/ISE_file/P1/blockTB.v
// Project Name:  P1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BlockChecker
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module blockTB;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] in;

	// Outputs
	wire result;

	// Instantiate the Unit Under Test (UUT)
	BlockChecker uut (
		.clk(clk), 
		.reset(reset), 
		.in(in), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		in = 0;

		// Wait 5ns for global reset to finish
		#5 reset = 0;
		in = 97;
		#10 in = 32;
		#10 in = 66;
		#10 in = 69;
		#10 in = 103;
		#10 in = 73;
		#10 in = 110;
		#10 in = 32;
		#10 in = 69;
		#10 in = 110;
		#10 in = 100;
		#10 in = 99;
		#10 in = 32;
		#10 in = 101;
		#10 in = 110;
		#10 in = 100;
		#10 in = 32;
		#10 in = 101;
		#10 in = 110;
		#10 in = 100;
		#10 in = 32;
		#10 in = 98;
		#10 in = 69;
		#10 in = 71;
		#10 in = 105;
		#10 in = 110;
   end
		// Add stimulus here
		always #5 clk = ~clk;
      
endmodule

