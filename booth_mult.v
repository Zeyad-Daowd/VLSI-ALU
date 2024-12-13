module booth_multiplier (
    input [31:0] M, 
    input [31:0] Q, 
    input clk,     
    input start,   
    output reg [63:0] result, 
    output reg done          
);

    reg signed [31:0] AC;    
    reg signed [31:0] QR;     
    reg signed Qn1;           
    reg [5:0] SC;             
    reg signed [31:0] multiplicand;
    
    localparam IDLE       = 3'b000;
    localparam CHECK_BITS = 3'b001;
    localparam ADD        = 3'b010;
    localparam SUB        = 3'b011;
    localparam SHIFT      = 3'b100;
    localparam FINISH     = 3'b101;

    reg [2:0] current_state, next_state;

    always @(posedge clk) begin
        if (start) begin
            if (M == 32'h80000000) begin
                AC <= 32'sd0;
                QR <= $signed(Q);
                multiplicand <= M;
            end else begin
                AC <= 32'sd0; 
                QR <= $signed(Q); 
                multiplicand <= $signed(M); 
            end
            
            Qn1 <= 1'b0; 
            SC <= 6'd32; 
            current_state <= CHECK_BITS;
            done <= 0; 
        end else begin
            current_state <= next_state;
        end
    end

    always @(*) begin
        case (current_state)
            IDLE: next_state = start ? CHECK_BITS : IDLE;
            CHECK_BITS: begin
                if (SC == 0) 
                    next_state = FINISH;
                else if ({QR[0], Qn1} == 2'b01) 
                    next_state = ADD;
                else if ({QR[0], Qn1} == 2'b10) 
                    next_state = SUB;
                else 
                    next_state = SHIFT;
            end
            ADD: next_state = SHIFT;
            SUB: next_state = SHIFT;
            SHIFT: next_state = CHECK_BITS;
            FINISH: next_state = IDLE;
        endcase
    end

    always @(posedge clk) begin
        case (current_state)
            ADD: AC <= AC + multiplicand;  
            SUB: AC <= AC - multiplicand;
            SHIFT: begin
                Qn1 <= QR[0];                  
                QR <= {AC[0], QR[31:1]};       
                AC <= {AC[31], AC[31:1]}; 
                SC <= SC - 1;                  
            end
            FINISH: begin
                result <= {AC, QR}; 
                done <= 1;          
            end
        endcase
    end

endmodule
