`timescale 1ns / 1ps

module DFF(
    input d, e,
    output q, qp
    );
    
    assign q = ~((~d & e) | qp);
    assign qp = ~((d & e) | q);
    
endmodule
