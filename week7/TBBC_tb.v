`timescale 1ns / 1ps

module TBBC_tb;

reg A1, A2, B1, B2;
wire F1, F2, F3;

TBBC tb_TBBC(
    .a1 (A1),
    .a2 (A2),
    .b1 (B1),
    .b2 (B2),
    .f1 (F1),
    .f2 (F2),
    .f3 (F3)  );
    
initial begin
    A1 = 1'b0;
    A2 = 1'b0;
    B1 = 1'b0;
    B2 = 1'b0;
end

always A1 = #62.5 ~A1;
always A2 = #125 ~A2;
always B1 = #250 ~B1;
always B2 = #500 ~B2;

initial begin
    #1000
    $finish;
end

endmodule
