module tree_multiplier(
    input signed [31:0] A, 
    input signed [31:0] B, 
    output signed [63:0] z
);
    wire signed [63:0] partial_products [31:0];
    wire signed [63:0] intermediate_sums [30:0];
    wire [63:0] carry_out [30:0];

    genvar i, j;

    generate
    for (i = 0; i < 32; i = i + 1) begin
        if (i == 31) begin
            assign partial_products[i] = B[i] ? ~({ {32{A[31]}}, A } << i) + 1 : 64'd0;
        end else begin
            assign partial_products[i] = B[i] ? ({ {32{A[31]}}, A } << i) : 64'd0;
        end
    end
    endgenerate


    ripple_carry rca_0(
        .a(partial_products[0][31:0]),
        .b(partial_products[1][31:0]),
        .cin(1'b0),
        .sum(intermediate_sums[0][31:0]),
        .cout(carry_out[0][32])
    );
    assign intermediate_sums[0][63:32] = partial_products[0][63:32] + partial_products[1][63:32] + carry_out[0][32];

    generate
        for (j = 1; j < 31; j = j + 1) begin
            ripple_carry rca(
                .a(intermediate_sums[j-1][31:0]),
                .b(partial_products[j+1][31:0]),
                .cin(1'b0),
                .sum(intermediate_sums[j][31:0]),
                .cout(carry_out[j][32])
            );
            assign intermediate_sums[j][63:32] = 
                intermediate_sums[j-1][63:32] + partial_products[j+1][63:32] + carry_out[j][32];
        end
    endgenerate

    assign z = intermediate_sums[30];
endmodule