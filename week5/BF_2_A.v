`timescale 1ns / 1ps


module BF_2_A(
    input a, b, c,
    output d
    );
    
    assign d = (~a & ~b) | ~c;
    
endmodule