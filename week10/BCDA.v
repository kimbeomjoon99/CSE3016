`timescale 1ns / 1ps

module BCDA(
    input [3:0]a, [3:0]b,
    input cin,
    output c_out,
    output [3:0]sum
    );
    
    wire [3:0]s;
    wire [3:1]c;
    wire cout;
    wire [3:1]cc;
    
    assign s[0] = (a[0] ^ b[0]) ^ cin;
    assign c[1] = (a[0] & b[0]) | (cin & (a[0] ^ b[0]));
    assign s[1] = (a[1] ^ b[1]) ^ c[1];
    assign c[2] = (a[1] & b[1]) | (c[1] & (a[1] ^ b[1]));
    assign s[2] = (a[2] ^ b[2]) ^ c[2];
    assign c[3] = (a[2] & b[2]) | (c[2] & (a[2] ^ b[2]));
    assign s[3] = (a[3] ^ b[3]) ^ c[3];
    assign cout = (a[3] & b[3]) | (c[3] & (a[3] ^ b[3]));
    
    assign c_out = cout | (s[3] & s[2]) | (s[3] & s[1]);
    assign sum[0] = s[0];
    assign cc[1] = 0;
    assign sum[1] = (s[1] ^ c_out) ^ cc[1];
    assign cc[2] = (s[1] & c_out) | (cc[1] & (s[1] ^ c_out));
    assign sum[2] = (s[2] ^ c_out) ^ cc[2];
    assign cc[3] = (s[2] & c_out) | (cc[2] & (s[2] ^ c_out));
    assign sum[3] = (s[3] ^ 0) ^ cc[3];
    
endmodule
