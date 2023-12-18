`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:43 12/02/2023 
// Design Name: 
// Module Name:    bridge 
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
module bridge(
    input [31:0] addr,
    input [3:0] byteen,
    input [31:0] wdata,
    output [31:0] rdata,

    output [3:0] DM_byteen,
    output T1_byteen,
    output T2_byteen,
    output [3:0] Int_byteen,

    output [31:0] DM_addr,
    output [31:0] T1_addr,
    output [31:0] T2_addr,
    output [31:0] Int_addr,

    output [31:0] DM_wdata,
    output [31:0] T1_wdata,
    output [31:0] T2_wdata,

    input [31:0] DM_rdata,
    input [31:0] T1_rdata,
    input [31:0] T2_rdata,

    output [5:0] HWInt,
    input IRQ1,
    input IRQ2,
    input interrupt
    );

    assign DM_byteen = (addr >= 32'h00000000 && addr <= 32'h00002fff) ? byteen : 4'b0;
    assign T1_byteen = (addr >= 32'h00007f00 && addr <= 32'h00007f0b);
    assign T2_byteen = (addr >= 32'h00007f10 && addr <= 32'h00007f1b);
    assign Int_byteen = (addr >= 32'h00007f20 && addr <= 32'h00007f23) ? byteen : 4'b0;

    assign DM_addr = addr;
    assign T1_addr = addr;
    assign T2_addr = addr;
    assign Int_addr = addr;

    assign DM_wdata = wdata;
    assign T1_wdata = wdata;
    assign T2_wdata = wdata;

    assign rdata = (addr >= 32'h00000000 && addr <= 32'h00002fff) ? DM_rdata :
                   (addr >= 32'h00007f00 && addr <= 32'h00007f0b) ? T1_rdata :
                   (addr >= 32'h00007f10 && addr <= 32'h00007f1b) ? T2_rdata : 32'b0;
    assign HWInt = {3'b000 , interrupt , IRQ2 , IRQ1};
endmodule
