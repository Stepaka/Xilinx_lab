############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lab3_z1
set_top lab3_z1
add_files ./source/lab3_z1.h
add_files ./source/lab3_z1.cpp
add_files -tb source/lab3_z1_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "sol2" -flow_target vivado
set_part {xa7a12t-csg325-1Q}
create_clock -period 8 -name clk
set_clock_uncertainty 1
source "./lab3_z1/sol2/directives.tcl"
csim_design -clean
csynth_design
cosim_design -trace_level all -tool xsim
export_design -format ip_catalog