vsim -suppress 3006 -sdftyp /=//wsl.localhost/Ubuntu-18.04/home/fatma/openlane2/openlane/ALU/CSA/runs/run2/final/sdf/nom_tt_025C_1v80/carry_select_adder__nom_tt_025C_1v80.sdf work.carry_select_adder_route

add wave -position insertpoint  \
sim:/carry_select_adder_route/cin \
sim:/carry_select_adder_route/cout \
sim:/carry_select_adder_route/a \
sim:/carry_select_adder_route/b \
sim:/carry_select_adder_route/sum 

force -freeze sim:/carry_select_adder_route/cin 0 0
force -freeze sim:/carry_select_adder_route/a 32'h7FFFFFFF 0
force -freeze sim:/carry_select_adder_route/b 32'h1 0
run
force -freeze sim:/carry_select_adder_route/a 32'h80000000 0
force -freeze sim:/carry_select_adder_route/b 32'hFFFFFFFF 0
run
force -freeze sim:/carry_select_adder_route/a 32'h00000010 0
force -freeze sim:/carry_select_adder_route/b 32'hFFFFFFF0 0
run
force -freeze sim:/carry_select_adder_route/a 32'h12345678 0
force -freeze sim:/carry_select_adder_route/b 32'h87654321 0
run
force -freeze sim:/carry_select_adder_route/a 32'hFFFFFFFF 0
force -freeze sim:/carry_select_adder_route/b 32'hFFFFFFFF 0
run
force -freeze sim:/carry_select_adder_route/a 32'h5A3F2D1C 0
force -freeze sim:/carry_select_adder_route/b 32'h4C7E9A8B 0
run
force -freeze sim:/carry_select_adder_route/cin 1 0
run
force -freeze sim:/carry_select_adder_route/cin 0 0
force -freeze sim:/carry_select_adder_route/a 32'h0000FFFF 0
force -freeze sim:/carry_select_adder_route/b 32'hFFFF0001 0
run
force -freeze sim:/carry_select_adder_route/a 32'hABCDEF01 0
force -freeze sim:/carry_select_adder_route/b 32'h12345678 0
run