`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:21:23 10/13/2023 
// Design Name: 
// Module Name:    BlockChecker 
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
module BlockChecker(
    input clk,
    input reset,
    input [7:0] in,
    output result
    );
    parameter start = 4'd0,
            space = 4'd1,
            chB = 4'd2,
            chE1 = 4'd3,
            chG = 4'd4,
            chI = 4'd5,
            chN1 = 4'd6,
            chE2 = 4'd7,
            chN2 = 4'd8,
            chD = 4'd9,
            other = 4'd10,
            special = 4'd11;
    wire isSpace,isB,isE,isG,isI,isN,isD;
    assign isSpace = (in == 32) ? 1'b1 : 1'b0;
    assign isB = (in == 66 || in == 98) ? 1'b1 : 1'b0;
    assign isD = (in == 68 || in == 100) ? 1'b1 : 1'b0;
    assign isE = (in == 69 || in == 101) ? 1'b1 : 1'b0;
    assign isG = (in == 71 || in == 103) ? 1'b1 : 1'b0;
    assign isI = (in == 73 || in == 105) ? 1'b1 : 1'b0;
    assign isN = (in == 78 || in == 110) ? 1'b1 : 1'b0; 
    reg [31:0] cnt = 32'b0;
    reg [3:0] sta = start;
    reg [31:0]flag = 32'b0;
    always @(posedge clk ,posedge reset) begin
        if(reset == 1'b1) begin
            cnt <= 32'b0;
            sta <= start;
            flag <= 32'b0;
        end
        else begin
            case (sta)
                start: begin
                    cnt <= 32'b0;
                    if(isSpace == 1'b1) sta <= space;
                    else if(isB == 1'b1) sta <= chB;
                    else if(isE == 1'b1) sta <= chE2;
                    else sta <= other;
                end 
                space: begin
                    cnt <= cnt;
                    if(isSpace == 1'b1) sta <= space;
                    else if(isB == 1'b1) sta <= chB;
                    else if(isE == 1'b1) sta <= chE2;
                    else sta <= other; 
                end
                chB: begin
                    cnt <= cnt;
                    if(isSpace == 1'b1) sta <= space;
                    else if(isE == 1'b1) sta <= chE1;
                    else sta <= other;
                end
                chE1: begin
                    cnt <= cnt;
                    if(isSpace == 1'b1) sta <= space;
                    else if(isG == 1'b1) sta <= chG;
                    else sta <= other;
                end
                chG: begin
                    cnt <= cnt;
                    if(isSpace == 1'b1) sta <= space;
                    else if(isI == 1'b1) sta <= chI;
                    else sta <= other;
                end
                chI: begin
                    if(isSpace == 1'b1) begin
                        cnt <= cnt;
                        sta <= space;
                    end
                    else if(isN == 1'b1) begin
                        cnt <= cnt + 32'b1;
                        sta <= chN1;
                    end
                    else begin
                        cnt <= cnt;
                        sta <= other;
                    end
                end
                chN1: begin
                    if(isSpace == 1'b1) begin
                        cnt <= cnt;
                        sta <= space;
                    end
                    else begin
                        cnt <= cnt - 32'b1;
                        sta <= other;
                    end
                end
                chE2: begin
                    cnt <= cnt;
                    if(isSpace == 1'b1) sta <= space;
                    else if(isN == 1'b1) sta <= chN2;
                    else sta <= other;
                end
                chN2: begin
                    if(isSpace == 1'b1) begin
                        cnt <= cnt;
                        sta <= space;
                    end
                    else if(isD == 1'b1) begin
                        if(cnt == 32'b0) begin
                            cnt <= cnt;
                            sta <= special;
                            flag <= flag + 32'b1;
                        end
                        else begin
                            cnt <= cnt - 1'b1;
                            sta <= chD;
                            flag <= flag;
                        end
                    end
                    else begin
                        cnt <= cnt;
                        sta <= other;
                    end
                end
                special: begin
                    if(isSpace == 1'b1) begin
                        sta <= space;
                        cnt <= cnt;
                        flag <= flag;
                    end
                    else begin
                        sta <= other;
                        cnt <= cnt;
                        flag <= flag - 32'b1;
                    end
                end
                chD: begin
                    if(isSpace == 1'b1) begin
                        cnt <= cnt;
                        sta <= space;
                    end
                    else begin
                        cnt <= cnt + 32'b1;
                        sta <= other;
                    end
                end
                other: begin
                    cnt <= cnt;
                    if(isSpace == 1'b1) sta <= space;
                    else sta <= other;
                end
                default: begin
                    cnt <= cnt;
                    sta <= sta;
                end 
            endcase
        end
    end
    assign result = (cnt == 32'b0 && flag == 32'b0) ? 1'b1 : 1'b0;

endmodule
