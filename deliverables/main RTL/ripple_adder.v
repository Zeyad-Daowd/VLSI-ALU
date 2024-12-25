module ripple_carry (
    input [47:0] a,       // First input to the adder
    input [47:0] b,       // Second input to the adder
    input cin,            // Carry-in
    output [47:0] sum,    // Sum output
    output cout           // Carry-out
);

    wire [47:0] carry;    // Internal carry signals

    // Generate full adder for each bit
    genvar i;
    generate
        for (i = 0; i < 48; i = i + 1) begin : gen_full_adders
            if (i == 0) begin
                // First bit: Use carry-in
                full_adder fa (
                    .a(a[i]),
                    .b(b[i]),
                    .cin(cin),
                    .sum(sum[i]),
                    .cout(carry[i])
                );
            end else begin
                // Subsequent bits: Use previous carry
                full_adder fa (
                    .a(a[i]),
                    .b(b[i]),
                    .cin(carry[i-1]),
                    .sum(sum[i]),
                    .cout(carry[i])
                );
            end
        end
    endgenerate

    // Final carry-out
    assign cout = carry[47];

endmodule

