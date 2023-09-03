`timescale 1ns / 1ps

module BF_2_B(
    input a, b, c,
    output d
    );
    
    assign d = ~((a | b) & c);
    
endmodule
