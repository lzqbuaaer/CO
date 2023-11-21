`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:59:00 11/09/2023 
// Design Name: 
// Module Name:    grf 
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
module grf(
    input [31:0] pc,
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
    input [31:0] WD,
    output [31:0] RD1,
    output [31:0] RD2,
    input RFWr,
    input clk,
    input rst
    );
    integer i;
    reg [31:0] register [31:0];
    always @(posedge clk ) begin
        if(rst == 1) begin
            for (i=0; i<32; i=i+1) begin
                register[i] <= 32'b0;
            end
        end
        else if(RFWr == 1 && A3 != 0) begin
            register[A3] <= WD;
            $display("%d@%h: $%d <= %h", $time, pc, A3, WD);
        end
    end
    assign RD1 = register[A1];
    assign RD2 = register[A2];
endmodule
