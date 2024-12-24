module ripple_adder_tb();
    reg [31:0] a;
    reg [31:0] b;
    reg cin;
    wire [31:0] sum;
    wire cout;
    reg overflow;

    integer success_count = 0;
    integer failure_count = 0;

    ripple_carry uut (
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
        input integer test_case_num;
        begin
            overflow = ((a[31] & b[31] & ~sum[31]) || (~a[31] & ~b[31] & sum[31]));

            if (sum === expected_sum && cout === expected_cout && overflow === expected_overflow) begin
                $display("TestCase#%0d: success", test_case_num);
                success_count = success_count + 1;
            end else begin
                $display("TestCase#%0d: failed with input a=%h, b=%h, cin=%b. Output sum=%h, cout=%b, overflow status=%b ", 
                        test_case_num, a, b, cin, sum, cout, overflow );
                failure_count = failure_count + 1;
            end
        end
    endtask

    initial begin
         // Test case 1: Overflow of positive numbers
        a = 32'h7FFFFFFF; 
        b = 32'h1;       
        cin = 0;
        #10;
        check_result(32'h80000000, 0, 1, 1);

        // Test case 2: Overflow of negative numbers
        a = 32'h80000000;
        b = 32'hFFFFFFFF;
        cin = 0;
        #10;
        check_result(32'h7FFFFFFF, 1, 1, 2);

        // Test case 3: Addition of a positive and a negative number
        a = 32'h00000005; 
        b = 32'hFFFFFFFB;
        cin = 0;
        #10;
        check_result(32'h00000000, 1, 0, 3);

        // Test case 4: Addition of two positive numbers
        a = 32'h00000010;
        b = 32'h00000020;
        cin = 0;
        #10;
        check_result(32'h00000030, 0, 0, 4);

        // Test case 5: Addition of two negative numbers
        a = 32'hFFFFFFF0;
        b = 32'hFFFFFFE0;
        cin = 0;
        #10;
        check_result(32'hFFFFFFD0, 1, 0, 5);

        // Test case 6: Random case 1
        a = 32'h12345678;
        b = 32'h87654321;
        cin = 0;
        #10;
        check_result(32'h99999999, 0, 0, 6);

        // Test case 7: Random case 2
        a = 32'h0F0F0F0F;
        b = 32'hF0F0F0F0;
        cin = 1;
        #10;
        check_result(32'h00000000, 1, 0, 7);

        // Test case 8: Random case 3
        a = 32'hAAAAAAAA;
        b = 32'h55555555;
        cin = 0;
        #10;
        check_result(32'hFFFFFFFF, 0, 0, 8);

        $display("\nTest Summary:\n-----------------");
        $display("Total Success: %0d", success_count);
        $display("Total Failures: %0d", failure_count);

        $finish;
    end
endmodule
