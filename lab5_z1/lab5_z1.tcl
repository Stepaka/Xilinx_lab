open_project -reset lab5_z1

add_files ./source/lab5_z1.cpp
set_top lab5_z1
add_files -tb ./source/lab5_z1_test.cpp

set all_solutions {sol1 sol1_1 sol2 sol2_1 sol3 sol3_1 sol4 sol4_1 sol5 sol5_1 sol6 sol6_1 sol7 sol7_1}
foreach the_solution $all_solutions {
  open_solution -reset $the_solution
  set_part {xa7a12tcsg325-1Q}
  create_clock -period 20 -name clk
  
  if {$the_solution == "sol1" || $the_solution == "sol1_1"} {
    set_directive_interface -mode ap_memory -storage_type ram_1p "lab5_z1" d_in
  }
  
  if {$the_solution == "sol2" || $the_solution == "sol2_1"} {
    set_directive_interface -mode ap_memory -storage_type ram_2p "lab5_z1" d_in
  }
  
  if {$the_solution == "sol3" || $the_solution == "sol3_1"} {
    set_directive_interface -mode ap_memory -storage_type ram_1p "lab5_z1" d_in
	set_directive_array_partition -dim 1 -factor 4 -type block "lab5_z1" d_in
  }
  
  if {$the_solution == "sol4" || $the_solution == "sol4_1"} {
    set_directive_interface -mode ap_memory -storage_type ram_1p "lab5_z1" d_in
	set_directive_array_reshape -dim 1 -factor 4 -type block "lab5_z1" d_in
  }
  
  if {$the_solution == "sol5" || $the_solution == "sol5_1"} {
    set_directive_interface -mode ap_memory -storage_type ram_2p "lab5_z1" d_in
	set_directive_array_partition -dim 1 -factor 2 -type block "lab5_z1" d_in
  }
  
  if {$the_solution == "sol6" || $the_solution == "sol6_1"} {
    set_directive_interface -mode ap_memory -storage_type ram_2p "lab5_z1" d_in
	set_directive_array_reshape -dim 1 -factor 2 -type block "lab5_z1" d_in
  }

  if {$the_solution == "sol7" || $the_solution == "sol7_1"} {
    set_directive_interface -mode ap_memory -storage_type ram_2p "lab5_z1" d_in
	set_directive_array_partition -dim 1 -factor 4 -type block "lab5_z1" d_in
	set_directive_unroll -factor 2 "lab5_z1/foo_label0"
  }
  
  
  if {$the_solution == "sol1" || $the_solution == "sol2" || $the_solution == "sol3" || $the_solution == "sol4" 
  || $the_solution == "sol5" || $the_solution == "sol6" || $the_solution == "sol7"} {
	set_directive_pipeline -off "lab5_z1/foo_label0"
  }
  
  if {$the_solution == "sol1_1" || $the_solution == "sol2_1" || $the_solution == "sol3_1" || $the_solution == "sol4_1" 
  || $the_solution == "sol5_1" || $the_solution == "sol6_1" || $the_solution == "sol7_1"} {
	set_directive_pipeline "lab5_z1/foo_label0"
  }
  
  csim_design -clean
  csynth_design
  cosim_design -trace_level all -tool xsim
}