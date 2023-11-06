`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:36:38 10/07/2023 
// Design Name: 
// Module Name:    light 
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
module light(
    input [3:0] x,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g
    );
	assign {x4,x3,x2,x1} = x;
    assign a = ~x1 & x3 | x2 & x3 | ~x2 & ~x4 | x1 & ~x2 & ~x3 | ~x2 & ~x3 & ~x4;
    assign b = ~x3 & ~x4 | x1 & ~x2 | x1 & x3 | x2 & x3 & ~x4 | ~x1 & x2 & ~x3;
    assign c = ~x2 & ~x4 | x1 & x2 | x3 & ~x4 | x1 & x3;
    assign d = x1 & ~x3 | ~x1 & ~x2 & ~x4 | ~x2 & x3 & x4 | x2 & ~x3 & x4 | x2 & x3 & ~x4;
    assign e = ~x1 & x2 | x1 & ~x2 | ~x3 & x4 | ~x1 & ~x3 & ~x4 | ~x1 & x3 & x4;
    assign f = ~x1 & ~x2 | ~x2 & ~x4 | ~x1 & ~x3 & ~x4 | x1 & ~x3 & x4 | ~x1 & x3 & x4;
    assign g = x1 & ~x2 | x3 & ~x4 | ~x1 & ~x2 & x3 | ~x1 & x2 & ~x3 | x1 & x2 & x4;

endmodule
