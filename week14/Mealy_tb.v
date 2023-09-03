`timescale 1ns / 1ps

module Mealy_tb;

reg IN, CLK, RESET;
wire OUT;
wire [1:0]S;

Mealy tb_Mealy(
    .in (IN),
    .clk (CLK),
    .reset (RESET),
    .out (OUT),
    .s (S)  );
    
initial begin
    CLK = 1'b1;
    IN = 1'b1;
    RESET = 1'b0;
end

always CLK = #62.5 ~CLK;

initial begin
    #250
    IN = ~IN;
end

initial begin
    #375
    IN = ~IN;
end

initial begin
    #625
    IN = ~IN;
end

initial begin
    #750
    IN = ~IN;
end

initial begin
    #875
    RESET = ~RESET;
end

initial begin
    #1000
    $finish;
end

endmodule
