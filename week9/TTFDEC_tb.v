`timescale 1ns / 1ps

module TTFDEC_tb;

reg A, B;
wire D0, D1, D2, D3;

TTFDEC tb_TTFDEC(
    .a (A),
    .b (B),
    .d0 (D0),
    .d1 (D1),
    .d2 (D2),
    .d3 (D3) );
    
initial begin
    A = 1'b0;
    B = 1'b0;
end

always A = #500 ~A;
always B = #250 ~B;

initial begin
    #1000
    $finish;
end

endmodule
