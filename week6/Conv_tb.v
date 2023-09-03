`timescale 1ns / 1ps

module Conv_tb;

reg aa, bb, cc, dd;
wire ee, ff, gg, hh;

Conv tb_Conv(
    .a (aa),
    .b (bb),
    .c (cc),
    .d (dd),
    .e (ee),
    .f (ff),
    .g (gg),
    .h (hh)  );
    
initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
end

always dd = #62.5 ~dd;
always cc = #125 ~cc;
always bb = #250 ~bb;
always aa = #500 ~aa;

initial begin
    #1000
    $finish;
end

endmodule
