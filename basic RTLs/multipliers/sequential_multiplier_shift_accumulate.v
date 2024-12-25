module sequential_multiplier_shift_accumulate #(parameter WIDTH = 32) (
    input [WIDTH-1:0] multiplicand,   
    input [WIDTH-1:0] multiplier,     
    input clk,                      
    input rst,                      
    output reg [2*WIDTH-1:0] product, 
    output reg done             );
    reg [2*WIDTH-1:0] A;    
    reg [WIDTH-1:0] Q;  
    reg [WIDTH-1:0] M;     
    reg [WIDTH-1:0] abs_multiplicand; 
    reg [WIDTH-1:0] abs_multiplier; 
    reg [5:0] count;       
    reg sign;          

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            A <= 0;             
            Q <= 0;              
            M <= 0;              
            abs_multiplicand <= multiplicand[WIDTH-1] ? -multiplicand : multiplicand;
            abs_multiplier <= multiplier[WIDTH-1] ? -multiplier : multiplier;
            sign <= multiplicand[WIDTH-1] ^ multiplier[WIDTH-1]; 
            count <= 0;         
            product <= 0;        
            done <= 0;          
        end else if (count < WIDTH) begin
            if (count == 0) begin
                M = abs_multiplicand;
                Q = abs_multiplier;
            end
            
            if (Q[0] == 1) begin
                A = A + M; 
            end

            {A, Q} = {A, Q} >> 1; 
            count = count + 1;
        end else begin
            product <= sign ? -{A[31:0], Q} : {A[31:0], Q};
            done <= 1;  
        end
    end
endmodule
