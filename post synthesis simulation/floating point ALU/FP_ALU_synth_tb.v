`timescale 1ns / 1ps
module FP_ALU_synth_tb #(parameter XLEN = 32);
    reg [XLEN-1:0] A, B;
    reg sel;
    reg  overflow,underflow, exception;
    wire [XLEN-1:0] result;
    real value;
    FP_ALU_synth uut (
        .in1(A),
        .in2(B),
        .sel(sel),
        .result(result)
    );
    task assert_result;
        input [31:0] expected_result;
        begin
            if (result !== expected_result ) begin
                $display("ASSERTION FAILED: Expected Result = %h, Got = %h ",
                         expected_result, result);
            end else begin
                $display("ASSERTION PASSED: Result = %h ", result);
            end
        end
    endtask
    task display_result;
        input [31:0] input_a;
        input [31:0] input_b;
        input [31:0] output_res;
        begin
            $display("A: %h | B: %h | Result: %h ",
                     input_a, input_b, output_res);
        end
    endtask
    

    initial  
    begin
        sel = 1'b0;
        A = 32'b0_10000000_10011001100110011001100;  // 3.2
        B = 32'b0_10000001_00001100110011001100110;  // 4.2
        #20
        A = 32'b0_01111110_01010001111010111000010;  // 0.66
        B = 32'b0_01111110_00000101000111101011100;  // 0.51
        #20
        A = 32'b1_01111110_00000000000000000000000;  // -0.5
        B = 32'b1_10000001_10011001100110011001100;  // -6.4
        #20
        A = 32'b1_01111110_00000000000000000000000;  // -0.5
        B = 32'b0_10000001_10011001100110011001100;  //  6.4
        #20
        A = 32'h4034b4b5;
        B = 32'hbf70f0f1;
        #20
        A = 32'h3F800000; // 1.0
        B = 32'hBF800000; // -1.0
        #20
        A = 32'h41200000; // 10.0
        B = 32'hC1200000; // -10.0
        #20
        A = 32'h3FC00000; // 1.5
        B = 32'h3FC00000; // 1.5
        #20
        //multiplication
        sel = 1'b1;
        A = 32'h00000000;
        B = 32'h00000000; // 0 * 0
        #20
        A = 32'h00000000; 
        B = 32'h3F800000; // 0 * 1.0
        #20
        A = 32'h00000000; 
        B = 32'hBF800000; 
        #20
        A = 32'h3F800000; 
        B = 32'h40000000;
        #20
        A = 32'hBF800000; 
        B = 32'hBF800000;
        #20
        A = 32'h3F800000; 
        B = 32'hBF800000;
        #20
        A = 32'h7F7FFFFF; 
        B = 32'h40000000;
        #20
        A = 32'h00800000; 
        B = 32'h00800000;
        #20
        A = 32'h7F800000; 
        B = 32'h00000001;
        #20
        A = 32'h41200000; 
        B = 32'hC1A00000;
        #20
        A = 32'h7F800000; 
        B = 32'h3F800000;
        #20
        A = 32'h7F800000; 
        B = 32'h7F800000;
        #20
        A = 32'h7F800000; 
        B = 32'h7FC00000;
        #20
        A = 32'h7FC00000; 
        B = 32'h3F800000;

    end

    initial
    begin
        // Checking overflow/underflow status based on the result
        overflow = 0;
        underflow = 0;

        #15
        value = (2 ** (result[30:23] - 127)) * ($itor({1'b1, result[22:0]}) / (2 ** 23)) * ((-1) ** result[31]);

        if (result[30:23] == 8'b11111111) begin
            overflow = 1;
        end else if (result[30:23] == 8'b00000000) begin
            underflow = 1;
        end
        $display("Expected Value : %f Result : %f Overflow: %b Underflow: %b", 3.2 + 4.2, value, overflow, underflow);

        #20
        value =(2**(result[30:23]-127))*($itor({1'b1,result[22:0]})/2**23)*((-1)**(result[31]));
        if (result[30:23] == 8'b11111111) begin
            overflow = 1;
        end else if (result[30:23] == 8'b00000000) begin
            underflow = 1;
        end
        $display("Expected Value : %f Result : %f Overflow: %b Underflow: %b", 0.66 + 0.51, value, overflow, underflow);

        #20
        value =(2**(result[30:23]-127))*($itor({1'b1,result[22:0]})/2**23)*((-1)**(result[31]));
        if (result[30:23] == 8'b11111111) begin
            overflow = 1;
        end else if (result[30:23] == 8'b00000000) begin
            underflow = 1;
        end
        $display("Expected Value : %f Result : %f Overflow: %b Underflow: %b", -0.5 - 6.4, value, overflow, underflow);

        #20
        value =(2**(result[30:23]-127))*($itor({1'b1,result[22:0]})/2**23)*((-1)**(result[31]));
        if (result[30:23] == 8'b11111111) begin
            overflow = 1;
        end else if (result[30:23] == 8'b00000000) begin
            underflow = 1;
        end
        $display("Expected Value : %f Result : %f Overflow: %b Underflow: %b", -0.5 + 6.4, value, overflow, underflow);

        #20
        value =(2**(result[30:23]-127))*($itor({1'b1,result[22:0]})/2**23)*((-1)**(result[31]));
        if (result[30:23] == 8'b11111111) begin
            overflow = 1;
        end else if (result[30:23] == 8'b00000000) begin
            underflow = 1;
        end
       $display("Expected Value : %f Result : %f Overflow: %b Underflow: %b", 2.8235295 - 0.9411765, value, overflow, underflow);

        #20
        value =(2**(result[30:23]-127))*($itor({1'b1,result[22:0]})/2**23)*((-1)**(result[31]));
        if (result[30:23] == 8'b11111111) begin
            overflow = 1;
        end else if (result[30:23] == 8'b00000000) begin
            underflow = 1;
        end
        $display("Expected Value : %f Result : %f Overflow: %b Underflow: %b", 1.0 - 1.0, value, overflow, underflow);

        #20
        value =(2**(result[30:23]-127))*($itor({1'b1,result[22:0]})/2**23)*((-1)**(result[31]));
        if (result[30:23] == 8'b11111111) begin
            overflow = 1;
        end else if (result[30:23] == 8'b00000000) begin
            underflow = 1;
        end
        $display("Expected Value : %f Result : %f Overflow: %b Underflow: %b", 10.0 + (-10.0), value, overflow, underflow);

        #20
        value =(2**(result[30:23]-127))*($itor({1'b1,result[22:0]})/2**23)*((-1)**(result[31]));
        if (result[30:23] == 8'b11111111) begin
            overflow = 1;
        end else if (result[30:23] == 8'b00000000) begin
            underflow = 1;
        end
        $display("Expected Value : %f Result : %f Overflow: %b Underflow: %b", 1.5 + 1.5, value, overflow, underflow);

        //multiplication
        #20
         // 0 * 0
        display_result(A, B, result);
        assert_result(32'h00000000);

        // 0 * 1.0
        #20 
        display_result(A, B, result);
        assert_result(32'h00000000);

         // 0 * -1.0
        #20 
        display_result(A, B, result);
        assert_result(32'h00000000);

         // 1.0 * 2.0
        #20 
        display_result(A, B, result);
        assert_result(32'h40000000);

         // -1.0 * -1.0
        #20
        display_result(A, B, result);
        assert_result(32'h3F800000);
        #20

        display_result(A, B, result);
        assert_result(32'hBF800000);
        #20

        display_result(A, B, result);
        assert_result(32'h7F800000);
        #20
        display_result(A, B, result);
        assert_result(32'h00000000);
        #20
        display_result(A, B, result);
        assert_result(32'h7F800000);
        #20
        display_result(A, B, result);
        assert_result(32'hc3480000);
        #20
        display_result(A, B, result);
        assert_result(32'h7F800000);
        #20
        display_result(A, B, result);
        assert_result(32'h7F800000);
        #20
        display_result(A, B, result);
        assert_result(32'h7FC00000);
        #20
        display_result(A, B, result);
        assert_result(32'h7FC00000);

        $finish;
    end
endmodule



