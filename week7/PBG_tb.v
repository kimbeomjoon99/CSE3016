`timescale 1ns / 1ps

module PBG_tb;

reg aa, bb, cc, dd;
wire pp;

PBG tb_PBG(
    .a (aa),
    .b (bb),
    .c (cc),
    .d (dd),
    .p (pp)  );
    
initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
end

always aa = #62.5 ~aa;
always bb = #125 ~bb;
always cc = #250 ~cc;
always dd = #500 ~dd;

initial begin
    #1000
    $finish;
end

endmodule
