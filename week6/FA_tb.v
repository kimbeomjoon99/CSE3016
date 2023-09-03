`timescale 1ns / 1ps

module FA_tb;

reg aa, bb, C_in;
wire S, C_out;

FA tb_FA(
    .a (aa),
    .b (bb),
    .c_in (C_in),
    .s (S),
    .c_out (C_out)  );
    
initial begin
    aa = 1'b0;
    bb = 1'b0;
    C_in = 1'b0;
end

always aa = #125 ~aa;
always bb = #250 ~bb;
always C_in = #500 ~C_in;

initial begin
    #1000
    $finish;
end

endmodule
