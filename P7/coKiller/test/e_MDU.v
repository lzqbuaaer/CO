`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:32:30 12/09/2023 
// Design Name: 
// Module Name:    e_MDU 
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
module e_MDU(
	input clk,
	input reset,
	input start,
	input [3:0] mduOp,
	input [31:0] srcA,
	input [31:0] srcB,
	output busy,
	output [31:0] hi,
	output [31:0] lo,
	output [31:0] mduOut,
	input req
    );
	
	reg [31:0] hiTemp;
	reg [31:0] loTemp;
	reg [31:0] hi_reg;
	reg [31:0] lo_reg;
	reg [3:0] pause;
	reg busy_reg;
	
	assign busy = busy_reg;
	assign hi = hi_reg;
	assign lo = lo_reg;
	assign mduOut = (mduOp == 4'b0101) ? hi_reg : 
										(mduOp == 4'b0110) ? lo_reg : 0;
	
	always@(posedge clk) begin
		if (reset)	 begin
			hiTemp <= 0;
			loTemp <= 0;
			hi_reg <= 0;
			lo_reg <= 0;
			busy_reg <= 0;
		end else if (!req) begin
			if (start) begin
				busy_reg <= 1;
				if (mduOp[3:0] == 4'b0001) begin
					pause <= 5;
					{hiTemp[31:0], loTemp[31:0]} <= $signed(srcA) *  $signed(srcB);
				end else if (mduOp[3:0] == 4'b0010) begin
					pause <= 5;
					{hiTemp[31:0], loTemp[31:0]} <= srcA *  srcB;
				end else if (mduOp[3:0] == 4'b0011) begin
					pause <= 10;
					loTemp[31:0] <= $signed(srcA) / $signed(srcB);
					hiTemp[31:0] <= $signed(srcA) % $signed(srcB);
				end else if (mduOp[3:0] == 4'b0100) begin
					pause <= 10;
					loTemp[31:0] <= srcA / srcB;
					hiTemp[31:0] <= srcA % srcB;
				end
			end else if ((~start) & busy_reg) begin
				if (pause == 1) begin
					busy_reg <= 0;
					hi_reg <= hiTemp;
					lo_reg <= loTemp;
				end else begin
					pause <= pause - 1;
					hiTemp <= hiTemp;
					loTemp <= loTemp;
				end
			end else begin
				if (mduOp[3:0] == 4'b0111) begin
					hi_reg <= srcA;
				end else if (mduOp[3:0] == 4'b1000) begin
					lo_reg <= srcA;
				end else begin
					hi_reg <= hi_reg;
					lo_reg <= lo_reg;
				end
			end
		end
	end


endmodule
