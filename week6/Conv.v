`timescale 1ns / 1ps

module Conv(
    input a, b, c, d,
    output e, f, g, h
    );
    
    assign e = (~(~a | c) | ~(~b | ~c)) | ~(~b | ~d);
    assign f = (~(~a | c) | ~(~b | ~c)) | ~(~b | d);
    assign g = (~((~b | c) | ~d) | ~(~a | c)) | ~(b | ~c); 
    assign h = d;
    
endmodule
