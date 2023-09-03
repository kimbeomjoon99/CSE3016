`timescale 1ns / 1ps


module BF_1_A_tb;

reg aa, bb, cc;
wire dd;

BF_1_A tb_BF_1_A(
    .a (aa),
    .b (bb),
    .c (cc),
    .d (dd) );
    
initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
end

always aa = #50 ~aa;
always bb = #100 ~bb;
always cc = #200 ~cc;

initial begin
    #1000
    $finish;
end
    

endmodule