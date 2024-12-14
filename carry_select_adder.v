module carry_select_adder (
    input [31:0] a, b,
    input cin,
    output [31:0] sum,
    output cout
);
    //intermediate sum
    wire[3:0] s_10,s_11,s_20,s_21,s_30,s_31,s_40,s_41,s_50,s_51,s_60,s_61,s_70,s_71;

    //intermediate carry out
	wire cout_10,cout_11,cout_20,cout_21,cout_30,cout_31,cout_40,cout_41,cout_50,cout_51,cout_60,cout_61,cout_70,cout_71;

	wire cout_0,cout_1,cout_2,cout_3,cout_4,cout_5,cout_6;

    // Divide the 32-bit addition into 4-bit segments
    carry_select_adder_4bit adder0 (
        .a(a[3:0]),
        .b(b[3:0]),
        .cin(cin),
        .sum(sum[3:0]),
        .cout(cout_0)
    );

    carry_select_block block1 (
        .a(a[7:4]),
        .b(b[7:4]),
        .sum0(s_10),
        .sum1(s_11),
        .cout0(cout_10),
        .cout1(cout_11)
    );

    carry_select_block block2 (
        .a(a[11:8]),
        .b(b[11:8]),
        .sum0(s_20),
        .sum1(s_21),
        .cout0(cout_20),
        .cout1(cout_21)
    );

    carry_select_block block3 (
        .a(a[15:12]),
        .b(b[15:12]),
        .sum0(s_30),
        .sum1(s_31),
        .cout0(cout_30),
        .cout1(cout_31)
    );

    carry_select_block block4 (
        .a(a[19:16]),
        .b(b[19:16]),
        .sum0(s_40),
        .sum1(s_41),
        .cout0(cout_40),
        .cout1(cout_41)
    );

    carry_select_block block5 (
        .a(a[23:20]),
        .b(b[23:20]),
        .sum0(s_50),
        .sum1(s_51),
        .cout0(cout_50),
        .cout1(cout_51)
    );

    carry_select_block block6 (
        .a(a[27:24]),
        .b(b[27:24]),
        .sum0(s_60),
        .sum1(s_61),
        .cout0(cout_60),
        .cout1(cout_61)
    );

    carry_select_block block7 (
        .a(a[31:28]),
        .b(b[31:28]),
        .sum0(s_70),
        .sum1(s_71),
        .cout0(cout_70),
        .cout1(cout_71)
    );

    assign cout_1 = cout_0? cout_11: cout_10;
	assign cout_2 = cout_1? cout_21: cout_20;
	assign cout_3 = cout_2? cout_31: cout_30;
	assign cout_4 = cout_3? cout_41: cout_40;
	assign cout_5 = cout_4? cout_51: cout_50;
	assign cout_6 = cout_5? cout_61: cout_60;
	assign cout   = cout_6? cout_71: cout_70;

	mux2 mux_1(.in1(s_10),.in2(s_11),.sel(cout_0),.out(sum[7:4]));
	mux2 mux_2(.in1(s_20),.in2(s_21),.sel(cout_1),.out(sum[11:8]));
	mux2 mux_3(.in1(s_30),.in2(s_31),.sel(cout_2),.out(sum[15:12]));
	mux2 mux_4(.in1(s_40),.in2(s_41),.sel(cout_3),.out(sum[19:16]));
	mux2 mux_5(.in1(s_50),.in2(s_51),.sel(cout_4),.out(sum[23:20]));
	mux2 mux_6(.in1(s_60),.in2(s_61),.sel(cout_5),.out(sum[27:24]));
	mux2 mux_7(.in1(s_70),.in2(s_71),.sel(cout_6),.out(sum[31:28]));

endmodule

// 4-bit adder
module carry_select_adder_4bit (
    input [3:0] a, b,
    input cin,
    output [3:0] sum,
    output cout
);
    assign {cout, sum} = a + b + cin;
endmodule


module carry_select_block (
    input [3:0] a, b,
    input cin0, cin1,
    output [3:0] sum0, sum1,
    output cout0, cout1
    );
    assign {cout0, sum0} = a + b + 1'b0;
    assign {cout1, sum1} = a + b + 1'b1;

endmodule

module mux2(sel,in1,in2,out);
	parameter N=4;
	input[N-1:0] in1,in2;
	input sel;
	output[N-1:0] out;
	assign out = sel==0? in1:in2;
endmodule