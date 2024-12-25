module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (cin & (a ^ b));
endmodule
module ripple_carry_8bit(
    input [7:0] a,
    input [7:0] b,
    input cin,
    output [7:0] sum,
    output cout
);
    wire [8:0] carry;
    assign carry[0] = cin;

    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : ripple_adders
            full_adder fa(
                .a(a[i]),
                .b(b[i]),
                .cin(carry[i]),
                .sum(sum[i]),
                .cout(carry[i+1])
            );
        end
    endgenerate

    assign cout = carry[8];
endmodule

module carry_bypass_8bit(
    input [7:0] a,
    input [7:0] b,
    input cin,
    output [7:0] sum,
    output cout
);
    wire [7:0] p; 
    wire bp;      
    wire c0;     

    assign p = a ^ b;
    assign bp = &p;  

    ripple_carry_8bit rca(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(c0)
    );

    assign cout = bp ? cin : c0;
endmodule

module carry_bypass_32bit(
    input [31:0] a,
    input [31:0] b,
    input cin,
    output [31:0] sum,
    output cout
);
    wire [3:0] c; 

    carry_bypass_8bit cba0(
        .a(a[7:0]),
        .b(b[7:0]),
        .cin(cin),
        .sum(sum[7:0]),
        .cout(c[0])
    );

    carry_bypass_8bit cba1(
        .a(a[15:8]),
        .b(b[15:8]),
        .cin(c[0]),
        .sum(sum[15:8]),
        .cout(c[1])
    );

    carry_bypass_8bit cba2(
        .a(a[23:16]),
        .b(b[23:16]),
        .cin(c[1]),
        .sum(sum[23:16]),
        .cout(c[2])
    );

    carry_bypass_8bit cba3(
        .a(a[31:24]),
        .b(b[31:24]),
        .cin(c[2]),
        .sum(sum[31:24]),
        .cout(cout)
    );
endmodule