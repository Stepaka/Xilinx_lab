############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline "lab7_z1/Mult"
set_directive_unroll -factor 64 "lab7_z1/Mult"
set_directive_array_partition -type cyclic -factor 64 -dim 1 "lab7_z1" a
set_directive_array_partition -type cyclic -factor 64 -dim 1 "lab7_z1" b
set_directive_array_partition -type cyclic -factor 64 -dim 1 "lab7_z1" c
set_directive_bind_op -op mul -impl dsp -latency 1 "lab7_z1" temp_mult
set_directive_top -name lab7_z1 "lab7_z1"
