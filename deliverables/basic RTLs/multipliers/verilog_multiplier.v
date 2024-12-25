module verilog_multiplier (
    input signed [31:0] A, 
    input signed [31:0] B, 
    output signed [63:0] result
);
    assign result = A * B; 
endmodule

