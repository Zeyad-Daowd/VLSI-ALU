module adders_synth_tb;
    reg [31:0] a, b;
    reg cin;
    wire [31:0] sum_rc, sum_cba, sum_cla, sum_csa;
    wire cout_rc, cout_cba, cout_cla, cout_csa;
    reg overflow_status;

    integer success_count = 0;
    integer failure_count = 0;

    // Instantiate ripple carry adder
    ripple_carry_synth ripple_carry_uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum_rc),
        .cout(cout_rc)
    );

    // Instantiate carry bypass adder (32-bit)
    carry_bypass_synth carry_bypass_uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum_cba),
        .cout(cout_cba)
    );

    // Instantiate carry lookahead adder
    CarryLookAheadAdder_synth #(32) cla_uut (
        .A(a),
        .B(b),
        .Cin(cin),
        .Sum(sum_cla),
        .Cout(cout_cla)
    );

    // Instantiate carry select adder
    carry_select_adder_synth csa_uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum_csa),
        .cout(cout_csa)
    );

    task check_result;
        input [31:0] expected_sum;
        input expected_cout;
        input integer test_case_number;
        begin
            overflow_status = (a[31] == b[31] && a[31] != expected_sum[31]);
            if (sum_rc === expected_sum && cout_rc === expected_cout &&
                sum_cba === expected_sum && cout_cba === expected_cout &&
                sum_cla === expected_sum && cout_cla === expected_cout &&
                sum_csa === expected_sum && cout_csa === expected_cout) begin
                $display("TestCase#%0d: success", test_case_number);
                success_count = success_count + 1;
            end else begin
                $display("TestCase#%0d: failed with input a=%h, b=%h, cin=%b.", test_case_number, a, b, cin);
                $display("\tRipple Carry Output: sum=%h, cout=%b", sum_rc, cout_rc);
                $display("\tCarry Bypass Output: sum=%h, cout=%b", sum_cba, cout_cba);
                $display("\tCarry Lookahead Output: sum=%h, cout=%b", sum_cla, cout_cla);
                $display("\tCarry Select Output: sum=%h, cout=%b", sum_csa, cout_csa);
                $display("\tExpected: sum=%h, cout=%b, overflow status=%b", expected_sum, expected_cout, overflow_status);
                failure_count = failure_count + 1;
            end
        end
    endtask

    initial begin
        $display("Starting Testbench for Multiple Adder Modules");

        // Test 1: Overflow of positive numbers
        a = 32'h7FFFFFFF; b = 32'h1; cin = 1'b0;
        #10 check_result(32'h80000000, 1'b0, 1);

        // Test 2: Overflow of negative numbers
        a = 32'h80000000; b = 32'hFFFFFFFF; cin = 1'b0;
        #10 check_result(32'h7FFFFFFF, 1'b1, 2);

        // Test 3: Addition of a positive and a negative number
        a = 32'h00000010; b = 32'hFFFFFFF0; cin = 1'b0;
        #10 check_result(32'h00000000, 1'b1, 3);

        // Test 4: Addition of two positive numbers
        a = 32'h12345678; b = 32'h87654321; cin = 1'b0;
        #10 check_result(32'h99999999, 1'b0, 4);

        // Test 5: Addition of two negative numbers
        a = 32'hFFFFFFFF; b = 32'hFFFFFFFF; cin = 1'b0;
        #10 check_result(32'hFFFFFFFE, 1'b1, 5);

        // Test 6: Random test case 1
        a = 32'h5A3F2D1C; b = 32'h4C7E9A8B; cin = 1'b1;
        #10 check_result(32'hA6BDC7A8, 1'b0, 6);

        // Test 7: Random test case 2
        a = 32'h0000FFFF; b = 32'hFFFF0001; cin = 1'b0;
        #10 check_result(32'h00000000, 1'b1, 7);

        // Test 8: Random test case 3
        a = 32'hABCDEF01; b = 32'h12345678; cin = 1'b0;
        #10 check_result(32'hBE024579, 1'b0, 8);

        // Summary of results
        $display("Testbench Complete: %0d successes, %0d failures", success_count, failure_count);
        $finish;
    end

endmodule