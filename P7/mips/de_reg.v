`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:54:40 11/09/2023 
// Design Name: 
// Module Name:    de_reg 
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
module de_reg(
    input clk,
    input rst,
    input Req,
    input stall,
    input [31:0] D_PC,
    input [31:0] D_IR,
    input [31:0] D_rs,
    input [31:0] D_rt,
    output reg [31:0] E_PC,
    output reg [31:0] E_IR,
    output reg [31:0] E_rs,
    output reg [31:0] E_rt,
    input [31:0] D_EXT,
    output reg [31:0] E_EXT,
    input [31:0] D_PC8,
    output reg [31:0] E_PC8,
    input [4:0] D_EXC,
    output reg [4:0] E_EXC,
    input D_BD,
    output reg E_BD
    );

    always @(posedge clk ) begin
        if(rst | Req | stall) begin
            E_PC <= (Req ? 32'h00004180 : (stall ? D_PC : 32'b0));
            E_IR <= 32'b0;
            E_rs <= 32'b0;
            E_rt <= 32'b0;
            E_EXT <= 32'b0;
			E_PC8 <= 32'b0;
            E_EXC <= 5'b0;
            E_BD <= (stall ? D_BD : 1'b0);
        end
        else begin
            E_PC <= D_PC;
            E_IR <= D_IR;
            E_rs <= D_rs;
            E_rt <= D_rt;
            E_EXT <= D_EXT;
			E_PC8 <= D_PC8;
            E_EXC <= D_EXC;
            E_BD <= D_BD;
        end
    end

endmodule
