`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:13 11/23/2023 
// Design Name: 
// Module Name:    d_grf 
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
module d_grf(
    input clk,
    input reset,
    input we,
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
	input [31:0] instr_D,
    input [31:0] writeInData,
    input [31:0] PC,
    output [31:0] RD1,
    output [31:0] RD2
    );
	
	reg [31:0] regs [0:31]; // regs
	integer i;
	
	assign RD1 = (A3 == A1 && A3 != 5'b00000) ? writeInData : regs[A1];
	assign RD2 = (A3 == A2 && A3 != 5'b00000) ? writeInData : regs[A2]; // inside forward
	 
	always@(posedge clk) begin
		if (reset) begin
			for (i = 0; i < 32; i = i + 1) begin
				regs[i] <= 0;
			end
		end else begin
			if (we) begin
				if (A3 != 0) begin
					regs[A3] <= writeInData;
				end
			end
		end
	end
	


endmodule
