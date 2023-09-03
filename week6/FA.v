`timescale 1ns / 1ps

module FA(
    input a, b, c_in,
    output s, c_out
    );
    
    assign s = (~((a & ~b) | (~a & b)) & c_in) | (((a & ~b) | (~a & b)) & ~c_in);
    assign c_out = (a & b) | (c_in & ((a & ~b) | (~a & b)));
    
endmodule
