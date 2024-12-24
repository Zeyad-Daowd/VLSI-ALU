module multipliers_tb;
     
    reg clk;    
    reg rst;           
    reg start;             
    reg signed [31:0] M, Q;
    wire signed [63:0] result, result2, result3, result4;  
    wire done, done2;             

    // Instantiate booth_multiplier
    booth_multiplier uut (
        .M(M),
        .Q(Q),
        .result(result),
        .clk(clk),
        .start(start),
        .done(done)
    );

    // Instantiate verilog_multiplier
    verilog_multiplier uut2 (
        .A(M),
        .B(Q),
        .result(result2)
    );

    // Instantiate tree_multiplier
    tree_multiplier uut3 (
        .A(M),
        .B(Q),
        .z(result3)
    );

    // Instantiate sequential_multiplier_shift_accumulate
    sequential_multiplier_shift_accumulate uut4 (
        .multiplicand(M),
        .multiplier(Q),
        .clk(clk),
        .rst(start),
        .product(result4),
        .done(done2)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    // Testbench logic
    initial begin
        M = 0;
        Q = 0;
        start = 0;

        // Monitor statement
       // $monitor("Time = %0t | M = %d | Q = %d | Result1 = %d | Result2 = %d | Result3 = %d | Result4 = %d | Done = %b, Done2 = %b", 
                 //$time, M, Q, result, result2, result3, result4, done, done2);

        // Test Case 1: 12345 x 6789
        M = 32'd12345;
        Q = 32'd6789;

        start = 1;
        #10;
        start = 0;
        wait(done && done2);
        if ((result === 64'd83810205) && (result2 === 64'd83810205) && 
            (result3 === 64'd83810205) && (result4 === 64'd83810205)  ) begin
            $display("Test Case #1: Success");
        end else begin
            $display("Test Case #1: Failed with input M = %d, Q = %d, Results: booth %d normal %d  tree %d shift %d", 
                     M, Q, result, result2, result3, result4);
        end

         // Test Case 2: -12345 x 6789
        #10;
        //= 0;
        M = -32'd12345;
         Q = 32'd6789;
        start = 1;
        #10;
        start = 0;
        wait(done && done2);
        if ((result === -64'd83810205) && (result2 === -64'd83810205) && 
            (result3 === -64'd83810205) && (result4 === -64'd83810205) ) begin
            $display("Test Case #2: Success");
        end else begin
            $display("Test Case #2: Failed with input M = %d, Q = %d, Results: booth %d normal %d  tree %d shift %d", 
                     M, Q, result, result2, result3, result4);
        end

         // Test Case 3
        #10;
        M = -32'd12345;
        Q = -32'd6789;
        start = 1;
        #10;
        start = 0;
        wait(done && done2);
        if ((result === 64'd83810205) && (result2 === 64'd83810205) && 
            (result3 === 64'd83810205)  && (result4 === 64'd83810205) ) begin
            $display("Test Case #3: Success");
        end else begin
            $display("Test Case #3: Failed with input M = %d, Q = %d, Results: booth %d normal %d  tree %d shift %d", 
                     M, Q, result, result2, result3, result4);
        end

         // Test Case 4
        #10;
        M = 32'd0;
        Q = 32'd123456789;
        start = 1;
        #10;
        start = 0;
        wait(done && done2);
        if ((result === 64'd0) && (result2 === 64'd0) && 
            (result3 === 64'd0) && (result4 === 64'd0)  ) begin
            $display("Test Case #4: Success");
        end else begin
            $display("Test Case #4: Failed with input M = %d, Q = %d, Results: booth %d normal %d  tree %d shift %d", 
                     M, Q, result, result2, result3, result4);
        end

         // Test Case 5
        #10;
        M = 32'd2147483647; 
        Q = 32'd2147483647;
        start = 1;
        #10;
        start = 0;
        wait(done && done2);
        if ((result === 64'd4611686014132420609) && (result2 === 64'd4611686014132420609) && 
            (result3 === 64'd4611686014132420609) && (result4 === 64'd4611686014132420609)  ) begin
            $display("Test Case #5: Success");
        end else begin
            $display("Test Case #5: Failed with input M = %d, Q = %d, Results: booth %d normal %d  tree %d shift %d", 
                     M, Q, result, result2, result3, result4);
        end

         // Test Case 6
        #10;
        M = -32'd2147483648; 
        Q = -32'd2147483648;
        start = 1;
        #10;
        start = 0;
        wait(done && done2);
        if ((result === 64'd4611686018427387904) && (result2 === 64'd4611686018427387904) && 
            (result3 === 64'd4611686018427387904) && (result4 ===  64'd4611686018427387904) ) begin
            $display("Test Case #6: Success");
        end else begin
            $display("Test Case #6: Failed with input M = %d, Q = %d, Results: booth %d normal %d  tree %d shift %d", 
                     M, Q, result, result2, result3, result4);
        end

         // Test Case 7
        #10;
         M = 32'd2147483647;
        Q = -32'd2147483648;
        start = 1;
        #10;
        start = 0;
        wait(done && done2);
        if ((result === -64'd4611686016279904256) && (result2 === -64'd4611686016279904256) && 
            (result3 === -64'd4611686016279904256) && (result4 === -64'd4611686016279904256)  ) begin
            $display("Test Case #7: Success");
        end else begin
            $display("Test Case #7: Failed with input M = %d, Q = %d, Results: booth %d normal %d  tree %d shift %d", 
                     M, Q, result, result2, result3, result4);
        end

         // Test Case 8
        #10;
        M = 32'd12345678;
        Q = -32'd87654321;
        start = 1;
        #10;
        start = 0;
        wait(done && done2);
        if ((result === -64'd1082152022374638) && (result2 === -64'd1082152022374638) && 
            (result3 === -64'd1082152022374638) && (result4 === -64'd1082152022374638)  ) begin
            $display("Test Case #8: Success");
        end else begin
            $display("Test Case #8: Failed with input M = %d, Q = %d, Results: booth %d normal %d  tree %d shift %d", 
                     M, Q, result, result2, result3, result4);
        end


        // Test Case 9
        #10;
        M = -32'd12345678;
        Q = 32'd87654321;
        start = 1;
        #10;
        start = 0;
        wait(done && done2);
        if ((result === -64'd1082152022374638) && (result2 === -64'd1082152022374638) && 
            (result3 === -64'd1082152022374638) && (result4 === -64'd1082152022374638)  ) begin
            $display("Test Case #9: Success");
        end else begin
            $display("Test Case #9: Failed with input M = %d, Q = %d, Results: booth %d normal %d  tree %d shift %d", 
                     M, Q, result, result2, result3, result4);
        end
    

        // Test Case 10
        #10;
        M = 32'd987654321;
        Q = 32'd123456789;
        start = 1;
        #10;
        start = 0;
        wait(done && done2);
        if ((result === 64'd121932631112635269) && (result2 === 64'd121932631112635269) && 
            (result3 === 64'd121932631112635269) && (result4 === 64'd121932631112635269)  ) begin
            $display("Test Case #10: Success");
        end else begin
            $display("Test Case #10: Failed with input M = %d, Q = %d, Results: booth %d normal %d  tree %d shift %d", 
                     M, Q, result, result2, result3, result4);
        end
        // Test Case 11
        #10;
        M = 32'd2147483647;
        Q = -32'd1;
        start = 1;
        #10;
        start = 0;
        wait(done && done2);
        if ((result === -64'd2147483647) && (result2 === -64'd2147483647) && 
            (result3 === -64'd2147483647) && (result4 === -64'd2147483647)  ) begin
            $display("Test Case #11: Success");
        end else begin
            $display("Test Case #11: Failed with input M = %d, Q = %d, Results: booth %d normal %d  tree %d shift %d", 
                     M, Q, result, result2, result3, result4);
        end
        // Test Case 12
        #10;
        M = -32'd2147483648;
        Q =  32'd1;
        start = 1;
        #10;
        start = 0;
        wait(done && done2);
        if ((result === -64'd2147483648) && (result2 === -64'd2147483648) && 
            (result3 === -64'd2147483648) && (result4 === -64'd2147483648)  ) begin
            $display("Test Case #12: Success");
        end else begin
            $display("Test Case #12: Failed with input M = %d, Q = %d, Results: booth %d normal %d  tree %d shift %d", 
                     M, Q, result, result2, result3, result4);
        end

       
        $finish;
    end

endmodule
