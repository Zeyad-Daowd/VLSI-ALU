module full_adder (
    input a,       // First bit input
    input b,       // Second bit input
    input cin,     // Carry-in
    output sum,    // Sum output
    output cout    // Carry-out
);

    assign sum = a ^ b ^ cin;  // Sum calculation
    assign cout = (a & b) | (b & cin) | (a & cin); // Carry-out calculation

endmodule

