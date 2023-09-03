`timescale 1ns / 1ps

module RSFF_NAND_tb;

reg R, S, C;
wire Q, QP;

RSFF_NAND tb_RSFF_NAND(
    .r (R),
    .s (S),
    .c (C),
    .q (Q),
    .qp (QP)  );
    
initial begin
    C = 1'b0;
    R = 1'b0;
    S = 1'b0;
end

always R = #500 ~R;
always S = #250 ~S;
always C = #125 ~C;

endmodule
