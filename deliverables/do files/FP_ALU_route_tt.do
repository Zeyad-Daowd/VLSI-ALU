vsim -suppress 3006 -sdftyp /=D:/3rd/vlsi/ALU/FP_ALU__nom_tt_025C_1v80.sdf work.FP_ALU_route

add wave -position insertpoint  \
sim:/FP_ALU_route/sel \
sim:/FP_ALU_route/in1 \
sim:/FP_ALU_route/in2 \
sim:/FP_ALU_route/result 

force -freeze sim:/FP_ALU_route/sel 1'b0 0

force -freeze sim:/FP_ALU_route/in1 32'b0_10000000_10011001100110011001100 0
force -freeze sim:/FP_ALU_route/in2 32'b0_10000001_00001100110011001100110 0
run
force -freeze sim:/FP_ALU_route/in1 32'b0_01111110_01010001111010111000010 0
force -freeze sim:/FP_ALU_route/in2 32'b0_01111110_00000101000111101011100 0
run
force -freeze sim:/FP_ALU_route/in1 32'b1_01111110_00000000000000000000000 0
force -freeze sim:/FP_ALU_route/in2 32'b1_10000001_10011001100110011001100 0
run
force -freeze sim:/FP_ALU_route/in1 32'b1_01111110_00000000000000000000000 0
force -freeze sim:/FP_ALU_route/in2 32'b0_10000001_10011001100110011001100 0
run
force -freeze sim:/FP_ALU_route/in1 32'h4034b4b5 0
force -freeze sim:/FP_ALU_route/in2 32'hbf70f0f1 0
run
force -freeze sim:/FP_ALU_route/in1 32'h3F800000 0
force -freeze sim:/FP_ALU_route/in2 32'hBF800000 0
run
force -freeze sim:/FP_ALU_route/in1 32'h41200000 0
force -freeze sim:/FP_ALU_route/in2 32'hC1200000 0
run
force -freeze sim:/FP_ALU_route/in1 32'h3FC00000 0
force -freeze sim:/FP_ALU_route/in2 32'h3FC00000 0
run

force -freeze sim:/FP_ALU_route/sel 1'b1 0

force -freeze sim:/FP_ALU_route/in1  32'h00000000 0
force -freeze sim:/FP_ALU_route/in2  32'h00000000 0
run
force -freeze sim:/FP_ALU_route/in1 32'h00000000 0
force -freeze sim:/FP_ALU_route/in2 32'h3F800000 0
run
force -freeze sim:/FP_ALU_route/in1 32'h00000000 0
force -freeze sim:/FP_ALU_route/in2 32'hBF800000 0
run
force -freeze sim:/FP_ALU_route/in1 32'h3F800000 0
force -freeze sim:/FP_ALU_route/in2 32'h40000000 0
run
force -freeze sim:/FP_ALU_route/in1 32'hBF800000 0
force -freeze sim:/FP_ALU_route/in2 32'hBF800000 0
run
force -freeze sim:/FP_ALU_route/in1 32'h3F800000 0
force -freeze sim:/FP_ALU_route/in2 32'hBF800000 0
run
force -freeze sim:/FP_ALU_route/in1 32'h7F7FFFFF 0
force -freeze sim:/FP_ALU_route/in2 32'h40000000 0
run
force -freeze sim:/FP_ALU_route/in1 32'h00800000 0
force -freeze sim:/FP_ALU_route/in2 32'h00800000 0
run
force -freeze sim:/FP_ALU_route/in1 32'h7F800000 0
force -freeze sim:/FP_ALU_route/in2 32'h00000001 0
run
force -freeze sim:/FP_ALU_route/in1 32'h41200000 0
force -freeze sim:/FP_ALU_route/in2 32'hC1A00000 0
run
force -freeze sim:/FP_ALU_route/in1 32'h7F800000 0
force -freeze sim:/FP_ALU_route/in2 32'h3F800000 0
run
force -freeze sim:/FP_ALU_route/in1 32'h7F800000 0
force -freeze sim:/FP_ALU_route/in2 32'h7F800000 0
run
force -freeze sim:/FP_ALU_route/in1 32'h7F800000 0
force -freeze sim:/FP_ALU_route/in2 32'h7FC00000 0
run
force -freeze sim:/FP_ALU_route/in1 32'h7FC00000 0
force -freeze sim:/FP_ALU_route/in2 32'h3F800000 0
run