module booth_multiplier (
    input signed [31:0] M, 
    input signed [31:0] Q, 
    input clk,     
    input start,   
    output reg signed [63:0] result, 
    output reg done          
);

    reg signed [63:0] AC;         // Extend AC to 64 bits
    reg signed [31:0] QR;         // Multiplicand remains 32 bits
    reg signed Qn1;               // Tracks the previous bit
    reg [5:0] SC;                 // Counter for iterations
    reg signed [63:0] multiplicand; // Extend multiplicand to 64 bits

    localparam IDLE       = 3'b000;
    localparam CHECK_BITS = 3'b001;
    localparam ADD        = 3'b010;
    localparam SUB        = 3'b011;
    localparam SHIFT      = 3'b100;
    localparam FINISH     = 3'b101;

    reg [2:0] current_state, next_state;

    always @(posedge clk) begin
        if (start) begin
            // Initialize registers
            AC <= 64'sd0; 
            QR <= Q; 
            multiplicand <= {{32{M[31]}}, M}; // Sign-extend M to 64 bits
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
                QR <= {AC[0], QR[31:1]};  // Shift QR and bring in AC[0]
                AC <= {AC[63], AC[63:1]}; // Arithmetic right shift AC (sign-extend AC[63])
                SC <= SC - 1;                  
            end
            FINISH: begin
                result <= {AC, QR}; 
                done <= 1;          
            end
        endcase
    end
endmodule
