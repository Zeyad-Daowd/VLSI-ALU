`timescale 1ns / 1ps

module tree_multiplier_tb;

    reg signed [31:0] A;
    reg signed [31:0] B;

    wire signed [63:0] z;

    tree_multiplier uut (
        .A(A), 
        .B(B), 
        .z(z)
    );

    integer success_count = 0;
    integer failure_count = 0;

    task check_result;
        input signed [63:0] expected_result;
        input integer testcase_number;

        if (z === expected_result) begin
            $display("TestCase#%0d: success", testcase_number);
            success_count = success_count + 1;
        end else begin
            $display("TestCase#%0d: failed with input A = %h, B = %h, Output Z = %h (Expected: %h)", 
                      testcase_number, A, B, z, expected_result);
            failure_count = failure_count + 1;
        end
    endtask

    initial begin
        // Test Case 1: Multiplication of a positive and a negative number
        A = 32'h00000010;
        B = -1; // Signed equivalent of 32'hFFFFFFFF
        #10;
        check_result(-64'sd16, 1);

        // Test Case 2: Multiplication of two positive numbers
        A = 32'h00000010;
        B = 32'h00000020;
        #10;
        check_result(64'sd512, 2);

        // Test Case 3: Multiplication of two negative numbers
        A = -1; // Signed equivalent of 32'hFFFFFFFF
        B = -1;
        #10;
        check_result(64'sd1, 3);

        // Test Case 4: Multiplication of a negative and a positive number
        A = -1; // Signed equivalent of 32'hFFFFFFFF
        B = 16;
        #10;
        check_result(-64'sd16, 4);

        // Test Case 5: Multiplication by zero
        A = 0;
        B = 32'h12345678;
        #10;
        check_result(64'sd0, 5);

        // Test Case 6: Multiplication by one
        A = 1;
        B = 32'h12345678;
        #10;
        check_result(64'sh12345678, 6);

        // Test Case 7: Random test case 1
        A = 32'habcdef00;
        B = 32'h12345678;
        #10;
        check_result(64'shfa03443242d20800, 7);

        // Test Case 8: Random test case 2
        A = 32'h76543210;
        B = 32'hfedcba98;
        #10;
        check_result(64'shff795e36541d5980, 8);

        $display("Total Success Cases: %0d", success_count);
        $display("Total Failure Cases: %0d", failure_count);
        $finish;
    end

endmodule
