`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:24:21 11/11/2023 
// Design Name: 
// Module Name:    decode 
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
`include "head.v"
module decode(
    input [31:0] IR,
    output [3:0] out,
    output [4:0] A1,
    output [4:0] A2,
    output [4:0] A3
    );
    wire [5:0] op = IR[31:26];
    wire [5:0] func = IR[5:0];
    assign out = ((op == 6'b000000) && (func == 6'b100000)) ? `ADD :
                 ((op == 6'b000000) && (func == 6'b100010)) ? `SUB :
                 (op == 6'b001101) ? `ORI :
                 (op == 6'b000100) ? `BEQ :
                 (op == 6'b100011) ? `LW :
                 (op == 6'b101011) ? `SW :
                 (op == 6'b001111) ? `LUI :
                 (op == 6'b000011) ? `JAL :
                 ((op == 6'b000000) && (func == 6'b001000)) ? `JR : `NOP;
    assign A1 = IR[25:21];
    assign A2 = IR[20:16];
    assign A3 = (out == `SW | out == `BEQ | out == `JR) ? 5'b00000 :
                (out == `JAL) ? 5'b11111 : 
                (out == `ADD | out == `SUB) ? IR[15:11] : IR[20:16];
    
endmodule
