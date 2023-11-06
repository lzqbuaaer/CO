`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:12:30 10/12/2023 
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
module ext(
    input [15:0] imm,
    input [1:0] EOp,
    output [31:0] ext
    );
    wire [31:0] o1;
	 wire [31:0] o2;
	 wire [31:0] o3;
	 wire [31:0] o4;
    assign o1 = {{16{imm[15]}} , imm};
    assign o2 = {{16'b0} , imm};
    assign o3 = {imm , {16'b0}};
    assign o4 = o1 << 2'b10;
    assign ext = (EOp == 2'b00) ? o1 :
               (EOp == 2'b01) ? o2 :
               (EOp == 2'b10) ? o3 : o4; 

endmodule
