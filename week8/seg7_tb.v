`timescale 1ns / 1ps

module seg7_tb;

reg W, X, Y, Z;
wire A, B, C, D, E, F, G, DP, DIGIT;

seg7 tb_seg7(
    .w (W),
    .x (X),
    .y (Y),
    .z (Z),
    .a (A),
    .b (B),
    .c (C),
    .d (D),
    .e (E),
    .f (F),
    .g (G),
    .dp (DP),
    .digit (DIGIT)  );
    
initial begin
    W = 1'b0;
    X = 1'b0;
    Y = 1'b0;
    Z = 1'b0;
end

always W = #500 ~W;
always X = #250 ~X;
always Y = #125 ~Y;
always Z = #62.5 ~Z;

initial begin
    #1000
    $finish;
end

endmodule
