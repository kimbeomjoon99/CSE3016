`timescale 1ns / 1ps

module BPA_tb;

reg [3:0]A;
reg [3:0]B;
reg Cin;
wire [3:0]S;
//wire [3:1]C;
wire Cout;

BPA tb_BPA(
    .a (A),
    .b (B),
    .cin (Cin),
    .s (S),
    //.c (C),
    .cout (Cout)  );
    
initial begin
    Cin = 1'b0;
    A[0] = 1'b0;
    A[1] = 1'b0;
    A[2] = 1'b0;
    A[3] = 1'b0;
    B[0] = 1'b0;
    B[1] = 1'b0;
    B[2] = 1'b0;
    B[3] = 1'b0;
end

always Cin = #5000 ~Cin;
always A[3] = #2500 ~A[3];
always A[2] = #1250 ~A[2];
always A[1] = #625 ~A[1];
always A[0] = #312.5 ~A[0];
always B[3] = #156.25 ~B[3];
always B[2] = #78.125 ~B[2];
always B[1] = #39.0625 ~ B[1];
always B[0] = #19.53125 ~ B[0];

initial begin
    #10000
    $finish;
end

endmodule
