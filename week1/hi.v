`timescale 1ns / 1ps

module inv(
    input a, b,
    output y, z
    );
    
assign y=~a;
assign z=b;

endmodule
