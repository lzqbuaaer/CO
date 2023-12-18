`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:17:08 11/23/2023 
// Design Name: 
// Module Name:    E_reg 
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
module E_reg(
    input clk,
    input reset,
    input [31:0] instr_D,
    input [31:0] PC_D,
    input [31:0] V1_D,
    input [31:0] V2_D,
	input [4:0] A1_D,
	input [4:0] A2_D,
	input [4:0] A3_D,
    input [31:0] imm_D,
	input clr,
	input [1:0] Tnew_D,
	
	output [31:0] PC_E,
    output [31:0] instr_E,
    output [31:0] imm_E,
	output [31:0] V1_E,
    output [31:0] V2_E,
	output [4:0] A1_E,
	output [4:0] A2_E,
	output [4:0] A3_E,
	output [1:0] Tnew_E,
	
	// control signals
	input regWrite_D,
	input [1:0] regDst_D,
	input aluSrc_D,
	input [2:0] aluOp_D,
	input [2:0] write2reg_D,
	input memWrite_D,
	input [2:0] nPcSel_D,
	input [1:0] extOp_D,
	input [3:0] lsOp_D,
	input start_D,
	input [3:0] mduOp_D,
	
	output regWrite_E,
	output [1:0] regDst_E,
	output aluSrc_E,
	output [2:0] aluOp_E,
	output [2:0] write2reg_E,
	output memWrite_E,
	output [2:0] nPcSel_E,
	output [1:0] extOp_E,
	output [3:0] lsOp_E,
	output start_E,
	output [3:0] mduOp_E,
	
	input [4:0] D_excCode,
	output [4:0] E_excCode_old,
	
	input isAri_D,
	input cp0Wr_D,
	input bd_D,
	output isAri_E,
	output cp0Wr_E,
	output bd_E,
	
	input req,
	input stall,
	input mtc0_D,
	output mtc0_E
	// 
    );
	
	reg [31:0]  instr_reg;
	reg [31:0] PC_reg;
	reg [31:0] V1_reg;
	reg [31:0] V2_reg;
	reg [31:0] imm_reg;
	reg [1:0] Tnew_reg;
	reg [4:0] A1_reg;
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
	reg start_reg;
	reg [3:0] mduOp_reg;
	
	reg [4:0] exc_reg;
	
	reg isAri_reg;
	reg cp0Wr_reg;
	reg bd_reg;
	
	reg mtc0_reg;
	
	assign instr_E = instr_reg;
	assign PC_E = PC_reg;
	assign V1_E = V1_reg;
	assign V2_E = V2_reg;
	assign imm_E = imm_reg;
	assign Tnew_E = Tnew_reg;
	assign A1_E = A1_reg;
	assign A2_E = A2_reg;
	assign A3_E = A3_reg;
	
	assign regWrite_E = regWrite_reg;
	assign regDst_E = regDst_reg;
	assign  aluSrc_E =  aluSrc_reg;
	assign aluOp_E = aluOp_reg;
	assign write2reg_E = write2reg_reg;
	assign memWrite_E = memWrite_reg;
	assign nPcSel_E = nPcSel_reg;
	assign extOp_E = extOp_reg;
	assign lsOp_E = lsOp_reg;
	assign start_E = start_reg;
	assign mduOp_E = mduOp_reg;
	
	assign E_excCode_old = exc_reg;
	
	assign isAri_E = isAri_reg;
	assign cp0Wr_E = cp0Wr_reg;
	assign bd_E = bd_reg;
	
	assign mtc0_E = mtc0_reg;
	
	always@(posedge clk) begin
		if (reset | clr | req) begin
			instr_reg <= 0;
			PC_reg <= stall ? PC_D : (req ? 32'h0000_4180 : 0);
			V1_reg <= 0;
			V2_reg <= 0;
			imm_reg <= 0;
			regWrite_reg <= 0;
			regDst_reg <= 0;
			aluSrc_reg <= 0;
			aluOp_reg <= 0;
			write2reg_reg <= 0;
			memWrite_reg <= 0;
			nPcSel_reg <= 0;
			extOp_reg <= 0;
			lsOp_reg <= 0;
			A1_reg <= 0;
			A2_reg <= 0;
			A3_reg <= 0;
			Tnew_reg <= 0;
			start_reg <= 0;
			mduOp_reg <= 0;
			exc_reg <= 0;
			isAri_reg <= 0;
			cp0Wr_reg <= 0;
			bd_reg <= stall ? bd_D : 0;
			mtc0_reg <= 0;
		end else begin
			instr_reg <= instr_D;
			PC_reg <= PC_D;
			V1_reg <= V1_D;
			V2_reg <= V2_D;
			imm_reg <= imm_D;
			regWrite_reg <= regWrite_D;
			regDst_reg <= regDst_D;
			aluSrc_reg <= aluSrc_D;
			aluOp_reg <= aluOp_D;
			write2reg_reg <= write2reg_D;
			memWrite_reg <= memWrite_D;
			nPcSel_reg <= nPcSel_D;
			extOp_reg <= extOp_D;
			lsOp_reg <= lsOp_D;
			A1_reg <= A1_D;
			A2_reg <= A2_D;
			A3_reg <= A3_D;
			Tnew_reg <= Tnew_D;
			start_reg <= start_D;
			mduOp_reg <= mduOp_D;
			exc_reg <= D_excCode;
			isAri_reg <= isAri_D;
			cp0Wr_reg <= cp0Wr_D;
			bd_reg <= bd_D;
			mtc0_reg <= mtc0_D;
		end
	end


endmodule
