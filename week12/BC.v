`timescale 1ns / 1ps

module BC(
    input clk, reset,
    output reg [1:0]k
    );
    
always @(posedge clk) begin
    if ((k[1] & k[0]) | reset) begin
        k[0] <= 0;
        k[1] <= 0;
    end
    else if (~k[0] & ~k[1]) begin
        k[0] <= 1;
        k[1] <= 0;
    end
    else if (k[0] & ~k[1]) begin
        k[0] <= 0;
        k[1] <= 1;
    end
    else if (~k[0] & k[1]) begin
        k[0] <= 1;
        k[1] <= 1;
    end
    else begin
        k[0] <= 1'b0;
        k[1] <= 1'b0;
    end
end
    
endmodule
