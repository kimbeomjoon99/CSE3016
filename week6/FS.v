`timescale 1ns / 1ps

module FS(
    input a, e, b_in,
    output d, b_out
    );
    
    assign d = (((a & ~e) | (~a & e)) & ~b_in) | (~((a & ~e) | (~a & e)) & b_in);
    assign b_out = (~((a & ~e) | (~a & e)) & b_in) | (~a & e);
    
endmodule
