`timescale 1ns / 1ps


module BF_1_A(
    input a, b, c,
    output d
    );
    assign d = (~a | ~b) & ~c;
    
endmodule
