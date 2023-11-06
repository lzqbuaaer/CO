`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:44:24 10/13/2023 
// Design Name: 
// Module Name:    expr 
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
module expr(
    input clk,
    input clr,
    input [7:0] in,
    output out
    );
    parameter start = 2'b0,
              s0 = 2'b01,
              s1 = 2'b10,
              t = 1'b1,
              f = 1'b0;
    reg [1:0] sta = start;
    reg ans = t;
    wire isNum = (in >= 8'd48 && in <= 8'd57) ? 1'b1 : 1'b0;
    always @(posedge clk ,posedge clr) begin
        if(clr == 1'b1) begin
            sta <= start;
            ans <= t;
        end
        else begin
            case (sta)
                start: begin
                    if(isNum == 1'b1) begin
                        sta <= s0;
                        ans <= t;
                    end
                    else begin
                        sta <= s1;
                        ans <= f;
                    end
                end 
                s0: begin
                    if(isNum == 1'b1) begin
                        sta <= s0;
                        ans <= f;
                    end
                    else begin
                        sta <= s1;
                        ans <= ans;
                    end
                end
                s1: begin
                    if(isNum == 1'b1) begin
                        sta <= s0;
                        ans <= ans;
                    end
                    else begin
                        sta <= s1;
                        ans <= f;
                    end
                end
                default: begin
                    sta <= sta;
                    ans <= ans;
                end
            endcase
        end
    end
    assign out = (ans == t && sta == s0) ? 1'b1 : 1'b0;

endmodule
