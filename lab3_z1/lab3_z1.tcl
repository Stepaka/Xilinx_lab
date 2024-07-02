open_project -reset lab3_z1

add_files ./source/lab3_z1.cpp
add_files ./source/lab3_z1.h
set_top lab3_z1
add_files -tb ./source/lab3_z1_test.cpp

open_solution -reset "sol1"

set_part {xa7a12tcsg325-1Q}
create_clock -period 8 -name clk
set_clock_uncertainty 1

csim_design -clean
csynth_design
cosim_design -trace_level all -tool xsim

open_solution -reset "sol2"

set_part {xa7a12tcsg325-1Q}
create_clock -period 8 -name clk
set_clock_uncertainty 1

set_directive_interface -mode ap_ctrl_chain "lab3_z1"
csynth_design
cosim_design -trace_level all -tool xsim