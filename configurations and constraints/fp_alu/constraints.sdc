# Create virtual clock
create_clock -name vclk -period 80

# Set input delays
set_input_delay -clock vclk -max 1 [all_inputs]

# Set output delays
set_output_delay -clock vclk -max 0.5 [all_outputs]

# Set load on all outputs
set_load 10 [all_outputs]

# Set clock uncertainty (skew)
set_clock_uncertainty 0.2 [get_clocks vclk]
