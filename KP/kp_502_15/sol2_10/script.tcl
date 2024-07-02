############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project kp_502_15
set_top kp_502_15
add_files ./source/kp_502_15.cpp
add_files -tb source/kp_502_15_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "sol2_10" -flow_target vivado
set_part {xc7a200t-sbv484-2}
create_clock -period 14 -name clk
set_clock_uncertainty 1
source "./kp_502_15/sol2_10/directives.tcl"
csim_design -clean
csynth_design
cosim_design -trace_level all -tool xsim
export_design -format ip_catalog
