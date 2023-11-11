`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:19:39 11/10/2023 
// Design Name: 
// Module Name:    dm 
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
module dm(
    input [31:0] pc,
    input [31:0] addr,
    input [31:0] WD,
    input DMWr,
    input clk,
    input rst,
    output [31:0] RD
    );
    integer i;
    reg [31:0] dm [0:3071]; 
    always @(posedge clk ) begin
        if(rst == 1) begin
            for(i=0; i<3072; i=i+1) begin
                dm[i] <= 32'b0;
            end
        end
        else if(DMWr == 1) begin
            dm[addr[13:2]] <= WD;
            $display("@%h: *%h <= %h", pc, addr, WD);
        end
    end
    assign RD = dm[addr[13:2]];
endmodule
