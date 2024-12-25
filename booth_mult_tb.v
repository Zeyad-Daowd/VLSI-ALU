`timescale 1ns / 1ps
module booth_multiplier_tb;

    reg [31:0] M;          
    reg [31:0] Q;          
    reg clk;               
    reg start;    
    reg rst;    
    wire [63:0] result;    
    wire done;             

    booth_multiplier_ss uut (
        .M(M),
        .Q(Q),
        .clk(clk),
        .rst(rst),
        .start(start),
        .result(result),
        .done(done)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        M = 0;
        Q = 0;
        start = 0;
        rst = 1;
        $monitor("Time = %0t | M = %d | Q = %d | Result = %d | Done = %b", $time, M, Q, result, done);

        // Test Case 1: 12345 x 6789
        #10;
        M = 32'd12345;
        Q = 32'd6789;
        rst = 0;
        start = 1;
        #10;
        start = 0;
        wait(done);
        if (result === 64'd83810205) begin
            $display("Test Case #1: success");
            end
        else begin
            $display("Test Case #1: failed with input M = %d and Q = %d and output = %d", M, Q, result);
        end


        // Test Case 2: -12345 x 6789
        #10;
        M = -32'd12345;
        Q = 32'd6789;
        start = 1;
        #10;
        start = 0;
        wait(done);
        if (result === -64'd83810205) begin
            $display("Test Case #2: success");
        end
        else begin
            $display("Test Case #2: failed with input M = %d and Q = %d and output = %d", M, Q, result);
        end
    

        // Test Case 3: -12345 x -6789
        #10;
        M = -32'd12345;
        Q = -32'd6789;
        start = 1;
        #10;
        start = 0;
        wait(done);
        if (result === 64'd83810205) begin
            $display("Test Case #3: success");
            end
        else begin
            $display("Test Case #3: failed with input M = %d and Q = %d and output = %d", M, Q, result);
        end

        // Test Case 4: 0 x 123456789
        #10;
        M = 32'd0;
        Q = 32'd123456789;
        start = 1;
        #10;
        start = 0;
        wait(done);
        if (result === 64'd0) begin
            $display("Test Case #4: success");
            end
        else begin
            $display("Test Case #4: failed with input M = %d and Q = %d and output = %d", M, Q, result);
        end

        // Test Case 5: Maximum positive values
        #10;
        M = 32'd2147483647; 
        Q = 32'd2147483647;
        start = 1;
        #10;
        start = 0;
        wait(done);
        if (result === 64'd4611686014132420609) begin
            $display("Test Case #5: success");
            end
        else begin
            $display("Test Case #5: failed with input M = %d and Q = %d and output = %d", M, Q, result);
        end

        // Test Case 6: Maximum negative values
        #10;
        M = -32'd2147483648; 
        Q = -32'd2147483648;
        start = 1;
        #10;
        start = 0;
        wait(done);
        if (result === 64'd4611686018427387904) begin
            $display("Test Case #6: success");
        end else begin
            $display("Test Case #6: failed with input M = %d and Q = %d and output = %d", M, Q, result);
        end

        // Test Case 7: Overflow scenario
        #10;
        M = 32'd2147483647;
        Q = -32'd2147483648;
        start = 1;
        #10;
        start = 0;
        wait(done);
        if (result === -64'd4611686016279904256) begin
            $display("Test Case #7: success");
            end
        else begin
            $display("Test Case #7: failed with input M = %d and Q = %d and output = %d", M, Q, result);
        end

        // Test Case 8: Mixed signs (positive x negative)
        #10;
        M = 32'd12345678;
        Q = -32'd87654321;
        start = 1;
        #10;
        start = 0;
        wait(done);
        if (result === -64'd1082152022374638) begin
            $display("Test Case #8: success");
            end
        else begin
            $display("Test Case #8: failed with input M = %d and Q = %d and output = %d", M, Q, result);
        end

        // Test Case 9: Mixed signs (negative x positive)
        #10;
        M = -32'd12345678;
        Q = 32'd87654321;
        start = 1;
        #10;
        start = 0;
        wait(done);
        if (result === -64'd1082152022374638) begin
            $display("Test Case #9: success");
        end else begin
            $display("Test Case #9: failed with input M = %d and Q = %d and output = %d", M, Q, result);
        end

        // Test Case 10: Random numbers
        #10;
        M = 32'd987654321;
        Q = 32'd123456789;
        start = 1;
        #10;
        start = 0;
        wait(done);
        if (result === 64'd121932631112635269) begin
            $display("Test Case #10: success");
        end else begin
            $display("Test Case #10: failed with input M = %d and Q = %d and output = %d", M, Q, result);
        end

        // Test Case 11: Large positive and small negative
        #10;
        M = 32'd2147483647;
        Q = -32'd1;
        start = 1;
        #10;
        start = 0;
        wait(done);
        if (result === -64'd2147483647) begin
            $display("Test Case #11: success");
        end
        else begin 
            $display("Test Case #11: failed with input M = %d and Q = %d and output = %d", M, Q, result);
        end

        // Test Case 12: Large negative and small positive
        #10;
        M = -32'd2147483648;
        Q =  32'd1;
        start = 1;
        #10;
        start = 0;
        wait(done);
        if (result === -64'd2147483648) begin
            $display("Test Case #12: success");
        end else begin
            $display("Test Case #12: failed with input M = %d and Q = %d and output = %d", M, Q, result);
        end

        $finish;
    end

endmodule
