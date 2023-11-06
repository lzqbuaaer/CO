`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:49:36 10/06/2023 
// Design Name: 
// Module Name:    FloatType 
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
module FloatType(
    input [31:0] num,
    output [4:0] float_type
    );
    
    assign float_type[0] = (num[30:23] == 8'b0 && num[22:0] == 22'b0);
    assign float_type[1] = (num[30:23] != 8'b0 && num[30:23] != 8'b11111111);
    assign float_type[2] = (num[30:23] == 8'b0 && num[22:0] != 22'b0);
    assign float_type[3] = (num[30:23] == 8'b11111111 && num[22:0] == 22'b0);
    assign float_type[4] = (num[30:23] == 8'b11111111 && num[22:0] != 22'b0);

endmodule
