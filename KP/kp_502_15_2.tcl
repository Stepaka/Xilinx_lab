open_project -reset kp_502_15

add_files ./source/kp_502_15.cpp
set_top kp_502_15
add_files -tb ./source/kp_502_15_test.cpp

set all_solutions {sol1_2 sol2 sol2_1 sol2_2 sol2_3 sol2_4 sol2_5 sol2_6 sol2_7 sol2_8 sol2_9 sol2_10}
foreach the_solution $all_solutions {
  open_solution -reset $the_solution
  set_part {xc7a200tsbv484-2}
  create_clock -period 14 -name clk
  set_clock_uncertainty 1
  
  if {$the_solution == "sol2_6" || $the_solution == "sol2_7" || $the_solution == "sol2_8"
  || $the_solution == "sol2_9" || $the_solution == "sol2_10"} {
	set_directive_pipeline "kp_502_15/Loop"
  } else {
    set_directive_pipeline -off "kp_502_15/Loop"
  }
  
  if {$the_solution == "sol2"} {
	set_directive_unroll -factor 2 "kp_502_15/Loop"
  }
  
  if {$the_solution == "sol2_1"} {
	set_directive_unroll -factor 2 "kp_502_15/Loop"
	set_directive_interface -mode ap_memory -storage_type ram_2p "kp_502_15" a
	set_directive_interface -mode ap_memory -storage_type ram_2p "kp_502_15" b
	set_directive_interface -mode ap_memory -storage_type ram_2p "kp_502_15" c
	set_directive_interface -mode ap_memory -storage_type ram_2p "kp_502_15" x
  }
  
  if {$the_solution == "sol2_2"} {
	set_directive_unroll -factor 2 "kp_502_15/Loop"
	set_directive_interface -mode ap_memory -storage_type ram_1p "kp_502_15" a
	set_directive_interface -mode ap_memory -storage_type ram_1p "kp_502_15" b
	set_directive_interface -mode ap_memory -storage_type ram_1p "kp_502_15" c
	set_directive_interface -mode ap_memory -storage_type ram_1p "kp_502_15" x
	set_directive_array_partition -dim 1 -factor 2 -type cyclic "kp_502_15" a
	set_directive_array_partition -dim 1 -factor 2 -type cyclic "kp_502_15" b
	set_directive_array_partition -dim 1 -factor 2 -type cyclic "kp_502_15" c
	set_directive_array_partition -dim 1 -factor 2 -type cyclic "kp_502_15" x
	set_directive_array_partition -dim 1 -factor 2 -type cyclic "kp_502_15" r
  }
  
  if {$the_solution == "sol2_3"} {
    set_directive_unroll -factor 4 "kp_502_15/Loop"
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_15" a
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_15" b
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_15" c
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_15" x
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_15" r
  }
  
  if {$the_solution == "sol2_4"} {
    set_directive_unroll -factor 4 "kp_502_15/Loop"
	set_directive_array_reshape -dim 1 -factor 4 -type cyclic "kp_502_15" a
	set_directive_array_reshape -dim 1 -factor 4 -type cyclic "kp_502_15" b
	set_directive_array_reshape -dim 1 -factor 4 -type cyclic "kp_502_15" c
	set_directive_array_reshape -dim 1 -factor 4 -type cyclic "kp_502_15" x
	set_directive_array_reshape -dim 1 -factor 4 -type cyclic "kp_502_15" r
  }
  
  if {$the_solution == "sol2_5" || $the_solution == "sol2_6"} {
	set_directive_unroll -factor 8 "kp_502_15/Loop"
	set_directive_array_partition -dim 1 -factor 8 -type cyclic "kp_502_15" a
	set_directive_array_partition -dim 1 -factor 8 -type cyclic "kp_502_15" b
	set_directive_array_partition -dim 1 -factor 8 -type cyclic "kp_502_15" c
	set_directive_array_partition -dim 1 -factor 8 -type cyclic "kp_502_15" x
	set_directive_array_partition -dim 1 -factor 8 -type cyclic "kp_502_15" r
  }
  
  if {$the_solution == "sol2_7" || $the_solution == "sol2_9"} {
	set_directive_unroll -factor 64 "kp_502_15/Loop"
	set_directive_array_partition -dim 1 -factor 64 -type cyclic "kp_502_15" a
	set_directive_array_partition -dim 1 -factor 64 -type cyclic "kp_502_15" b
	set_directive_array_partition -dim 1 -factor 64 -type cyclic "kp_502_15" c
	set_directive_array_partition -dim 1 -factor 64 -type cyclic "kp_502_15" x
	set_directive_array_partition -dim 1 -factor 64 -type cyclic "kp_502_15" r
  }
  
  if {$the_solution == "sol2_8"} {
	set_directive_unroll -factor 32 "kp_502_15/Loop"
	set_directive_array_partition -dim 1 -factor 32 -type cyclic "kp_502_15" a
	set_directive_array_partition -dim 1 -factor 32 -type cyclic "kp_502_15" b
	set_directive_array_partition -dim 1 -factor 32 -type cyclic "kp_502_15" c
	set_directive_array_partition -dim 1 -factor 32 -type cyclic "kp_502_15" x
	set_directive_array_partition -dim 1 -factor 32 -type cyclic "kp_502_15" r
  }
  
  if {$the_solution == "sol2_10"} {
	set_directive_unroll -factor 16 "kp_502_15/Loop"
	set_directive_array_partition -dim 1 -factor 16 -type cyclic "kp_502_15" a
	set_directive_array_partition -dim 1 -factor 16 -type cyclic "kp_502_15" b
	set_directive_array_partition -dim 1 -factor 16 -type cyclic "kp_502_15" c
	set_directive_array_partition -dim 1 -factor 16 -type cyclic "kp_502_15" x
	set_directive_array_partition -dim 1 -factor 16 -type cyclic "kp_502_15" r
  }
  
  csim_design -clean
  csynth_design
  cosim_design -trace_level all -tool xsim
}