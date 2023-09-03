`timescale 1ns / 1ps

module HA_tb;

reg aa, bb;
wire S, C_out;

HA tb_HA(
    .a (aa),
    .b (bb),
    .s (S),
    .c (C_out)  );
    
initial begin
    aa = 1'b0;
    bb = 1'b0;
end

always aa = #250 ~aa;
always bb = #500 ~bb;

initial begin
    #1000
    $finish;
end

endmodule
