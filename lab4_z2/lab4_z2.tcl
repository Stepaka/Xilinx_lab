open_project -reset lab4_z2

add_files ./source/lab4_z2.cpp
set_top lab4_z2
add_files -tb ./source/lab4_z2_test.cpp

open_solution -reset "sol1"

set_part {xa7a12tcsg325-1Q}
create_clock -period 6 -name clk
set_clock_uncertainty 1

csim_design -clean
csynth_design

open_solution -reset "sol2"

set_part {xa7a12tcsg325-1Q}
create_clock -period 10 -name clk
set_clock_uncertainty 1

csim_design -clean
csynth_design

open_solution -reset "sol3"

set_part {xa7a12tcsg325-1Q}
create_clock -period 14 -name clk
set_clock_uncertainty 1

csim_design -clean
csynth_design

open_solution -reset "sol4"

set_part {xa7a12tcsg325-1Q}
create_clock -period 14 -name clk
set_clock_uncertainty 1

config_dataflow -default_channel fifo
set_directive_dataflow "lab4_z2"
csynth_design
cosim_design -trace_level all -tool xsim

open_solution -reset "sol5"

set_part {xa7a12tcsg325-1Q}
create_clock -period 14 -name clk
set_clock_uncertainty 1

config_dataflow -default_channel pingpong
set_directive_dataflow "lab4_z2"
csynth_design
cosim_design -trace_level all -tool xsim