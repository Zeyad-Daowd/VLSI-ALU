module booth_multiplier (
    input signed [31:0] M, 
    input signed [31:0] Q, 
    input clk,     
    input rst,      // Reset input
    input start,   
    output reg signed [63:0] result, 
    output reg done          
);

    reg signed [63:0] partial_sum;        
    reg signed [31:0] current_multiplier; 
    reg signed last_bit;                 
    reg [5:0] iteration_count;           
    reg signed [63:0] extended_operand;  

    localparam ST_IDLE       = 3'b000;
    localparam ST_CHECK_BITS = 3'b001;
    localparam ST_ADD        = 3'b010;
    localparam ST_SUBTRACT   = 3'b011;
    localparam ST_SHIFT      = 3'b100;
    localparam ST_COMPLETE   = 3'b101;

    reg [2:0] current_state, next_state;

    // State Machine
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            current_state <= ST_IDLE;
        end else begin
            current_state <= next_state;
        end
    end

    // Next State Logic
    always @(*) begin
        case (current_state)
            ST_IDLE: next_state = (start ? ST_CHECK_BITS : ST_IDLE);
            ST_CHECK_BITS: begin
                if (iteration_count == 0) 
                    next_state = ST_COMPLETE;
                else if ({current_multiplier[0], last_bit} == 2'b01) 
                    next_state = ST_ADD;
                else if ({current_multiplier[0], last_bit} == 2'b10) 
                    next_state = ST_SUBTRACT;
                else 
                    next_state = ST_SHIFT;
            end
            ST_ADD: next_state = ST_SHIFT;
            ST_SUBTRACT: next_state = ST_SHIFT;
            ST_SHIFT: next_state = ST_CHECK_BITS;
            ST_COMPLETE: next_state = ST_IDLE;
            default: next_state = ST_IDLE;
        endcase
    end

    // Registers and Operations
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            partial_sum <= 64'sd0;
            current_multiplier <= 32'sd0;
            extended_operand <= 64'sd0;
            last_bit <= 1'b0;
            iteration_count <= 6'd0;
            result <= 64'sd0;   
            done <= 1'b0;       
        end else begin
            case (current_state)
                ST_IDLE: begin
                    if (start) begin
                        partial_sum <= 64'sd0; 
                        current_multiplier <= Q; 
                        extended_operand <= {{32{M[31]}}, M};
                        last_bit <= 1'b0; 
                        iteration_count <= 6'd32; 
                        result <= 64'sd0; 
                        done <= 1'b0;
                    end
                end
                ST_ADD: begin
                    partial_sum <= partial_sum + extended_operand;  
                end
                ST_SUBTRACT: begin
                    partial_sum <= partial_sum - extended_operand;
                end
                ST_SHIFT: begin
                    last_bit <= current_multiplier[0];                  
                    current_multiplier <= {partial_sum[0], current_multiplier[31:1]};  
                    partial_sum <= {partial_sum[63], partial_sum[63:1]}; 
                    iteration_count <= iteration_count - 1;                  
                end
                ST_COMPLETE: begin
                    result <= {partial_sum[31:0], current_multiplier};
                    done <= 1;          
                end
            endcase
        end
    end
endmodule
