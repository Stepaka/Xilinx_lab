open_project -reset kp_502_7

add_files ./source/kp_502_7.cpp
set_top kp_502_7
add_files -tb ./source/kp_502_7_test.cpp

set all_solutions {sol1_2 sol2 sol2_1 sol2_2 sol2_3 sol2_4 sol2_5 sol2_6 sol3_1 sol3_2 sol3_3 sol3_4 sol3_5}
foreach the_solution $all_solutions {
  open_solution -reset $the_solution
  set_part {xc7a200tsbv484-2}
  create_clock -period 6 -name clk
  set_clock_uncertainty 1
  
  if {$the_solution == "sol2_6" || $the_solution == "sol2_7" || $the_solution == "sol2_8"
  || $the_solution == "sol2_9" || $the_solution == "sol2_10"} {
	set_directive_pipeline "kp_502_7/Loop"
  } else {
    set_directive_pipeline -off "kp_502_7/Loop"
  }
  
  if {$the_solution == "sol2"} {
	set_directive_unroll -factor 2 "kp_502_7/Loop"
  }
  
  if {$the_solution == "sol2_1"} {
	set_directive_unroll -factor 2 "kp_502_7/Loop"
	set_directive_interface -mode ap_memory -storage_type ram_2p "kp_502_7" A
	set_directive_interface -mode ap_memory -storage_type ram_2p "kp_502_7" B
	set_directive_interface -mode ap_memory -storage_type ram_2p "kp_502_7" C
	set_directive_interface -mode ap_memory -storage_type ram_2p "kp_502_7" X1
	set_directive_interface -mode ap_memory -storage_type ram_2p "kp_502_7" X2
	set_directive_interface -mode ap_memory -storage_type ram_2p "kp_502_7" D
  }
  
  if {$the_solution == "sol2_2"} {
	set_directive_unroll -factor 2 "kp_502_7/Loop"
	set_directive_interface -mode ap_memory -storage_type ram_1p "kp_502_7" A
	set_directive_interface -mode ap_memory -storage_type ram_1p "kp_502_7" B
	set_directive_interface -mode ap_memory -storage_type ram_1p "kp_502_7" C
	set_directive_interface -mode ap_memory -storage_type ram_1p "kp_502_7" X1
	set_directive_interface -mode ap_memory -storage_type ram_1p "kp_502_7" X2
	set_directive_interface -mode ap_memory -storage_type ram_1p "kp_502_7" D
	set_directive_array_partition -dim 1 -factor 2 -type cyclic  "kp_502_7" A
	set_directive_array_partition -dim 1 -factor 2 -type cyclic  "kp_502_7" B
	set_directive_array_partition -dim 1 -factor 2 -type cyclic  "kp_502_7" C
	set_directive_array_partition -dim 1 -factor 2 -type cyclic  "kp_502_7" X1
	set_directive_array_partition -dim 1 -factor 2 -type cyclic  "kp_502_7" X2
	set_directive_array_partition -dim 1 -factor 2 -type cyclic  "kp_502_7" D
  }
  
  if {$the_solution == "sol2_3"} {
    set_directive_unroll -factor 4 "kp_502_7/Loop"
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_7" A
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_7" B
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_7" C
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_7" X1
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_7" X2
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_7" D
  }
  
  if {$the_solution == "sol2_4"} {
    set_directive_unroll -factor 4 "kp_502_7/Loop"
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_7" A
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_7" B
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_7" C
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_7" X1
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_7" X2
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_7" D
  }
  
  if {$the_solution == "sol2_5" || $the_solution == "sol2_6"} {
	set_directive_unroll -factor 8 "kp_502_7/Loop"
	set_directive_array_partition -dim 1 -factor 8 -type cyclic "kp_502_7" A
	set_directive_array_partition -dim 1 -factor 8 -type cyclic "kp_502_7" B
	set_directive_array_partition -dim 1 -factor 8 -type cyclic "kp_502_7" C
	set_directive_array_partition -dim 1 -factor 8 -type cyclic "kp_502_7" X1
	set_directive_array_partition -dim 1 -factor 8 -type cyclic "kp_502_7" X2
	set_directive_array_partition -dim 1 -factor 8 -type cyclic "kp_502_7" D
  }
  
  if {$the_solution == "sol3_1"} {
	set_directive_unroll -factor 32 "kp_502_7/Loop"
	set_directive_array_partition -dim 1 -factor 32 -type cyclic "kp_502_7" A
	set_directive_array_partition -dim 1 -factor 32 -type cyclic "kp_502_7" B
	set_directive_array_partition -dim 1 -factor 32 -type cyclic "kp_502_7" C
	set_directive_array_partition -dim 1 -factor 32 -type cyclic "kp_502_7" X1
	set_directive_array_partition -dim 1 -factor 32 -type cyclic "kp_502_7" X2
	set_directive_array_partition -dim 1 -factor 32 -type cyclic "kp_502_7" D
  }
  
  if {$the_solution == "sol3_2"} {
	set_directive_unroll -factor 16 "kp_502_7/Loop"
	set_directive_array_partition -dim 1 -factor 16 -type cyclic "kp_502_7" A
	set_directive_array_partition -dim 1 -factor 16 -type cyclic "kp_502_7" B
	set_directive_array_partition -dim 1 -factor 16 -type cyclic "kp_502_7" C
	set_directive_array_partition -dim 1 -factor 16 -type cyclic "kp_502_7" X1
	set_directive_array_partition -dim 1 -factor 16 -type cyclic "kp_502_7" X2
	set_directive_array_partition -dim 1 -factor 16 -type cyclic "kp_502_7" D
  }
  
  if {$the_solution == "sol3_3"} {
	set_directive_unroll -factor 64 "kp_502_7/Loop"
	set_directive_array_partition -dim 1 -factor 64 -type cyclic "kp_502_7" A
	set_directive_array_partition -dim 1 -factor 64 -type cyclic "kp_502_7" B
	set_directive_array_partition -dim 1 -factor 64 -type cyclic "kp_502_7" C
	set_directive_array_partition -dim 1 -factor 64 -type cyclic "kp_502_7" X1
	set_directive_array_partition -dim 1 -factor 64 -type cyclic "kp_502_7" X2
	set_directive_array_partition -dim 1 -factor 64 -type cyclic "kp_502_7" D
  }
  
if {$the_solution == "sol3_4"} {
	set_directive_unroll -factor 32 "kp_502_7/Loop"
	set_directive_array_partition -dim 1 -factor 32 -type cyclic "kp_502_7" A
	set_directive_array_partition -dim 1 -factor 32 -type cyclic "kp_502_7" B
	set_directive_array_partition -dim 1 -factor 32 -type cyclic "kp_502_7" C
	set_directive_array_partition -dim 1 -factor 32 -type cyclic "kp_502_7" X1
	set_directive_array_partition -dim 1 -factor 32 -type cyclic "kp_502_7" X2
	set_directive_array_partition -dim 1 -factor 32 -type cyclic "kp_502_7" D
  }
 if {$the_solution == "sol3_5"} {
	set_directive_unroll -factor 4 "kp_502_7/Loop"
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_7" A
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_7" B
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_7" C
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_7" X1
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_7" X2
	set_directive_array_partition -dim 1 -factor 4 -type cyclic "kp_502_7" D
  }
  
  csim_design -clean
  csynth_design
  cosim_design -trace_level all -tool xsim
}