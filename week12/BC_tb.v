`timescale 1ns / 1ps

module BC_tb();

reg CLK, RESET;
wire [1:0]K;

BC tb_BC(
    .clk (CLK),
    .reset (RESET),
    .k (K)  );
    
initial begin
    CLK = 1'b1;
    RESET = 1'b0;
end

always CLK = #62.5 ~CLK;

initial begin
    #750
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
