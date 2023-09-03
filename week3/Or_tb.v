`timescale 1ns / 1ps

module Or_tb;

reg aa, bb, cc, dd;

wire ee, ff, gg;

Or u_Or(
 .a (aa),
 .b (bb),
 .c (cc),
 .d (dd),
 .e (ee),
 .f (ff),
 .g (gg) );
 
initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
end

initial begin
    #100
    aa = ~aa;
end

initial begin
    #200
    bb = ~bb;
end

initial begin
    #300
    cc = ~cc;
end

initial begin
    #400
    dd = ~dd;
end

initial begin
    #500
    $finish;
end

endmodule
