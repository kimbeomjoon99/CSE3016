`timescale 1ns / 1ps

module NOR_tb;

reg aa, bb, cc, dd;
wire ee, ff, gg;

NOR tb_NOR(
    .a (aa),
    .b (bb),
    .c (cc),
    .d (dd),
    .e (ee),
    .f (ff),
    .g (gg)  );
    
initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
end

always aa = #50 ~aa;
always bb = #100 ~bb;
always cc = #150 ~cc;
always dd = #200 ~dd;

initial begin
    #1200
    $finish;
end

endmodule
