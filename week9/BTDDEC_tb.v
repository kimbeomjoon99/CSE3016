`timescale 1ns / 1ps

module BTDDEC_tb;

reg A0, A1, A2, A3;
wire D1, D2, D3, D4, D5, D6, D7, D8, D9;

BTDDEC tb_BTDDEC(
    .a0 (A0),
    .a1 (A1),
    .a2 (A2),
    .a3 (A3),
    .d1 (D1),
    .d2 (D2),
    .d3 (D3),
    .d4 (D4),
    .d5 (D5),
    .d6 (D6),
    .d7 (D7),
    .d8 (D8),
    .d9 (D9)  );
    
initial begin
    A0 = 1'b0;
    A1 = 1'b0;
    A2 = 1'b0;
    A3 = 1'b0;
end

always A3 = #500 ~A3;
always A2 = #250 ~A2;
always A1 = #125 ~A1;
always A0 = #62.5 ~A0;

initial begin
    #625
    $finish;
end

endmodule
