# Commands grabbed from TCL console

# Synthesis
reset_run synth_1
launch_runs synth_1 -jobs 4
wait_on_run synth_1
if {[get_property PROGRESS [get_runs synth_1]] != "100%"} {   
       error "ERROR: synth_1 failed"   
} 

# Implementation
launch_runs impl_1 -jobs 4
wait_on_run impl_1
if {[get_property PROGRESS [get_runs impl_1]] != "100%"} {   
       error "ERROR: impl_1 failed"   
} 


# Generate Bitstream
launch_runs impl_1 -to_step write_bitstream -jobs 4
