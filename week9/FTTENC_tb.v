`timescale 1ns / 1ps

module FTTENC_tb;

reg A, B, C, D;
wire E0, E1;

FTTENC tb_FTTENC(
    .a (A),
    .b (B),
    .c (C),
    .d (D),
    .e0 (E0),
    .e1 (E1)  );
    
initial begin
    A = 1'b0;
    B = 1'b0;
    C = 1'b0;
    D = 1'b1;
end

initial begin
    #250
    C = ~C;
    D = ~D;
end

initial begin
    #500
    B = ~B;
    C = ~C;
end

initial begin
    #750
    B = ~B;
    A = ~A;
end

initial begin
    #1000
    $finish;
end

endmodule
