`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:34 08/17/2023 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [3:0] inA,
    input [3:0] inB,
	 input [1:0] inC,
    input [1:0] op,
    output [3:0] ans
    );
	 reg [3:0] ans1,ans2;
	 ans1 = $signed($signed(inA)>>>inC);
	 ans2 = inA>>inC;
	 assign ans=(op==2'b00)?(ans1):
					(op==2'b01)?(ans2):
					(op==2'b10)?(inA-inB):
					(op==2'b11)?(inA+inB):
					4'b000;
	

endmodule
