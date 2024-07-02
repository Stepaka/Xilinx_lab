open_project -reset lab6_z1

add_files ./source/lab6_z1.cpp
set_top lab6_z1
add_files -tb ./source/lab6_z1_test.cpp

set all_solutions {sol1 sol2 sol3 sol3_1 sol3_2 sol3_3 sol4 sol4_1}
foreach the_solution $all_solutions {
  open_solution -reset $the_solution
  set_part {xa7a12tcsg325-1Q}
  create_clock -period 10 -name clk
  set_clock_uncertainty 1
  
  if {$the_solution == "sol1"} {
    set_directive_pipeline -off "lab6_z1/Mult"
  }
  
  if {$the_solution == "sol2"} {
    set_directive_pipeline -off "lab6_z1/Mult"
	set_directive_unroll -factor 2 "lab6_z1/Mult"
  }
  
  if {$the_solution == "sol3" || $the_solution == "sol3_1" || $the_solution == "sol3_2" || $the_solution == "sol3_3"} {
    set_directive_pipeline -off "lab6_z1/Mult"
	set_directive_unroll -factor 4 "lab6_z1/Mult"
  }
  
  if {$the_solution == "sol3_1"} {
    set_directive_array_partition -dim 1 -factor 4 -type cyclic "lab6_z1" a
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "lab6_z1" b
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "lab6_z1" c
  }
  
  if {$the_solution == "sol3_2"} {
    set_directive_array_reshape -dim 1 -factor 2 -type cyclic "lab6_z1" a
	set_directive_array_reshape -dim 1 -factor 2 -type cyclic "lab6_z1" b
	set_directive_array_reshape -dim 1 -factor 2 -type cyclic "lab6_z1" c
  }
  
  if {$the_solution == "sol3_3"} {
    set_directive_array_reshape -dim 1 -factor 4 -type cyclic "lab6_z1" a
	set_directive_array_reshape -dim 1 -factor 4 -type cyclic "lab6_z1" b
	set_directive_array_reshape -dim 1 -factor 4 -type cyclic "lab6_z1" c
  }
  
  if {$the_solution == "sol4"} {
    set_directive_unroll -factor 16 "lab6_z1/Mult"
    set_directive_array_reshape -dim 1 -factor 16 -type cyclic "lab6_z1" a
	set_directive_array_reshape -dim 1 -factor 16 -type cyclic "lab6_z1" b
	set_directive_array_reshape -dim 1 -factor 16 -type cyclic "lab6_z1" c
	set_directive_pipeline "lab6_z1/Mult"
  }

  if {$the_solution == "sol4_1"} {
    set_directive_unroll -factor 32 "lab6_z1/Mult"
    set_directive_array_reshape -dim 1 -factor 32 -type cyclic "lab6_z1" a
	set_directive_array_reshape -dim 1 -factor 32 -type cyclic "lab6_z1" b
	set_directive_array_reshape -dim 1 -factor 32 -type cyclic "lab6_z1" c
	set_directive_pipeline "lab6_z1/Mult"
  }
  
  csim_design -clean
  csynth_design
  cosim_design -trace_level all -tool xsim
}