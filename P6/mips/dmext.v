`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:45:21 11/17/2023 
// Design Name: 
// Module Name:    dmext 
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
module dmext(
    input [1:0] addr,
    input [1:0] Sel,
    input [31:0] data,
    output [31:0] dmrd
    );
    assign dmrd = (Sel == `DMEXT_LW) ? data :
                  (Sel == `DMEXT_LH && addr[1] == 1) ? {{16{data[31]}} , data[31:16]} :
                  (Sel == `DMEXT_LH && addr[1] == 0) ? {{16{data[15]}} , data[15:0]} :
                  (Sel == `DMEXT_LB && addr == 3) ? {{24{data[31]}} , data[31:24]} :
                  (Sel == `DMEXT_LB && addr == 2) ? {{24{data[23]}} , data[23:16]} :
                  (Sel == `DMEXT_LB && addr == 1) ? {{24{data[15]}} , data[15:8]} :
                  (Sel == `DMEXT_LB && addr == 0) ? {{24{data[7]}} , data[7:0]} : 32'b0;

endmodule
