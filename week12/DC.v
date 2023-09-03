`timescale 1ns / 1ps

module DC(
    input clk, reset,
    output reg [3:0]k
    );
    
always @(posedge clk) begin
    if ((k[0] & ~k[1] & ~k[2] & k[3]) | reset) begin
        k[0] <= 0;
        k[1] <= 0;
        k[2] <= 0;
        k[3] <= 0;
    end
    else if (~k[0] & ~k[1] & ~k[2] & ~k[3]) begin //
        k[0] <= 1;
    end
    else if (k[0] & ~k[1] & ~k[2] & ~k[3]) begin
        k[0] <= 0;
        k[1] <= 1;
    end
    else if (~k[0] & k[1] & ~k[2] & ~k[3]) begin //
        k[0] <= 1;
    end
    else if (k[0] & k[1] & ~k[2] & ~k[3]) begin
        k[0] <= 0;
        k[1] <= 0;
        k[2] <= 1;
    end
    else if (~k[0] & ~k[1] & k[2] & ~k[3]) begin //
        k[0] <= 1;
    end
    else if (k[0] & ~k[1] & k[2] & ~k[3]) begin
        k[0] <= 0;
        k[1] <= 1;
    end
    else if (~k[0] & k[1] & k[2] & ~k[3]) begin //
        k[0] <= 1;
    end
    else if (k[0] & k[1] & k[2] & ~k[3]) begin
        k[0] <= 0;
        k[1] <= 0;
        k[2] <= 0;
        k[3] <= 1;
    end
    else if (~k[0] & ~k[1] & ~k[2] & k[3]) begin //
        k[0] <= 1;
    end
    else begin
        k[0] <= 0;
        k[1] <= 0;
        k[2] <= 0;
        k[3] <= 0;
    end
end
    
endmodule
