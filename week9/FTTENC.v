`timescale 1ns / 1ps

module FTTENC(
    input a, b, c, d,
    output e0, e1
    );
    
    assign e0 = a | c;
    assign e1 = a | b;
    
endmodule
