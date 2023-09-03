`timescale 1ns / 1ps

module FTOMUX_tb;

reg A, B, C, D, S1, S2;
wire F;

FTOMUX tb_FTOMUX(
    .a (A),
    .b (B),
    .c (C),
    .d (D),
    .s1 (S1),
    .s2 (S2),
    .f (F)  );
    
initial begin
    A = 1'b0;
    B = 1'b0;
    C = 1'b0;
    D = 1'b0;
    S1 = 1'b0;
    S2 = 1'b0;
end

always S2 = #500 ~S2;
always S1 = #250 ~S1;
always A = #125 ~A;
always B = #62.5 ~B;
always C = #31.25 ~C;
always D = #15.625 ~D;

initial begin
    #1000
    $finish;
end

endmodule
