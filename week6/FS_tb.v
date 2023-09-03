`timescale 1ns / 1ps

module FS_tb;

reg aa, ee, B_in;
wire D, B_out;

FS tb_FS(
    .a (aa),
    .e (ee),
    .b_in (B_in),
    .d (D),
    .b_out (B_out)  );
    
initial begin
    aa = 1'b0;
    ee = 1'b0;
    B_in = 1'b0;
end

always aa = #125 ~aa;
always ee = #250 ~ee;
always B_in = #500 ~B_in;

initial begin
    #1000
    $finish;
end

endmodule
