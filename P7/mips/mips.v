`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:24 12/02/2023 
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
    input interrupt,
    output [31:0] macroscopic_pc,
    output [31:0] i_inst_addr,
    input [31:0] i_inst_rdata,
    output [31:0] m_data_addr,
    input [31:0] m_data_rdata,
    output [31:0] m_data_wdata,
    output [3:0] m_data_byteen,
    output [31:0] m_int_addr,
    output [3:0] m_int_byteen,
    output [31:0] m_inst_addr,
    output w_grf_we,
    output [4:0] w_grf_addr,
    output [31:0] w_grf_wdata,
    output [31:0] w_inst_addr
    );

    wire [3:0] byteen;
    wire [31:0] addr;
    wire [31:0] wdata;
    wire [31:0] rdata;
    wire [5:0] HWInt;
    assign macroscopic_pc = m_inst_addr;
    //Timer1
    wire [31:0] T1_addr;
    wire T1_en;
    wire [31:0] T1_wdata;
    wire [31:0] T1_rdata;
    wire T1_IRQ;
    //Timer2
    wire [31:0] T2_addr;
    wire T2_en;
    wire [31:0] T2_wdata;
    wire [31:0] T2_rdata;
    wire T2_IRQ;

    cpu CPU(
        .clk(clk),
        .reset(reset),
        .i_inst_addr(i_inst_addr),
        .i_inst_rdata(i_inst_rdata),
        .m_inst_addr(m_inst_addr),
        .m_data_addr(addr),
        .m_data_byteen(byteen),
        .m_data_wdata(wdata),
        .m_data_rdata(rdata),
        .w_grf_addr(w_grf_addr),
        .w_grf_wdata(w_grf_wdata),
        .w_grf_we(w_grf_we),
        .w_inst_addr(w_inst_addr),
        .HWInt(HWInt)
    );

    bridge Bridge(
        .addr(addr),
        .byteen(byteen),
        .wdata(wdata),
        .rdata(rdata),
        .DM_byteen(m_data_byteen),
        .DM_addr(m_data_addr),
        .DM_wdata(m_data_wdata),
        .DM_rdata(m_data_rdata),
        .T1_addr(T1_addr),
        .T1_byteen(T1_en),
        .T1_wdata(T1_wdata),
        .T1_rdata(T1_rdata),
        .IRQ1(T1_IRQ),
        .T2_addr(T2_addr),
        .T2_byteen(T2_en),
        .T2_wdata(T2_wdata),
        .T2_rdata(T2_rdata),
        .IRQ2(T2_IRQ),
        .Int_byteen(m_int_byteen),
        .Int_addr(m_int_addr),
        .HWInt(HWInt),
        .interrupt(interrupt)
    );

    TC Timer1(
        .clk(clk),
        .reset(reset),
        .Addr(T1_addr[31:2]),
        .WE(T1_en),
        .Din(T1_wdata),
        .Dout(T1_rdata),
        .IRQ(T1_IRQ)
    );

    TC Timer2(
        .clk(clk),
        .reset(reset),
        .Addr(T2_addr[31:2]),
        .WE(T2_en),
        .Din(T2_wdata),
        .Dout(T2_rdata),
        .IRQ(T2_IRQ)
    );


endmodule
