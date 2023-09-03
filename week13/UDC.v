`timescale 1ns / 1ps

module UDC(
    input clk, reset, up, down,
    output reg [3:0]k,
    output reg [6:0]seg
    );
    
initial begin
    k = 4'b0000;
end
    
always @(posedge clk) begin
    if (reset) begin
        k <= 0;
        seg <= 0;
    end
    else if (up & ~down) begin
        k <= k + 1;
        seg <= 7'b0111110;
    end
    else if (~up & down) begin
        k <= k - 1;
        seg <= 7'b1011110;
    end
    else if (~up & ~down) begin
        seg <= 0;
    end
    else begin
        k <= 0;
        seg <= 0;
    end
end
    
endmodule
