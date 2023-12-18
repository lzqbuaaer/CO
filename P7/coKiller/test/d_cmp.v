`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:08:09 11/23/2023 
// Design Name: 
// Module Name:    d_cmp 
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
module d_cmp(
    input [31:0] srcA,
    input [31:0] srcB,
    output beqZero
    );
	
	assign beqZero = (srcA == srcB) ? 1 : 0;


endmodule
