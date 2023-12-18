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
    input Req,
    input [31:0] E_PC,
    input [31:0] E_IR,
    input [31:0] E_ALUO,
    input [31:0] E_PC8,
    input [31:0] E_rt,
    input [31:0] E_HL,
    input E_EXC_DMOv,
    output reg M_EXC_DMOv,
    output reg [31:0] M_PC,
    output reg [31:0] M_IR,
    output reg [31:0] M_ALUO,
    output reg [31:0] M_PC8,
    output reg [31:0] M_rt,
    output reg [31:0] M_HL,
    input [4:0] E_EXC,
    output reg [4:0] M_EXC,
    input E_BD,
    output reg M_BD
    );
    always @(posedge clk ) begin
        if(rst | Req) begin
            M_PC <= (Req ? 32'h00004180 : 32'd0);
            M_IR <= 32'b0;
            M_ALUO <= 32'b0;
            M_PC8 <= 32'b0;
            M_rt <= 32'b0;
			M_HL <= 32'b0;
            M_EXC_DMOv <= 1'b0;
            M_EXC <= 5'b0;
            M_BD <= 1'b0;
        end
        else begin
            M_PC <= E_PC;
            M_IR <= E_IR;
            M_ALUO <= E_ALUO;
            M_PC8 <= E_PC8;
            M_rt <= E_rt;
			M_HL <= E_HL;
            M_EXC_DMOv <= E_EXC_DMOv;
            M_EXC <= E_EXC;
            M_BD <= E_BD;
        end
    end

endmodule
