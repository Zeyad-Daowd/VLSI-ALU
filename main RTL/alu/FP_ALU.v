
module FP_ALU (
    input [31:0] in1,    
    input [31:0] in2,    
    input sel,           
    output [31:0] result   
);

    wire [31:0] add_result;
    wire [31:0] mult_result;
    wire mult_overflow;

    FPCarryLookAheadAdder adder (
        .in1(in1),
        .in2(in2),
        .result(add_result)
    );


    fp_tree_multiplier multiplier (
        .a(in1),
        .b(in2),
        .result(mult_result),
        .overflow(mult_overflow)
    );

    assign result = sel ? mult_result : add_result;


endmodule

