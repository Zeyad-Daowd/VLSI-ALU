vsim -suppress 3006 -sdftyp /=//wsl.localhost/Ubuntu-18.04/home/fatma/openlane2/openlane/ALU/verilog_multiplier/runs/run404/final/sdf/nom_tt_025C_1v80/verilog_multiplier__nom_tt_025C_1v80.sdf work.verilog_multiplier_route

add wave -position insertpoint  \
sim:/verilog_multiplier_route/A \
sim:/verilog_multiplier_route/B \
sim:/verilog_multiplier_route/result 

force -freeze sim:/verilog_multiplier_route/A 32'h00003039 0
force -freeze sim:/verilog_multiplier_route/B 32'h00001A85 0
run

force -freeze sim:/verilog_multiplier_route/A 32'hFFFFCFC7 0
force -freeze sim:/verilog_multiplier_route/B 32'h00001A85 0
run

force -freeze sim:/verilog_multiplier_route/A 32'hFFFFCFC7 0
force -freeze sim:/verilog_multiplier_route/B 32'hFFFFE57B 0
run

force -freeze sim:/verilog_multiplier_route/A 32'h00000000 0
force -freeze sim:/verilog_multiplier_route/B 32'h075BCD15 0
run

force -freeze sim:/verilog_multiplier_route/A 32'h7FFFFFFF 0
force -freeze sim:/verilog_multiplier_route/B 32'h7FFFFFFF 0
run

force -freeze sim:/verilog_multiplier_route/A 32'h80000000 0
force -freeze sim:/verilog_multiplier_route/B 32'h80000000 0
run

force -freeze sim:/verilog_multiplier_route/A 32'h7FFFFFFF 0
force -freeze sim:/verilog_multiplier_route/B 32'h80000000 0
run

force -freeze sim:/verilog_multiplier_route/A 32'd12345678 0
force -freeze sim:/verilog_multiplier_route/B -32'd87654321 0
run

force -freeze sim:/verilog_multiplier_route/A -32'd12345678 0
force -freeze sim:/verilog_multiplier_route/B 32'd87654321 0
run

force -freeze sim:/verilog_multiplier_route/A 32'd987654321 0
force -freeze sim:/verilog_multiplier_route/B 32'd123456789 0
run

force -freeze sim:/verilog_multiplier_route/A 32'd2147483647 0
force -freeze sim:/verilog_multiplier_route/B -32'd1 0
run

force -freeze sim:/verilog_multiplier_route/A -32'd2147483648 0
force -freeze sim:/verilog_multiplier_route/B 32'd1 0
run

