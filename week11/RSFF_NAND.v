`timescale 1ns / 1ps

module RSFF_NAND(
    input r, s, c,
    output q, qp
    );
    
    assign q = ~(~(c & s) & qp);
    assign qp = ~(~(c & r) & q);

endmodule

