`timescale 1ns / 1ps

module DC_tb();

reg CLK, RESET;
wire [3:0]K;

DC tb_DC(
    .clk (CLK),
    .reset (RESET),
    .k (K)  );
    
initial begin
    CLK = 1'b1;
    RESET = 1'b0;
end

always CLK = #31.25 ~CLK;

initial begin
    #812.5
    RESET = ~RESET;
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
