`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:27:05 08/25/2023 
// Design Name: 
// Module Name:    cpu_checker 
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
module cpu_checker(
    input clk,
    input reset,
    input [7:0] char,
    output [1:0] format_type,
	 output [3:0] sta
    );

    parameter INIT_DEC = 3'd1;
    parameter TOP_DEC = 3'd4;
    parameter INIT_HEX = 4'd1;
    parameter TOP_HEX = 4'd8;
    parameter YES = 1'b1;
    parameter NO = 1'b0;

    reg type = 1'b0;
    reg [3:0] status = 4'd0;
    reg [3:0] decReg = INIT_DEC;
    reg [3:0] hexReg = INIT_HEX;

    wire isdec = (char >= "0" && char <= "9") ? YES : NO;
    wire ishex = (isdec == YES) ? YES :
                    (char >= "a" && char <= "f") ? YES : NO;

    always @(posedge clk ) begin
        if(reset == YES) begin
            type <= 1'b0;
            status <= 4'd0;
            decReg <= INIT_DEC;
            hexReg <= INIT_HEX;
        end
        else begin
            case (status)
                4'd0: begin //识别^
                    if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end 
                4'd1: begin //识别第一个十进制数字
                    if(isdec == YES) begin
                        decReg <= INIT_DEC;
                        status <= 4'd2;
                    end
                    else if (char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd2: begin //识别@，跳出十进制数字
                    if(char == "@") status <= 4'd3;
                    else if(isdec == YES) begin
                        decReg <= decReg + 1;
                        if(decReg + 1 <= TOP_DEC) status <= 4'd2;
                        else status <= 4'd0;
                    end
                    else if (char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd3: begin //识别第一个16进制数字
                    if(ishex == YES) begin
                        hexReg <= INIT_HEX;
                        status <= 4'd4;
                    end
                    else if (char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd4: begin //识别：，跳出16进制数字
                    if(char == ":") begin
                        if(hexReg == TOP_HEX) status <= 4'd5;
                        else status <= 4'd0;
                    end
                    else if (ishex == YES) begin
                        hexReg <= hexReg + 1;
                        if(hexReg + 1 <= TOP_HEX) status <= 4'd4;
                        else status <= 4'd0;
                    end
                    else if (char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd5: begin //跳过空格，区分寄存器和数据存储器
                    if(char == "$") status <= 4'd6;
                    else if(char == " ") status <= 4'd5;
                    else if(char == "*") status <= 4'd7;
                    else if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd6: begin //寄存器，识别十进制
                    type <= 1'b0;
                    if(isdec == YES) begin
                        decReg <= INIT_DEC;
                        status <= 4'd8;
                    end
                    else if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd7: begin //数据存储器，识别16进制
                    type <= 1'b1;
                    if (ishex == YES) begin
                        hexReg <= INIT_HEX;
                        status <= 4'd9;
                    end
                    else if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd8: begin //寄存器，十进制数字
                    if(char == "<") status <= 4'd11;
                    else if(char == " ") status <= 4'd10;
                    else if(isdec == YES) begin
                        decReg <= decReg + 1;
                        if(decReg + 1 <= TOP_DEC) status <= 4'd8;
                        else status <= 4'd0;
                    end
                    else if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd9: begin //数据存储器，16进制数字
                    if(char == " " || char == "<") begin
                        if(hexReg == TOP_HEX) begin
                            if(char == " ") status <= 4'd10;
                            else status <= 4'd11;
                        end
                        else status <= 4'd0;
                    end
                    else if(ishex == YES) begin
                        hexReg <= hexReg + 1;
                        if(hexReg + 1 <= TOP_HEX) status <= 4'd9;
                        else status <= 4'd0;
                    end
                    else if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd10: begin //跳过空格
                    if(char == "<") status <= 4'd11;
                    else if(char == " ") status <= 4'd10;
                    else if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd11: begin //识别<=
                    if(char == "=") status <= 4'd12;
                    else if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd12: begin //16进制数字
                    if (ishex == YES) begin
                        hexReg <= INIT_HEX;
                        status <= 4'd13;
                    end
                    else if(char == " ") status <= 4'd12;
                    else if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd13: begin //确定正确的位数
                    if(char == "#") begin
                        if(hexReg == TOP_HEX) status<= 4'd14;
                        else status <= 4'd0;
                    end
                    else if(ishex == YES) begin
                        hexReg <= hexReg + 1;
                        if(hexReg + 1 <= TOP_HEX) status <= 4'd13;
                        else status <= 4'd0;
                    end
                    else if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd14: begin //结束
                    if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                default: status <= 4'd0;
            endcase
        end
    end
	 assign format_type = (status != 4'd14) ? 2'b00 :
                        (type == 1'b0) ? 2'b01 : 2'b10;
	 assign sta = status;
endmodule
