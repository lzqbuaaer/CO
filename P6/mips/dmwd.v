`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:30:00 11/23/2023 
// Design Name: 
// Module Name:    dmrd 
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
module dmwd(
    input [3:0] byteen,
    input [31:0] in,
    output [31:0] out
    );
	 assign out = (byteen == 4'b1111) ? in :
	              (byteen == 4'b1100) ? {in[15:0] , 16'd0} :
					  (byteen == 4'b0011) ? {16'd0 , in[15:0]} :
					  (byteen == 4'b1000) ? {in[7:0] , 24'd0} :
					  (byteen == 4'b0100) ? {8'd0 , in[7:0] , 16'd0} :
					  (byteen == 4'b0010) ? {16'd0 , in[7:0] , 8'd0} :
					  (byteen == 4'b0001) ? {24'd0 , in[7:0]} : 32'd0;



endmodule
