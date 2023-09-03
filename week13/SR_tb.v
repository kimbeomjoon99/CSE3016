`timescale 1ns / 1ps

module SR_tb;

reg CLK, RESET, IN;
wire [3:0]K;

SR tb_SR(
    .clk (CLK),
    .reset (RESET),
    .in (IN),
    .k (K)  );
    
initial begin
    CLK = 1'b1;
    RESET = 1'b0;
    IN = 1'b1;
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
    RESET = ~RESET;
end

initial begin
    #750
    RESET = ~RESET;
    IN = ~IN;
end

initial begin
    #875
    IN = ~IN;
end

initial begin
    #1000
    $finish;
end

endmodule
