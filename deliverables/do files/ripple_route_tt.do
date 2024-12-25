vsim -suppress 3006 -sdftyp /=//wsl.localhost/Ubuntu-18.04/home/fatma/openlane2/openlane/ALU/ripple/runs/run4/final/sdf/nom_tt_025C_1v80/ripple_carry__nom_tt_025C_1v80.sdf work.ripple_carry_route

add wave -position insertpoint  \
sim:/ripple_carry_route/cin \
sim:/ripple_carry_route/cout \
sim:/ripple_carry_route/a \
sim:/ripple_carry_route/b \
sim:/ripple_carry_route/sum 

force -freeze sim:/ripple_carry_route/cin 0 0
force -freeze sim:/ripple_carry_route/a 32'h7FFFFFFF 0
force -freeze sim:/ripple_carry_route/b 32'h1 0
run
force -freeze sim:/ripple_carry_route/a 32'h80000000 0
force -freeze sim:/ripple_carry_route/b 32'hFFFFFFFF 0
run
force -freeze sim:/ripple_carry_route/a 32'h00000010 0
force -freeze sim:/ripple_carry_route/b 32'hFFFFFFF0 0
run
force -freeze sim:/ripple_carry_route/a 32'h12345678 0
force -freeze sim:/ripple_carry_route/b 32'h87654321 0
run
force -freeze sim:/ripple_carry_route/a 32'hFFFFFFFF 0
force -freeze sim:/ripple_carry_route/b 32'hFFFFFFFF 0
run
force -freeze sim:/ripple_carry_route/a 32'h5A3F2D1C 0
force -freeze sim:/ripple_carry_route/b 32'h4C7E9A8B 0
run
force -freeze sim:/ripple_carry_route/cin 1 0
run
force -freeze sim:/ripple_carry_route/cin 0 0
force -freeze sim:/ripple_carry_route/a 32'h0000FFFF 0
force -freeze sim:/ripple_carry_route/b 32'hFFFF0001 0
run
force -freeze sim:/ripple_carry_route/a 32'hABCDEF01 0
force -freeze sim:/ripple_carry_route/b 32'h12345678 0
run