`timescale 1ns / 1ps
`include "const.v"
`define IM SR[15:10]    // allow 6 hardware ints
`define EXL SR[1]       // in int (cannot int/exc)
`define IE SR[0]        // allow int
`define BD Cause[31]
`define IP Cause[15:10]
`define ExcCode Cause[6:2]
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:00:33 12/16/2023 
// Design Name: 
// Module Name:    cp0 
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
module cp0(
	input clk,
	input reset,
	input en, 
	input [4:0] cp0Addr,
	input [31:0] cp0In,
	output [31:0] cp0Out,
	input [31:0] VPC,
	input bdIn,
	input [4:0] excCode_in,
	input [5:0] hwInt,
	input exlClr,
	output [31:0] EPCOut,
	output req
    );
	
	reg [31:0] SR;
	reg [31:0] Cause;
	reg [31:0] EPC;
	
	wire intReq = (|(hwInt & `IM)) & !`EXL & `IE;
	wire excReq = (excCode_in != 5'd0) & (!`EXL);
	
	assign req = intReq | excReq;
	
	assign cp0Out = (cp0Addr == 12) ? SR :
										(cp0Addr == 13) ? Cause :
										(cp0Addr == 14) ? EPC : 0;
	assign EPCOut = EPC;
	
	always@(posedge clk) begin
		if (reset) begin
			EPC <= 0;
			Cause <= 0;
			SR <= 0;
		end else begin
			`IP <= hwInt;
			if (exlClr) begin
				`EXL <= 1'b0;
			end else if (req) begin
				`EXL <= 1'b1;
				EPC <= bdIn ? (VPC - 4) : VPC;
				`ExcCode <= intReq ? 5'd0 : excCode_in;
				`BD <= bdIn;
			end else if (en) begin
				if (cp0Addr == 12) begin
					SR <= cp0In;
				end else if (cp0Addr == 14) begin
					EPC <= cp0In;
				end
			end 
		end
	end
	
	


endmodule
