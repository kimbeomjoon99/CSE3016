`timescale 1ns / 1ps

module Mealy(
    input in, clk, reset,
    output reg out,
    output reg [1:0]s
    );
    
initial begin
    out = 0;
    s = 2'b00;
end

always @(posedge clk) begin
    if (reset) begin
        out <= 0;
        s <= 2'b00;
    end
    else if (s == 2'b00) begin
        out <= 0;
        if (in) begin
            s <= s + 1;
        end
        else begin
            s <= 2'b00;
        end
    end
    else if (s == 2'b01) begin
        out <= 0;
        if (in) begin
            s <= s + 1;
        end
        else begin
            s <= 2'b00;
        end
    end
    else if (s == 2'b10) begin
        out <= 0;
        if (~in) begin
            s <= s + 1;
        end
    end
    else if (s == 2'b11) begin
        if (in) begin
            out <= 1;
            s <= 2'b01;
        end
        else begin
            out <= 0;
            s <= 2'b00;
        end
    end
end
    
endmodule
