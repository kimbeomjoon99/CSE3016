`timescale 1ns / 1ps

module SR(
    input clk, reset, in,
    output reg [3:0]k
    );
    
always @(posedge clk) begin
    if (reset) begin
        k[0] <= 0;
        k[1] <= 0;
        k[2] <= 0;
        k[3] <= 0;
    end
    else begin
        k[3] <= k[2];
        k[2] <= k[1];
        k[1] <= k[0];
        k[0] <= in;
    end
end
    
endmodule
