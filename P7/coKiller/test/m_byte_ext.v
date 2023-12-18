`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:12:39 12/07/2023 
// Design Name: 
// Module Name:    m_byte_ext 
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
module m_byte_ext(
	input [1:0] addr_low2,
	input [3:0] lsOp_M,
	input [31:0] V2_M_f,
	output [3:0] m_data_byteen,
	output [31:0] m_data_wdata,
	input req
    );
	
	wire saveByte = (lsOp_M[3:0] == 4'b1000);
	wire saveHalf = (lsOp_M[3:0] == 4'b0111);
	wire saveWord = (lsOp_M[3:0] == 4'b0110);
	wire [7:0] writeByte = V2_M_f[7:0];
	wire [15:0] writeHalf = V2_M_f[15:0];
	
	assign m_data_byteen[3:0] =  (req) ? 4'b0000 :
																(saveWord) ? 4'b1111 : 
																(saveHalf & (addr_low2[1] == 1'b0)) ? 4'b0011 :
																(saveHalf & (addr_low2[1] == 1'b1)) ? 4'b1100 :
																(saveByte & (addr_low2[1:0] == 2'b00)) ? 4'b0001 :
																(saveByte & (addr_low2[1:0] == 2'b01)) ? 4'b0010 :
																(saveByte & (addr_low2[1:0] == 2'b10)) ? 4'b0100 :
																(saveByte & (addr_low2[1:0] == 2'b11)) ? 4'b1000 : 4'b0000;
	
	assign m_data_wdata[31:0] = saveWord ? V2_M_f[31:0] : 
																(m_data_byteen == 4'b0011) ? {{16{1'b0}}, writeHalf[15:0]} :
																(m_data_byteen == 4'b1100) ? {writeHalf[15:0], {16{1'b0}}} :
																(m_data_byteen == 4'b0001) ? {{24{1'b0}}, writeByte[7:0]} :
																(m_data_byteen == 4'b0010) ? {{16{1'b0}}, writeByte[7:0], {8{1'b0}}} :
																(m_data_byteen == 4'b0100) ? {{8{1'b0}}, writeByte[7:0], {16{1'b0}}} : 
																(m_data_byteen == 4'b1000) ? {writeByte[7:0], {24{1'b0}}} : 0;
																


endmodule
