`timescale 1ns / 1ps

module seg7(
    input w, x, y, z,
    output a, b, c, d, e, f, g, dp, digit
    );
    
    assign a = (~x & ~z) | (w & ~x & ~y) | (w & ~z) | (x & y) | (~w & y) | (~w & x & z);
    assign b = (~x & ~z) | (~w & ~y & ~z) | (~w & ~x) | (~w & y & z) | (w & ~y & z) | (~x & ~y);
    assign c = (w ^ x) | (~y & z) | (~w & ~y) | (~w & z);
    assign d = (~w & ~x & ~z) | (w & ~y & ~z) | (x & ~y & z) | (~x & y & z) | (x & y & ~z);
    assign e = (w & x) | (~x & ~z) | (w & y) | (y & ~z);
    assign f = (~y & ~z) | (~w & x & ~y) | (w & ~x) | (w & y) | (x & ~z);
    assign g = (~w & x & ~y) | (w & ~x) | (w & z) | (~x & y) | (y & ~z);
    assign dp = 1;
    assign digit = a | b | c | d | e | f | g | dp;
    
endmodule
