############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_interface -mode ap_memory -storage_type ram_2p "lab5_z1" d_in
set_directive_array_partition -type block -factor 4 -dim 1 "lab5_z1" d_in
set_directive_unroll -factor 2 "lab5_z1/foo_label0"
set_directive_pipeline "lab5_z1/foo_label0"
set_directive_top -name lab5_z1 "lab5_z1"
