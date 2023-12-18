`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:15:32 11/23/2023 
// Design Name: 
// Module Name:    MUX 
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
module MUX(
    input [31:0] src0,
    input [31:0] src1,
    input [31:0] src2,
    input [31:0] src3,
    input [1:0] selOp,
    output [31:0] result
    );
	
	reg [31:0] result_reg;
	
	assign result = result_reg;
	
	always@(*) begin
		case(selOp)
			2'b00 : result_reg = src0;
			2'b01 : result_reg = src1;
			2'b10 : result_reg = src2;
			2'b11 : result_reg = src3;
		endcase
	end


endmodule
