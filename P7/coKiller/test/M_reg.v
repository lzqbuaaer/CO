`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:22:56 11/23/2023 
// Design Name: 
// Module Name:    M_reg 
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
module M_reg(
    input clk,
    input reset,
    input [31:0] instr_E,
    input [31:0] PC_E,
    input [31:0] aluResult_E,
    input [31:0] V2_E_f,
	input [1:0] Tnew_E,
	input [4:0] A2_E,
	input [4:0] A3_E,
    output [31:0] instr_M,
    output [31:0] PC_M,
    output [31:0] aluResult_M,
    output [31:0] V2_M,
	output [1:0] Tnew_M,
	output [4:0] A2_M,
	output [4:0] A3_M,
	
	// control signals
	input regWrite_E,
	input [1:0] regDst_E,
	input aluSrc_E,
	input [2:0] aluOp_E,
	input [2:0] write2reg_E,
	input memWrite_E,
	input [2:0] nPcSel_E,
	input [1:0] extOp_E,
	input [3:0] lsOp_E,
	
	output regWrite_M,
	output [1:0] regDst_M,
	output aluSrc_M,
	output [2:0] aluOp_M,
	output [2:0] write2reg_M,
	output memWrite_M,
	output [2:0] nPcSel_M,
	output [1:0] extOp_M,
	output [3:0] lsOp_M,
	
	input [4:0] E_excCode,
	output [4:0] M_excCode_old,
	
	input cp0Wr_E,
	input bd_E,
	output cp0Wr_M,
	output bd_M,
	input req,
	input stall,
	input mtc0_E,
	output mtc0_M
	// 
    );
	
	reg [31:0] instr_reg;
	reg [31:0] PC_reg;
	reg [31:0] aluResult_reg;
	reg [31:0] V2_f_reg;
	reg [1:0] Tnew_reg;
	reg [4:0] A2_reg;
	reg [4:0] A3_reg;
	
	reg regWrite_reg;
	reg [1:0] regDst_reg;
	reg aluSrc_reg;
	reg [2:0] aluOp_reg;
	reg [2:0] write2reg_reg;
	reg memWrite_reg;
	reg [2:0] nPcSel_reg;
	reg [1:0] extOp_reg;
	reg [3:0] lsOp_reg;
	
	reg [4:0] exc_reg;
	
	reg cp0Wr_reg;
	reg bd_reg;
	reg mtc0_reg;
	
	assign instr_M = instr_reg;
	assign PC_M = PC_reg;
	assign aluResult_M = aluResult_reg;
	assign V2_M = V2_f_reg;
	assign Tnew_M = (Tnew_reg == 2'b00) ? 2'b00 : (Tnew_reg - 1);
	assign A2_M = A2_reg;
	assign A3_M = A3_reg;
	
	assign regWrite_M = regWrite_reg;
	assign regDst_M = regDst_reg;
	assign  aluSrc_M =  aluSrc_reg;
	assign aluOp_M = aluOp_reg;
	assign write2reg_M = write2reg_reg;
	assign memWrite_M = memWrite_reg;
	assign nPcSel_M = nPcSel_reg;
	assign extOp_M = extOp_reg;
	assign lsOp_M = lsOp_reg;
	assign M_excCode_old = exc_reg;
	
	assign cp0Wr_M = cp0Wr_reg;
	assign bd_M = bd_reg;
	assign mtc0_M = mtc0_reg;
	
	always@(posedge clk) begin
		if (reset | req) begin
			instr_reg <= 0;
			PC_reg <= req ? 32'h0000_4180 : 0;
			aluResult_reg <= 0;
			V2_f_reg <= 0;
			regWrite_reg <= 0;
			regDst_reg <= 0;
			aluSrc_reg <= 0;
			aluOp_reg <= 0;
			write2reg_reg <= 0;
			memWrite_reg <= 0;
			nPcSel_reg <= 0;
			extOp_reg <= 0;
			lsOp_reg <= 0;
			Tnew_reg <= 0;
			A2_reg <= 0;
			A3_reg <= 0;
			exc_reg <= 0;
			cp0Wr_reg <= 0;
			bd_reg <= 0;
			mtc0_reg <= 0;
		end else begin
			instr_reg <= instr_E;
			PC_reg <= PC_E;
			aluResult_reg <= aluResult_E;
			V2_f_reg <= V2_E_f;
			regWrite_reg <= regWrite_E;
			regDst_reg <= regDst_E;
			aluSrc_reg <= aluSrc_E;
			aluOp_reg <= aluOp_E;
			write2reg_reg <= write2reg_E;
			memWrite_reg <= memWrite_E;
			nPcSel_reg <= nPcSel_E;
			extOp_reg <= extOp_E;
			lsOp_reg <= lsOp_E;
			Tnew_reg <= Tnew_E;
			A2_reg <= A2_E;
			A3_reg <= A3_E;
			exc_reg <= E_excCode;
			cp0Wr_reg <= cp0Wr_E;
			bd_reg <= bd_E;
			mtc0_reg <= mtc0_E;
		end
	end


endmodule
