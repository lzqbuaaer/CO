`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:08:56 11/09/2023 
// Design Name: 
// Module Name:    fd_reg 
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
module fd_reg(
    input clk,
    input rst,
    input Req,
    input _en,
    input [31:0] F_PC,
    input [31:0] F_IR,
    output reg [31:0] D_PC,
    output reg [31:0] D_IR,
    input [4:0] F_EXC,
    output reg [4:0] D_EXC,
    input F_BD,
    output reg D_BD
    );

    always @(posedge clk ) begin
        if(rst | Req) begin
            D_PC <= (Req ? 32'h00004180 : 32'd0);
            D_IR <= 32'd0;
            D_EXC <= 5'd0;
            D_BD <= 1'b0;
        end
        else if(_en == 1) begin
            D_PC <= D_PC;
            D_IR <= D_IR;
            D_EXC <= D_EXC;
            D_BD <= D_BD;
        end
        else begin
            D_PC <= F_PC;
            D_IR <= F_IR;
            D_EXC <= F_EXC;
            D_BD <= F_BD;
        end
    end

endmodule
