`timescale 1ns / 1ps

module PBC_tb;

reg aa, bb, cc, dd, pp;
wire pec;

PBC tb_PBC(
    .a (aa),
    .b (bb),
    .c (cc),
    .d (dd),
    .p (pp),
    .e (pec)  );
    
initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
    pp = 1'b0;
end

always aa = #31.25 ~aa;
always bb = #62.5 ~bb;
always cc = #125 ~cc;
always dd = #250 ~dd;
always pp = #500 ~pp;

initial begin
    #1000
    $finish;
end

endmodule

/*
initial begin
    #62.5
    pp = ~pp;
end

initial begin
    #187.5
    pp = ~pp;
end

initial begin
    #250
    pp = ~pp;
end

initial begin
    #312.5
    pp = ~pp;
end

initial begin
    #437.5
    pp = ~pp;
end

initial begin
    #562.5
    pp = ~pp;
end

initial begin
    #687.5
    pp = ~pp;
end

initial begin
    #750
    pp = ~pp;
end

initial begin
    #812.5
    pp = ~pp;
end

initial begin
    #937.5
    pp = ~pp;
end
*/
