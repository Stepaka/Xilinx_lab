############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project adders_io_prj
set_top adders_io
add_files adders_io.c
add_files -tb adders_io_test.c -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 0.5 -name default
source "./adders_io_prj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
