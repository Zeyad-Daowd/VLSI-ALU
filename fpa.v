module Float_Add(X, Y, sum);

input [31:0] X, Y;         
output [31:0] sum;         


wire X_sign = X[31];
wire Y_sign = Y[31];
wire [7:0] X_exp = X[30:23];
wire [7:0] Y_exp = Y[30:23];
wire [23:0] X_mant = (X_exp == 8'b0) ? {1'b0, X[22:0]} : {1'b1, X[22:0]}; 
wire [23:0] Y_mant = (Y_exp == 8'b0) ? {1'b0, Y[22:0]} : {1'b1, Y[22:0]};

// Special case handling
wire X_is_nan = (X_exp == 8'b11111111) && (X[22:0] != 0);
wire Y_is_nan = (Y_exp == 8'b11111111) && (Y[22:0] != 0);
wire X_is_inf = (X_exp == 8'b11111111) && (X[22:0] == 0);
wire Y_is_inf = (Y_exp == 8'b11111111) && (Y[22:0] == 0);

// Handle NaN cases
wire result_nan = X_is_nan || Y_is_nan || (X_is_inf && Y_is_inf && (X_sign != Y_sign));
wire [31:0] nan_result = {1'b0, 8'b11111111, 23'b1}; // Canonical NaN

// Handle Infinity cases
wire result_inf = X_is_inf || Y_is_inf;
wire result_inf_sign = (X_is_inf) ? X_sign : Y_sign;
wire [31:0] inf_result = {result_inf_sign, 8'b11111111, 23'b0}; // Infinity

// Exponent difference and mantissa alignment
wire [7:0] exp_diff = (X_exp >= Y_exp) ? (X_exp - Y_exp) : (Y_exp - X_exp);
wire [24:0] X_mant_aligned = (X_exp >= Y_exp) ? {1'b0, X_mant} : ({1'b0, X_mant} >> exp_diff);
wire [24:0] Y_mant_aligned = (Y_exp >= X_exp) ? {1'b0, Y_mant} : ({1'b0, Y_mant} >> exp_diff);
wire [7:0] greater_exp = (X_exp >= Y_exp) ? X_exp : Y_exp;

// Perform addition or subtraction of aligned mantissas
wire [24:0] sum_mantissa_temp = (X_sign == Y_sign) 
                                ? (X_mant_aligned + Y_mant_aligned)  // Addition
                                : (X_mant_aligned >= Y_mant_aligned) 
                                  ? (X_mant_aligned - Y_mant_aligned)  // Subtraction
                                  : (Y_mant_aligned - X_mant_aligned);
wire add_carry = sum_mantissa_temp[24]; // Check for carry in addition



// Normalize the mantissa and adjust the exponent
wire [24:0] adjusted_sum_mantissa = add_carry 
                                    ? (sum_mantissa_temp >> 1) 
                                    : (sum_mantissa_temp << (sum_mantissa_temp[23] ? 0 : 1));

wire [7:0] normalized_exp = add_carry 
                            ? (greater_exp + 1) 
                            : (sum_mantissa_temp[23] ? greater_exp : greater_exp - 1);

// Determine the result sign
wire sum_sign = (X_sign & Y_sign) || (X_sign & !Y_sign & (X_mant_aligned >= Y_mant_aligned)) || 
                (Y_sign & !X_sign & (Y_mant_aligned > X_mant_aligned));

// Check for zero result
wire result_zero = (sum_mantissa_temp == 0);
wire [31:0] zero_result = {1'b0, 8'b0, 23'b0}; // Canonical zero

// Assemble the final result in IEEE 754 format
wire [31:0] normal_result = {sum_sign, normalized_exp, adjusted_sum_mantissa[22:0]};

// Output result with priority handling of special cases
assign sum = result_nan   ? nan_result   :
             result_inf   ? inf_result   :
             result_zero  ? zero_result  :
             normal_result;

endmodule
