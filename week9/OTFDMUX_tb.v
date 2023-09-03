`timescale 1ns / 1ps

module OTFDMUX_tb;

reg F, S1, S2;
wire A, B, C, D;

OTFDMUX tb_OTFDMUX(
    .f (F),
    .s1 (S1),
    .s2 (S2),
    .a (A),
    .b (B),
    .c (C),
    .d (D)  );
    
initial begin
    F = 1'b0;
    S1 = 1'b0;
    S2 = 1'b0;
end

always S1 = #250 ~S1;
always S2 = #500 ~S2;
always F = #125 ~F;

endmodule
