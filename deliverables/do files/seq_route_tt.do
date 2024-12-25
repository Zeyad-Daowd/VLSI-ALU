vsim -suppress 3006 -sdftyp /=//wsl.localhost/Ubuntu-18.04/home/fatma/openlane2/openlane/ALU/seq_multiplier/runs/run404/final/sdf/nom_tt_025C_1v80/sequential_multiplier_shift_accumulate__nom_tt_025C_1v80.sdf work.sequential_multiplier_shift_accumulate_route

add wave -position insertpoint  \
sim:/sequential_multiplier_shift_accumulate_route/clk \
sim:/sequential_multiplier_shift_accumulate_route/done \
sim:/sequential_multiplier_shift_accumulate_route/rst \
sim:/sequential_multiplier_shift_accumulate_route/multiplicand \
sim:/sequential_multiplier_shift_accumulate_route/multiplier \
sim:/sequential_multiplier_shift_accumulate_route/product
force -freeze sim:/sequential_multiplier_shift_accumulate_route/clk 1 0, 0 {15000 ps} -r 30000

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 1 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplicand 32'd6789 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplier 32'd12345 0
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run


force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 1 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplicand 32'h00003039 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplier 32'h00001A85 0
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 1 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplicand 32'hFFFFCFC7 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplier 32'h00001A85 0
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 1 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplicand 32'hFFFFCFC7 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplier 32'hFFFFE57B 0
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 1 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplicand 32'h00000000 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplier 32'h075BCD15 0
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 1 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplicand 32'h7FFFFFFF 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplier 32'h7FFFFFFF 0
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 1 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplicand 32'h80000000 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplier 32'h80000000 0
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 1 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplicand 32'h7FFFFFFF 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplier 32'h80000000 0
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 1 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplicand 32'd12345678 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplier -32'd87654321 0
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 1 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplicand -32'd12345678 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplier 32'd87654321 0
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 1 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplicand 32'd987654321 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplier 32'd123456789 0
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 1 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplicand 32'd2147483647 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplier -32'd1 0
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 1 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplicand -32'd2147483648 0
force -freeze sim:/sequential_multiplier_shift_accumulate_route/multiplier 32'd1 0
run
run

force -freeze sim:/sequential_multiplier_shift_accumulate_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

