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
    input _en,
    input [31:0] F_PC,
    input [31:0] F_IR,
    output reg [31:0] D_PC,
    output reg [31:0] D_IR
    );

    always @(posedge clk ) begin
        if(rst == 1) begin
            D_PC <= 32'b0;
            D_IR <= 32'b0;
        end
        else if(_en == 1) begin
            D_PC <= D_PC;
            D_IR <= D_IR;
        end
        else begin
            D_PC <= F_PC;
            D_IR <= F_IR;
        end
    end

endmodule
