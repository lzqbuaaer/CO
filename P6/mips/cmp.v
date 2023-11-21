`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:09:12 11/09/2023 
// Design Name: 
// Module Name:    cmp 
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
`include "head.v"
module cmp(
    input [31:0] rs,
    input [31:0] rt,
	 input [1:0] CMPOp,
    output jump
    );
    assign jump = (CMPOp == `CMP_BEQ) ? (rs == rt) :
	               (CMPOp == `CMP_BNE) ? (rs != rt) : 1'b0;

endmodule
