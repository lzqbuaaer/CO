`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:56:31 11/23/2023 
// Design Name: 
// Module Name:    D_reg 
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
module D_reg(
    input clk,
    input reset,
    input [31:0] instr_F,
    input [31:0] PC_F,
    input D_en,
	input [4:0] F_excCode,
    output [31:0] instr_D,
    output [31:0] PC_D,
	output [4:0] D_excCode_old,
	input bd_F,
	output bd_D,
	input req
    );
	
	reg [31:0] instr_reg;
	reg [31:0] PC_reg;
	reg [4:0] exc_reg;
	reg bd_reg;
	
	assign instr_D = instr_reg;
	assign PC_D = PC_reg;
	assign D_excCode_old = exc_reg;
	assign bd_D = bd_reg;
	
	always@(posedge clk) begin
		if (reset | req) begin
			instr_reg[31:0] <= 0;
			PC_reg[31:0] <= req ? 32'h0000_4180 : 0;
			exc_reg <= 0;
			bd_reg <= 0;
		end else if (D_en) begin
			instr_reg[31:0] <= instr_F[31:0];
			PC_reg[31:0] <= PC_F[31:0];
			exc_reg <= F_excCode;
			bd_reg <= bd_F;
		end
	end


endmodule
