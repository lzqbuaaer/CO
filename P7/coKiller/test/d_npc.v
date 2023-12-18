`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:54:56 11/23/2023 
// Design Name: 
// Module Name:    d_npc 
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
module d_npc(
    input [31:0] PC_F,
	input [31:0] PC_D,
    input [2:0] nPcSel,
    input [25:0] imm,
    input [31:0] ra,
	output [31:0] PCNext,
	
	input req,
	input eret,
	input [31:0] EPC
    );
	
	wire [31:0] beqAddr = (PC_D + 4) + {{14{imm[15]}}, imm[15:0], {2{1'b0}}};
	wire [31:0] jalAddr = {PC_D[31:28], imm[25:0], {2{1'b0}}};
	
	assign PCNext = (req) ? 32'h00004180 :
									(eret) ? EPC + 4 :
									(nPcSel == 3'b000) ? (PC_F + 4) :
									(nPcSel == 3'b001) ? beqAddr : 
									(nPcSel == 3'b010) ? jalAddr : 
									(nPcSel == 3'b011) ? ra : 0;


endmodule