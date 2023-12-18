`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:05:49 11/23/2023 
// Design Name: 
// Module Name:    e_alu 
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
module e_alu(
    input [31:0] srcA,
    input [31:0] srcB,
    input [2:0] aluOp,
	input isAri,
	input [3:0] lsOp_E,
    output [31:0] aluResult,
	output [4:0] E_excCode
    );

	assign aluResult = (aluOp == 3'b001) ? srcA & srcB :
								(aluOp == 3'b010) ? srcA | srcB :
								(aluOp == 3'b011) ? srcA + srcB :
								(aluOp == 3'b100) ? srcA - srcB :
								(aluOp == 3'b101) ? 
																		($signed(srcA) < $signed(srcB)) ? 32'h1 : 32'h0
																		:
								(aluOp == 3'b110) ?
																		(srcA < srcB) ? 32'h1 : 32'h0 
																	: 0;
																	
	wire [32:0] A1Ext = {srcA[31], srcA[31:0]};
	wire [32:0] A2Ext = {srcB[31], srcB[31:0]};
	wire [32:0] sum = A1Ext[32:0] + A2Ext[32:0];
	wire [32:0] sub = A1Ext[32:0] - A2Ext[32:0];
	wire outRange = (sum[32] != sum[31]) | (sub[32] != sub[31]);
	
	wire excAriOv;
	
	assign excAriOv = (isAri & outRange);
	assign excLOv = ((lsOp_E == 4'b0001) | (lsOp_E == 4'b0010) | (lsOp_E == 4'b0011) | (lsOp_E == 4'b0100) | (lsOp_E == 4'b0101)) & outRange;
	assign excSOv = ((lsOp_E == 4'b0110) | (lsOp_E == 4'b0111) | (lsOp_E == 4'b1000)) & outRange;
	
	assign E_excCode = excAriOv ? `Ov :
												excLOv ? `ADEL :
												excSOv ? `ADES : 5'd0;

endmodule
