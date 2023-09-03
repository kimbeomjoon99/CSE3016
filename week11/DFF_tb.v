`timescale 1ns / 1ps

module DFF_tb;

reg D, E;
wire Q, QP;

DFF tb_DFF(
    .d (D),
    .e (E),
    .q (Q),
    .qp (QP)  );
    
initial begin
    D = 1'b0;
    E = 1'b0;
end

always E = #500 ~E;
always D = #250 ~D;

initial begin
    #1000
    $finish;
end

endmodule
