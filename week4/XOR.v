`timescale 1ns / 1ps

module XOR(
    input a, b, c, d,
    output e, f, g
    );
    
    assign e = (a & ~b) | (~a & b);
    assign f = (e & ~c) | (~e & c);
    assign g = (f & ~d) | (~f & d);
    
endmodule
