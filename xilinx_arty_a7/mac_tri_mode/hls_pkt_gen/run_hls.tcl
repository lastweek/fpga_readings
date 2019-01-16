# Create a project
open_project	-reset project_pkt_gen

# The source file and test bench
add_files	pkt_gen.cpp
add_files -tb	pkt_gen_test.cpp

# Specify the top-level function for synthesis
set_top		pkt_gen

###########################
# Solution settings

# Create solution1
open_solution -reset solution1

# Specify a Xilinx device and clock period
# - Do not specify a clock uncertainty (margin)
# - Let the  margin to default to 12.5% of clock period
set_part {xc7a100tcsg324-1}
create_clock -period 10
set_clock_uncertainty 1.25

# Simulate the C code 
#csim_design

# Export IP block
#export_design

# Do not perform any other steps
# - The basic project will be opened in the GUI 
exit
