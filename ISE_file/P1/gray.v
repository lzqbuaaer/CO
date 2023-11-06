`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:59:55 10/12/2023 
// Design Name: 
// Module Name:    gray 
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
module gray(
    input Clk,
    input Reset,
    input En,
    output [2:0] Output,
    output reg Overflow
    );
    reg [2:0] cnt = 3'b0;
    always @(posedge Clk ) begin
        if(Reset == 1'b1) begin
            cnt <= 3'b0;
            Overflow <= 1'b0;
        end
        else if(En == 1'b1) begin
            cnt <= cnt + 1'b1;
            if(cnt == 3'b111) Overflow <= 1'b1;
            else Overflow <= Overflow;
        end
        else begin
            cnt <= cnt;
            Overflow <= Overflow;
        end
    end
    assign Output[2] = cnt[2];
    assign Output[1] = cnt[2] ^ cnt[1];
    assign Output[0] = cnt[1] ^ cnt[0];

endmodule
