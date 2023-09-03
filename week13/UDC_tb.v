`timescale 1ns / 1ps

module UDC_tb;

reg CLK, RESET, UP, DOWN;
wire [3:0]K;
wire [6:0]SEG;

UDC tb_UDC(
    .clk (CLK),
    .reset (RESET),
    .up (UP),
    .down (DOWN),
    .k (K),
    .seg (SEG)  );
    
initial begin
    CLK = 1'b1;
    UP = 1'b1;
    RESET = 1'b0;
    DOWN = 1'b0;
end

always CLK = #31.25 ~CLK;

initial begin
    #500
    UP = ~UP;
    DOWN = ~DOWN;
end

initial begin
    #750
    RESET = ~RESET;
end

initial begin
    #812.5
    RESET = ~RESET;
end

initial begin
    #1000
    $finish;
end

endmodule
