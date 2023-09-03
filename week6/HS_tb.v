`timescale 1ns / 1ps

module HS_tb;

reg aa, ee;
wire D, B_out;

HS tb_HS(
    .a (aa),
    .e (ee),
    .d (D),
    .b (B_out)  );
    
initial begin
    aa = 1'b0;
    ee = 1'b0;
end

always aa = #250 ~aa;
always ee = #500 ~ee;

initial begin
    #1000
    $finish;
end

endmodule
