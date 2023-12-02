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
    output [5:0] out,
    output [4:0] A1,
    output [4:0] A2,
    output [4:0] A3
    );
    wire [5:0] op = IR[31:26];
    wire [5:0] func = IR[5:0];
    wire [4:0] c0 = IR[25:21];
    assign out = ((op == 6'b000000) && (func == 6'b100000)) ? `ADD :
                 ((op == 6'b000000) && (func == 6'b100010)) ? `SUB :
                 ((op == 6'b000000) && (func == 6'b100100)) ? `AND :
                 ((op == 6'b000000) && (func == 6'b100101)) ? `OR :
                 ((op == 6'b000000) && (func == 6'b101010)) ? `SLT :
                 ((op == 6'b000000) && (func == 6'b101011)) ? `SLTU :
                 (op == 6'b001111) ? `LUI :
                 (op == 6'b001000) ? `ADDI :
                 (op == 6'b001100) ? `ANDI :
                 (op == 6'b001101) ? `ORI :
                 (op == 6'b100000) ? `LB :
                 (op == 6'b100001) ? `LH :
                 (op == 6'b100011) ? `LW :
                 (op == 6'b101000) ? `SB :
                 (op == 6'b101001) ? `SH : 
                 (op == 6'b101011) ? `SW :
                 ((op == 6'b000000) && (func == 6'b011000)) ? `MULT :
                 ((op == 6'b000000) && (func == 6'b011001)) ? `MULTU :
                 ((op == 6'b000000) && (func == 6'b011010)) ? `DIV :
                 ((op == 6'b000000) && (func == 6'b011011)) ? `DIVU :
                 ((op == 6'b000000) && (func == 6'b010000)) ? `MFHI :
                 ((op == 6'b000000) && (func == 6'b010010)) ? `MFLO :
                 ((op == 6'b000000) && (func == 6'b010001)) ? `MTHI :
                 ((op == 6'b000000) && (func == 6'b010011)) ? `MTLO :
                 (op == 6'b000100) ? `BEQ :
                 (op == 6'b000101) ? `BNE :
                 (op == 6'b000011) ? `JAL :
                 ((op == 6'b000000) && (func == 6'b001000)) ? `JR :
                 ((op == 6'b010000) && (c0 == 5'b00000)) ? `MFC0 :
                 ((op == 6'b010000) && (c0 == 5'b00100)) ? `MTC0 :
                 ((op == 6'b010000) && (func == 6'b011000)) ? `ERET :
                 ((op == 6'b000000) && (func == 6'b001100)) ? `SYSCALL : `NOP;
    assign A1 = IR[25:21];
    assign A2 = IR[20:16];
    assign A3 = (out == `SW | out == `SH | out == `SB | out == `BEQ | out == `BNE | out == `JR | out == `MULT | out == `MULTU | out == `DIV | out == `DIVU | out == `MTHI | out == `MTLO | out == `MTC0 | out == `ERET | out == `SYSCALL) ? 5'b00000 :
                (out == `JAL) ? 5'b11111 : 
                (out == `LW | out == `LH | out == `LB | out == `LUI | out == `ADDI | out == `ANDI | out == `ORI | out == `MFC0) ? IR[20:16] : IR[15:11];
    
endmodule
