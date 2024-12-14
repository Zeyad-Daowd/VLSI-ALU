module carry_select_adder_tb;
    reg [31:0] a, b;
    reg cin;
    wire [31:0] sum;
    wire cout;
    reg overflow_status;

    integer success_count = 0;
    integer failure_count = 0;

    carry_select_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    task check_result;
        input [31:0] expected_sum;
        input expected_cout;
        input expected_overflow;
        input integer test_case_number;
        begin
            overflow_status = (a[31] == b[31] && a[31] != sum[31]);
            if (sum === expected_sum && cout === expected_cout ) begin
                $display("TestCase#%0d: success", test_case_number);
                success_count = success_count + 1;
            end else begin
                $display("TestCase#%0d: failed with input a=%h, b=%h, cin=%b. Output sum=%h, cout=%b, overflow status=%b ", 
                        test_case_number, a, b, cin, sum, cout, overflow_status);
                failure_count = failure_count + 1;
            end
        end
    endtask

    initial begin
        $display("Starting Testbench for 32-bit Carry Select Adder");

        // Test 1: Overflow of positive numbers
        a = 32'h7FFFFFFF; b = 32'h1; cin = 1'b0;
        #10 check_result(32'h80000000, 1'b0, 1'b1, 1);

        // Test 2: Overflow of negative numbers
        a = 32'h80000000; b = 32'hFFFFFFFF; cin = 1'b0;
        #10 check_result(32'h7FFFFFFF, 1'b1, 1'b1, 2);

        // Test 3: Addition of a positive and a negative number
        a = 32'h00000010; b = 32'hFFFFFFF0; cin = 1'b0;
        #10 check_result(32'h00000000, 1'b1, 1'b0, 3);

        // Test 4: Addition of two positive numbers
        a = 32'h12345678; b = 32'h87654321; cin = 1'b0;
        #10 check_result(32'h99999999, 1'b0, 1'b0, 4);

        // Test 5: Addition of two negative numbers
        a = 32'hFFFFFFFF; b = 32'hFFFFFFFF; cin = 1'b0;
        #10 check_result(32'hFFFFFFFE, 1'b1, 1'b0, 5);

        // Test 6: Random test case 1
        a = 32'h5A3F2D1C; b = 32'h4C7E9A8B; cin = 1'b1;
        #10 check_result(32'hA6BDC7A8, 1'b0, 1'b0, 6);

        // Test 7: Random test case 2
        a = 32'h0000FFFF; b = 32'hFFFF0001; cin = 1'b0;
        #10 check_result(32'h00000000, 1'b1, 1'b0, 7);

        // Test 8: Random test case 3
        a = 32'hABCDEF01; b = 32'h12345678; cin = 1'b0;
        #10 check_result(32'hBE024579, 1'b0, 1'b0, 8);

        // Summary of results
        $display("Testbench Complete: %0d successes, %0d failures", success_count, failure_count);
        $finish;
    end

endmodule
