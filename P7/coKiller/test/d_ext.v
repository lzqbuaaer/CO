`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:52:32 11/23/2023 
// Design Name: 
// Module Name:    d_ext 
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
module d_ext(
    input [1:0] extOp,
    input [15:0] imm_in,
    output [31:0] imm_out
    );
	
	assign imm_out = (extOp == 2'b01) ? {{16{1'b0}}, imm_in} : 
							(extOp == 2'b10) ? {{16{imm_in[15]}}, imm_in} :
							(extOp == 2'b11) ? ({{16{1'b0}}, imm_in} << 16) : 0;


endmodule
