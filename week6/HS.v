`timescale 1ns / 1ps

module HS(
    input a, e,
    output d, b
    );
    
    assign d = (a & ~e) | (~a & e);
    assign b = ~a & e;
    
endmodule
