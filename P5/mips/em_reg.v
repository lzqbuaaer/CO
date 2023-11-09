`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:04:21 11/10/2023 
// Design Name: 
// Module Name:    em_reg 
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
module em_reg(
    input clk,
    input rst,
    input [31:0] E_PC,
    input [31:0] E_IR,
    input [31:0] E_ALUO,
    input [31:0] E_rs,
    input [31:0] E_rt,
    output reg [31:0] M_PC,
    output reg [31:0] M_IR,
    output reg [31:0] M_ALUO,
    output reg [31:0] M_rs,
    output reg [31:0] M_rt
    );
    always @(posedge clk ) begin
        if(rst == 1) begin
            M_PC <= 32'b0;
            M_IR <= 32'b0;
            M_ALUO <= 32'b0;
            M_rs <= 32'b0;
            M_rt <= 32'b0;
        end
        else begin
            M_PC <= E_PC;
            M_IR <= E_IR;
            M_ALUO <= E_ALUO;
            M_rs <= E_rs;
            M_rt <= E_rt;
        end
    end

endmodule