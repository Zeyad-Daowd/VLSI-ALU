vsim -suppress 3006 -sdftyp /=D:/3rd/vlsi/ALU/booth_multiplier__nom_tt_025C_1v80.sdf work.booth_multiplier_route

add wave -position insertpoint  \
sim:/booth_multiplier_route/clk \
sim:/booth_multiplier_route/done \
sim:/booth_multiplier_route/rst \
sim:/booth_multiplier_route/start \
sim:/booth_multiplier_route/M \
sim:/booth_multiplier_route/Q \
sim:/booth_multiplier_route/result

force -freeze sim:/booth_multiplier_route/clk 1 0, 0 {15000 ps} -r 30000

force -freeze sim:/booth_multiplier_route/rst 1 0
force -freeze sim:/booth_multiplier_route/M 32'd6789 0
force -freeze sim:/booth_multiplier_route/Q 32'd12345 0
run
run

force -freeze sim:/booth_multiplier_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run


force -freeze sim:/booth_multiplier_route/rst 1 0
force -freeze sim:/booth_multiplier_route/M 32'h00003039 0
force -freeze sim:/booth_multiplier_route/Q 32'h00001A85 0
run
run

force -freeze sim:/booth_multiplier_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/booth_multiplier_route/rst 1 0
force -freeze sim:/booth_multiplier_route/M 32'hFFFFCFC7 0
force -freeze sim:/booth_multiplier_route/Q 32'h00001A85 0
run
run

force -freeze sim:/booth_multiplier_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/booth_multiplier_route/rst 1 0
force -freeze sim:/booth_multiplier_route/M 32'hFFFFCFC7 0
force -freeze sim:/booth_multiplier_route/Q 32'hFFFFE57B 0
run
run

force -freeze sim:/booth_multiplier_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/booth_multiplier_route/rst 1 0
force -freeze sim:/booth_multiplier_route/M 32'h00000000 0
force -freeze sim:/booth_multiplier_route/Q 32'h075BCD15 0
run
run

force -freeze sim:/booth_multiplier_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/booth_multiplier_route/rst 1 0
force -freeze sim:/booth_multiplier_route/M 32'h7FFFFFFF 0
force -freeze sim:/booth_multiplier_route/Q 32'h7FFFFFFF 0
run
run

force -freeze sim:/booth_multiplier_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/booth_multiplier_route/rst 1 0
force -freeze sim:/booth_multiplier_route/M 32'h80000000 0
force -freeze sim:/booth_multiplier_route/Q 32'h80000000 0
run
run

force -freeze sim:/booth_multiplier_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/booth_multiplier_route/rst 1 0
force -freeze sim:/booth_multiplier_route/M 32'h7FFFFFFF 0
force -freeze sim:/booth_multiplier_route/Q 32'h80000000 0
run
run

force -freeze sim:/booth_multiplier_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/booth_multiplier_route/rst 1 0
force -freeze sim:/booth_multiplier_route/M 32'd12345678 0
force -freeze sim:/booth_multiplier_route/Q -32'd87654321 0
run
run

force -freeze sim:/booth_multiplier_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/booth_multiplier_route/rst 1 0
force -freeze sim:/booth_multiplier_route/M -32'd12345678 0
force -freeze sim:/booth_multiplier_route/Q 32'd87654321 0
run
run

force -freeze sim:/booth_multiplier_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/booth_multiplier_route/rst 1 0
force -freeze sim:/booth_multiplier_route/M 32'd987654321 0
force -freeze sim:/booth_multiplier_route/Q 32'd123456789 0
run
run

force -freeze sim:/booth_multiplier_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/booth_multiplier_route/rst 1 0
force -freeze sim:/booth_multiplier_route/M 32'd2147483647 0
force -freeze sim:/booth_multiplier_route/Q -32'd1 0
run
run

force -freeze sim:/booth_multiplier_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

force -freeze sim:/booth_multiplier_route/rst 1 0
force -freeze sim:/booth_multiplier_route/M -32'd2147483648 0
force -freeze sim:/booth_multiplier_route/Q 32'd1 0
run
run

force -freeze sim:/booth_multiplier_route/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

