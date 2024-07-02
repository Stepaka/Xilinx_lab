############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lab7_z4
set_top lab7_z4
add_files ./source/lab7_z4.cpp
add_files -tb source/lab7_z4_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "sol1_1" -flow_target vivado
set_part {xc7a100t-csg324-2}
create_clock -period 10 -name clk
set_clock_uncertainty 1
source "./lab7_z4/sol1_1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -trace_level all -tool xsim
export_design -format ip_catalog
