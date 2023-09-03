`timescale 1ns / 1ps

module OTFDMUX(
    input f, s1, s2,
    output a, b, c, d
    );
    
    assign a = f & ~s1 & ~s2;
    assign b = f & s1 & ~s2;
    assign c = f & ~s1 & s2;
    assign d = f & s1 & s2;
    
endmodule
