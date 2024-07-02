############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lab4_z2
set_top lab4_z2
add_files ./source/lab4_z2.cpp
add_files -tb source/lab4_z2_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "sol1" -flow_target vivado
set_part {xa7a12t-csg325-1Q}
create_clock -period 6 -name clk
set_clock_uncertainty 1
source "./lab4_z2/sol1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -tool xsim
export_design -format ip_catalog
