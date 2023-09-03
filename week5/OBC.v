`timescale 1ns / 1ps

module OBC(
    input a, b,
    output c, d, e, f
    );
    
    assign c = ~((~a & b) | (a & ~b));
    assign d = ~c;
    assign e = a & ~b;
    assign f = ~a & b;
    
endmodule
