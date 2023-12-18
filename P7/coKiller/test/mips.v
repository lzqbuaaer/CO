`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:48:41 11/23/2023 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset,
	
	input [31:0] i_inst_rdata,
	output [31:0] i_inst_addr,
	
	input [31:0] m_data_rdata,
	output [31:0] m_data_addr,
	output [31:0] m_data_wdata,
	output [3:0] m_data_byteen,
	output [31:0] m_inst_addr, 
	
	output w_grf_we,
	output [31:0] w_grf_addr,
    output [31:0] w_grf_wdata,
    output [31:0] w_inst_addr,
	
	
	input interrupt,
	output [31:0] m_int_addr,     // 中断发生器待写入地址
    output [3 :0] m_int_byteen,   // 中断发生器字节使能信号
    output [31:0] macroscopic_pc
    );
	
	wire IRQ0;
	wire IRQ1;
	wire [31:0] PrAddr;
	wire [31:0] PrWd;
	wire [31:0] PrRd;
	wire [31:0] devAddr;
	wire [31:0] devWd;
	wire [31:0] dev0Rd;
	wire [31:0] dev1Rd;
	wire int_byteen;
	wire [5:0] hwInt;
	
	assign m_int_addr = (int_byteen) ? 32'h00007f20 : 0;
	assign m_int_byteen = (int_byteen) ? 1 : 0;
	assign hwInt = {3'b0, interrupt, IRQ1, IRQ0};
	
	
	cpu CPU (
		.clk(clk), 
		.reset(reset), 
		.hwInt(hwInt[5:0]), 
		.PrRd(PrRd[31:0]), 
		.PrWe(PrWe), 
		.PrWd(PrWd[31:0]), 
		.PrAddr(PrAddr[31:0]), 
		.M_PCout(macroscopic_pc[31:0]), 
		.i_inst_rdata(i_inst_rdata[31:0]), 
		.i_inst_addr(i_inst_addr[31:0]), 
		.m_data_rdata(m_data_rdata[31:0]), 
		.m_data_addr(m_data_addr[31:0]), 
		.m_data_wdata(m_data_wdata[31:0]), 
		.m_data_byteen(m_data_byteen[3:0]), 
		.m_inst_addr(m_inst_addr[31:0]), 
		.w_grf_we(w_grf_we), 
		.w_grf_addr(w_grf_addr[31:0]), 
		.w_grf_wdata(w_grf_wdata[31:0]), 
		.w_inst_addr(w_inst_addr[31:0])
    );
	
	bridge Bridge (
		.PrAddr(PrAddr[31:0]), 
		.PrWd(PrWd[31:0]), 
		.PrRd(PrRd[31:0]), 
		.devAddr(devAddr[31:0]), 
		.devWd(devWd[31:0]), 
		.dev0Rd(dev0Rd[31:0]), 
		.dev1Rd(dev1Rd[31:0]), 
		.m_data_rdata(m_data_rdata[31:0]), 
		.int_byteen(int_byteen), 
		.dev0En(dev0En), 
		.dev1En(dev1En)
    );
	
	TC tc0 (
		.clk(clk), 
		.reset(reset), 
		.Addr(devAddr[31:2]), 
		.WE(dev0En), 
		.Din(devWd[31:0]), 
		.Dout(dev0Rd[31:0]), 
		.IRQ(IRQ0)
    );
	
	TC tc1 (
		.clk(clk), 
		.reset(reset), 
		.Addr(devAddr[31:2]), 
		.WE(dev1En), 
		.Din(devWd[31:0]), 
		.Dout(dev1Rd[31:0]), 
		.IRQ(IRQ1)
    );
	
	
	
	
	
	
	
	


endmodule
