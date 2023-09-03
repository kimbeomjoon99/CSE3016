`timescale 1ns / 1ps


module BF_2_B_tb;

reg aa, bb, cc;
wire dd;

BF_2_B tb_BF_2_B(
    .a (aa),
    .b (bb),
    .c (cc),
    .d (dd)  );
    
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