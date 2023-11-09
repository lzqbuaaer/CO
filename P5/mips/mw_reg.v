`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:26:02 11/10/2023 
// Design Name: 
// Module Name:    mw_reg 
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
module mw_reg(
    input clk,
    input rst,
    input [31:0] M_PC,
    input [31:0] M_IR,
    input [31:0] M_DMRD,
    input [31:0] M_ALUO,
    output reg [31:0] W_PC,
    output reg [31:0] W_IR,
    output reg [31:0] W_DMRD,
    output reg [31:0] W_ALUO
    );
    always @(posedge clk ) begin
        if(rst == 1) begin
            W_PC <= 32'b0;
            W_IR <= 32'b0;
            W_DMRD <= 32'b0;
            W_ALUO <= 32'b0;
        end
        else begin
            W_PC <= M_PC;
            W_IR <= M_IR;
            W_DMRD <= M_DMRD;
            W_ALUO <= M_ALUO;
        end
    end

endmodule
