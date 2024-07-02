############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline -off "lab7_z1/Mult"
set_directive_bind_op -op mul -impl dsp -latency 2 "lab7_z1" temp_mult
set_directive_top -name lab7_z1 "lab7_z1"
