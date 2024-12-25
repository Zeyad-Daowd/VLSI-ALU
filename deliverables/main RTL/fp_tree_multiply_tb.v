`timescale 1ns / 1ps

module fp_tree_multiplier_tb;

    reg [31:0] a;  
    reg [31:0] b;  

    wire [31:0] result; 
    wire overflow;      

    fp_tree_multiplier uut (
        .a(a),
        .b(b),
        .result(result),
        .overflow(overflow)
    );

    task display_result;
        input [31:0] input_a;
        input [31:0] input_b;
        input [31:0] output_res;
        input overflow_flag;
        begin
            $display("A: %h | B: %h | Result: %h | Overflow: %b",
                     input_a, input_b, output_res, overflow_flag);
        end
    endtask

    task assert_result;
        input [31:0] expected_result;
        input expected_overflow;
        begin
            if (result !== expected_result || overflow !== expected_overflow) begin
                $display("ASSERTION FAILED: Expected Result = %h, Got = %h | Expected Overflow = %b, Got = %b",
                         expected_result, result, expected_overflow, overflow);
            end else begin
                $display("ASSERTION PASSED: Result = %h | Overflow = %b", result, overflow);
            end
        end
    endtask

    initial begin
        // Test Case 1: Multiplying two zeros
        a = 32'h00000000; b = 32'h00000000; // 0 * 0
        #10 display_result(a, b, result, overflow);
        assert_result(32'h00000000, 1'b0);

        // Test Case 2: Multiplying a zero with a positive number
        a = 32'h00000000; b = 32'h3F800000; // 0 * 1.0
        #10 display_result(a, b, result, overflow);
        assert_result(32'h00000000, 1'b0);

        // Test Case 3: Multiplying a zero with a negative number
        a = 32'h00000000; b = 32'hBF800000; // 0 * -1.0
        #10 display_result(a, b, result, overflow);
        assert_result(32'h00000000, 1'b0);

        // Test Case 4: Multiplying two positive numbers
        a = 32'h3F800000; b = 32'h40000000; // 1.0 * 2.0
        #10 display_result(a, b, result, overflow);
        assert_result(32'h40000000, 1'b0);

        // Test Case 5: Multiplying two negative numbers
        a = 32'hBF800000; b = 32'hBF800000; // -1.0 * -1.0
        #10 display_result(a, b, result, overflow);
        assert_result(32'h3F800000, 1'b0);

        // Test Case 6: Multiplying a positive and a negative number
        a = 32'h3F800000; b = 32'hBF800000; // 1.0 * -1.0
        #10 display_result(a, b, result, overflow);
        assert_result(32'hBF800000, 1'b0);

        // Test Case 7: Multiplying numbers leading to overflow
        a = 32'h7F7FFFFF; b = 32'h40000000; // Largest finite * 2
        #10 display_result(a, b, result, overflow);
        assert_result(32'h7F800000, 1'b1); // Expected infinity with overflow

        // Test Case 8: Multiplying small numbers (denormalized case)
        a = 32'h00800000; b = 32'h00800000; // Smallest normalized * Smallest normalized
        #10 display_result(a, b, result, overflow);
        assert_result(32'h00000000, 1'b0); // Expected denormalized product

        // Test Case 9: Multiplying numbers with large exponent difference
        a = 32'h7F800000; b = 32'h00000001; // Infinity * Smallest subnormal
        #10 display_result(a, b, result, overflow);
        assert_result(32'h7F800000, 1'b0); // Expected infinity

        // Test Case 10: Multiplying random numbers
        a = 32'h41200000; b = 32'hC1A00000; // 10.0 * -20.0
        #10 display_result(a, b, result, overflow);
        assert_result(32'hc3480000, 1'b0); // Expected -200.0

        // Test Case 11: Multiplying infinity with a finite number
        a = 32'h7F800000; b = 32'h3F800000; // Infinity * 1.0
        #10 display_result(a, b, result, overflow);
        assert_result(32'h7F800000, 1'b1); // Expected infinity

        // Test Case 12: Multiplying infinity with infinity
        a = 32'h7F800000; b = 32'h7F800000; // Infinity * Infinity
        #10 display_result(a, b, result, overflow);
        assert_result(32'h7F800000, 1'b0); // Expected infinity

        // Test Case 13: Multiplying infinity with NaN
        a = 32'h7F800000; b = 32'h7FC00000; // Infinity * NaN
        #10 display_result(a, b, result, overflow);
        assert_result(32'h7FC00000, 1'b0); // Expected NaN

        // Test Case 14: Multiplying NaN with a finite number
        a = 32'h7FC00000; b = 32'h3F800000; // NaN * 1.0
        #10 display_result(a, b, result, overflow);
        assert_result(32'h7FC00000, 1'b1); // Expected NaN

        $stop;
    end

endmodule
