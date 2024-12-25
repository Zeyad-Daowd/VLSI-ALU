module CarryLookAheadAdder #(parameter N = 8) (
    input [N-1:0] A,   
    input [N-1:0] B,   
    input Cin,       
    output [N-1:0] Sum, 
    output Cout         
);
    wire [N-1:0] G;    
    wire [N-1:0] P;    
    wire [N:0] C;     
    assign C[0] = Cin; 

    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin
            assign G[i] = A[i] & B[i];  
            assign P[i] = A[i] ^ B[i];  
        end
    endgenerate

    generate
        for (i = 1; i <= N; i = i + 1) begin
            assign C[i] = G[i-1] | (P[i-1] & C[i-1]); 
        end
    endgenerate
    generate
        for (i = 0; i < N; i = i + 1) begin
            assign Sum[i] = P[i] ^ C[i]; 
        end
    endgenerate

    assign Cout = C[N]; 
endmodule
// openlane --design-dir /Users/zeyaddaowd/Desktop/VLSI_Adder/ /Users/zeyaddaowd/Desktop/VLSI_Adder/config
