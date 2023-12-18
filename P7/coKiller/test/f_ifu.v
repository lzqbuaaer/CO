`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:16:03 11/23/2023 
// Design Name: 
// Module Name:    f_ifu 
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
module f_ifu(
    input [31:0] PCNext,
    input clk,
    input reset,
	input PC_en,
    output [31:0] PC_F,
	output [4:0] F_excCode,
	input eret_D,
	input [31:0] EPC,
	input req
    );
	
	reg [31:0] PC_reg;
	
	assign PC_F = eret_D ? EPC : PC_reg;
	
	assign F_excCode = (PC_F[1:0] != 2'b00 | (PC_F > 32'h6ffc | PC_F < 32'h3000))  ? `ADEL : 5'd0;
	
	always@(posedge clk) begin
		if (reset) begin
			PC_reg <= 32'h00003000;
		end else begin
			if (PC_en | req) begin
				PC_reg <= PCNext;
			end
		end
	 end


endmodule
