open_project -reset lab7_z3

add_files ./source/lab7_z3.cpp
set_top lab7_z3
add_files -tb ./source/lab7_z3_test.cpp

set all_solutions {sol1 sol1_1 sol1_2 sol1_3 sol1_4 sol2}
foreach the_solution $all_solutions {
  open_solution -reset $the_solution
  set_part {xc7a100tcsg324-2}
  create_clock -period 10 -name clk
  set_clock_uncertainty 1
  
  if {$the_solution == "sol1" || $the_solution == "sol1_1" || $the_solution == "sol1_2" ||
  $the_solution == "sol1_3" || $the_solution == "sol1_4"} {
    set_directive_pipeline -off "lab7_z3/Mult"
  }
  
  if {$the_solution == "sol1"} {
	set_directive_bind_op -op dmul -impl dsp "lab7_z3/Mult" temp_mult
  }
  
  if {$the_solution == "sol1_1"} {
	set_directive_bind_op -op dmul -impl fabric "lab7_z3/Mult" temp_mult
  }
  
  if {$the_solution == "sol1_2"} {
	set_directive_bind_op -op dmul -impl meddsp "lab7_z3/Mult" temp_mult
  }
  
  if {$the_solution == "sol1_3"} {
	set_directive_bind_op -op dmul -impl fulldsp "lab7_z3/Mult" temp_mult
  }
  
  if {$the_solution == "sol1_4"} {
	set_directive_bind_op -op dmul -impl maxdsp "lab7_z3/Mult" temp_mult
  }
  
  if {$the_solution == "sol2"} {
    set_directive_pipeline "lab7_z3/Mult"
	set_directive_unroll -factor 16 "lab7_z3/Mult"
	set_directive_array_partition -dim 1 -factor 16 -type cyclic "lab7_z3" a
	set_directive_array_partition -dim 1 -factor 16 -type cyclic "lab7_z3" b
	set_directive_array_partition -dim 1 -factor 16 -type cyclic "lab7_z3" c
	set_directive_bind_op -op dmul -impl meddsp "lab7_z3" temp_mult
  }
  
  csim_design -clean
  csynth_design
  cosim_design -trace_level all -tool xsim
}