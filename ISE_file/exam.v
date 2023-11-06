module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    output walk_left,
    output walk_right); //  

    reg state = 1'b0;    
    
    assign walk_left = (state == 1'b1) ? 1'b0 : 1'b1;
    assign walk_right = (state == 1'b1) ? 1'b1 : 1'b0;

    always @(posedge clk, posedge areset) begin
        if(areset == 1'b1) state <= 1'b0;
        else begin
            if(state == 1'b0) begin
                if(bump_left == 1'b1) state <= 1'b1;
                else state <= state;
            end
            else begin
                if(bump_right == 1'b1) state <= 1'b0;
                else state <= state;
            end
        end
    end

endmodule