`timescale 1ns / 1ps

module OBC_tb;

reg aa, bb;
wire cc, dd, ee, ff;

OBC tb_OBC(
    .a (aa),
    .b (bb),
    .c (cc),
    .d (dd),
    .e (ee),
    .f (ff)  );
    
initial begin
    aa = 1'b0;
    bb = 1'b0;
end

always aa = #50 ~aa;
always bb = #100 ~bb;

initial begin
    #1000
    $finish;
end

endmodule
