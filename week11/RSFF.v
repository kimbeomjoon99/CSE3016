`timescale 1ns / 1ps

module RSFF(
    input r, s, c,
    output q, qp
    );
    
    assign q = ~(~(~c | ~r) | qp);
    assign qp = ~(~(~c | ~s) | q);

endmodule
