open_project -reset lab7_z2

add_files ./source/lab7_z2.cpp
set_top lab7_z2
add_files -tb ./source/lab7_z2_test.cpp

set all_solutions {sol1 sol2}
foreach the_solution $all_solutions {
  open_solution -reset $the_solution
  set_part {xc7a100tcsg324-2}
  create_clock -period 10 -name clk
  set_clock_uncertainty 1
  
  if {$the_solution == "sol1"} {
    set_directive_pipeline -off "lab7_z2/Mult"
	set_directive_bind_op -op dmul -impl dsp "lab7_z2" temp_mult
  }
  
  if {$the_solution == "sol2"} {
    set_directive_pipeline "lab7_z2/Mult"
	set_directive_unroll -factor 16 "lab7_z2/Mult"
	set_directive_array_partition -dim 1 -factor 16 -type cyclic "lab7_z2" a
	set_directive_array_partition -dim 1 -factor 16 -type cyclic "lab7_z2" b
	set_directive_array_partition -dim 1 -factor 16 -type cyclic "lab7_z2" c
	set_directive_bind_op -op mul -impl dsp -latency 1 "lab7_z2" temp_mult
  }
  
  csim_design -clean
  csynth_design
  cosim_design -trace_level all -tool xsim
}