`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:31:10 11/23/2023 
// Design Name: 
// Module Name:    W_reg 
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
module W_reg(
    input clk,
    input reset,
    input [31:0] readData_M,
    input [31:0] aluResult_M,
    input [31:0] instr_M,
    input [31:0] PC_M,
	input [1:0] Tnew_M,
	input [4:0] A3_M,
    output [31:0] instr_W,
    output [31:0] PC_W,
    output [31:0] readData_W,
    output [31:0] aluResult_W,
	output [1:0] Tnew_W,
	output [4:0] A3_W,
	
	// control signals
	input regWrite_M,
	input [1:0] regDst_M,
	input aluSrc_M,
	input [2:0] aluOp_M,
	input [2:0] write2reg_M,
	input memWrite_M,
	input [2:0] nPcSel_M,
	input [1:0] extOp_M,
	input [3:0] lsOp_M,
	
	output regWrite_W,
	output [1:0] regDst_W,
	output aluSrc_W,
	output [2:0] aluOp_W,
	output [2:0] write2reg_W,
	output memWrite_W,
	output [2:0] nPcSel_W,
	output [1:0] extOp_W,
	output [3:0] lsOp_W,
	
	input clr,
	input [31:0] cp0Out_M,
	output [31:0] cp0Out_W
	// 
    );
	
	reg [31:0] readData_reg;
	reg [31:0] aluResult_reg;
	reg [31:0] instr_reg;
	reg [31:0] PC_reg;
	reg [1:0] Tnew_reg;
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
	reg [31:0] cp0Out_reg;
	
	assign readData_W = readData_reg;
	assign aluResult_W = aluResult_reg;
	assign instr_W = instr_reg;
	assign PC_W = PC_reg;
	assign Tnew_W = (Tnew_reg == 2'b00) ? 2'b00 : (Tnew_reg - 1);
	assign A3_W = A3_reg;
	
	assign regWrite_W = regWrite_reg;
	assign regDst_W = regDst_reg;
	assign  aluSrc_W =  aluSrc_reg;
	assign aluOp_W = aluOp_reg;
	assign write2reg_W = write2reg_reg;
	assign memWrite_W = memWrite_reg;
	assign nPcSel_W = nPcSel_reg;
	assign extOp_W = extOp_reg;
	assign lsOp_W = lsOp_reg;
	assign cp0Out_W = cp0Out_reg;
	
	always@(posedge clk) begin
		if (reset | clr) begin
			readData_reg <= 0;
			aluResult_reg <= 0;
			instr_reg <= 0;
			PC_reg <= 0;
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
			A3_reg <= 0;
			cp0Out_reg <= 0;
		end else begin
			readData_reg <= readData_M;
			aluResult_reg <= aluResult_M;
			instr_reg <= instr_M;
			PC_reg <= PC_M;
			regWrite_reg <= regWrite_M;
			regDst_reg <= regDst_M;
			aluSrc_reg <= aluSrc_M;
			aluOp_reg <= aluOp_M;
			write2reg_reg <= write2reg_M;
			memWrite_reg <= memWrite_M;
			nPcSel_reg <= nPcSel_M;
			extOp_reg <= extOp_M;
			lsOp_reg <= lsOp_M;
			A3_reg <= A3_M;
			Tnew_reg <= Tnew_M;
			cp0Out_reg <= cp0Out_M;
		end
	end


endmodule
