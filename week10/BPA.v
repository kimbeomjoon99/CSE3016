`timescale 1ns / 1ps

module BPA(
    input [3:0]a, [3:0]b,
    input cin,
    output [3:0]s,
    output cout
    );
    
    wire [3:1]c;
    
    assign s[0] = (a[0] ^ b[0]) ^ cin;
    assign c[1] = (a[0] & b[0]) | (cin & (a[0] ^ b[0]));
    assign s[1] = (a[1] ^ b[1]) ^ c[1];
    assign c[2] = (a[1] & b[1]) | (c[1] & (a[1] ^ b[1]));
    assign s[2] = (a[2] ^ b[2]) ^ c[2];
    assign c[3] = (a[2] & b[2]) | (c[2] & (a[2] ^ b[2]));
    assign s[3] = (a[3] ^ b[3]) ^ c[3];
    assign cout = (a[3] & b[3]) | (c[3] & (a[3] ^ b[3]));
    
endmodule
