`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:46:43 12/07/2023 
// Design Name: 
// Module Name:    m_data_ext 
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
module m_data_ext(
	input [31:0] dataIn,
	input [3:0] lsOp_M,
	input [1:0] addr_low2,
	output [31:0] readData_M
    );
	
	wire lw = (lsOp_M == 4'b0001);
	wire lh= (lsOp_M == 4'b0010);
	wire lhu = (lsOp_M == 4'b0011);
	wire lb = (lsOp_M == 4'b0100);
	wire lbu = (lsOp_M == 4'b0101);
	
	assign readData_M[31:0] = (lw) ? dataIn[31:0] :
															(lh) ? 
																		(addr_low2[1] == 1'b0) ? {{16{dataIn[15]}}, dataIn[15:0]} : 
																														{{16{dataIn[31]}}, dataIn[31:16]}
																		: 
															(lhu) ?
																		(addr_low2[1] == 1'b0) ? {{16{1'b0}}, dataIn[15:0]} : 
																														{{16{1'b0}}, dataIn[31:16]}
																		:
															(lb) ?
																		(addr_low2[1:0] == 2'b00) ? {{24{dataIn[7]}}, dataIn[7:0]} :
																		(addr_low2[1:0] == 2'b01) ? {{24{dataIn[15]}}, dataIn[15:8]} :
																		(addr_low2[1:0] == 2'b10) ? {{24{dataIn[23]}}, dataIn[23:16]} :
																																{{24{dataIn[31]}}, dataIn[31:24]} 
																		:
															(lbu) ?
																		(addr_low2[1:0] == 2'b00) ? {{24{1'b0}}, dataIn[7:0]} :
																		(addr_low2[1:0] == 2'b01) ? {{24{1'b0}}, dataIn[15:8]} :
																		(addr_low2[1:0] == 2'b10) ? {{24{1'b0}}, dataIn[23:16]} :
																																{{24{1'b0}}, dataIn[31:24]} 
																		: 31'h0;
																		


endmodule
