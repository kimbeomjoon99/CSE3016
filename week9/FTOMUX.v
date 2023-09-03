`timescale 1ns / 1ps

module FTOMUX(
    input a, b, c, d, s1, s2,
    output f
    );
    
    assign f = (a & ~s1 & ~s2) | (b & s1 & ~s2) | (c & ~s1 & s2) | (d & s1 & s2);
    
endmodule
