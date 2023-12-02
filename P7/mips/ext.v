`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:00:52 11/09/2023 
// Design Name: 
// Module Name:    ext 
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
module ext(
    input [15:0] in,
    output [31:0] out,
    input EXTOp
    );
    assign out = (EXTOp == `EXT_ZERO) ? {16'b0 , in} :
                                {{16{in[15]}} , in};

endmodule

