open_project -reset kp_502_15

add_files ./source/kp_502_15.cpp
set_top kp_502_15
add_files -tb ./source/kp_502_15_test.cpp

set all_solutions {sol1 sol1_1 sol1_2}
set all_period    { {6}      {10}     {14} }

foreach the_solution $all_solutions the_period $all_period {
  open_solution -reset $the_solution

  create_clock -period $the_period -name clk
  set_clock_uncertainty 1
  set_part {xc7a200tsbv484-2}
  
  set_directive_pipeline -off "kp_502_15/Loop"

  csim_design -clean
  csynth_design
  cosim_design -trace_level all -tool xsim
}