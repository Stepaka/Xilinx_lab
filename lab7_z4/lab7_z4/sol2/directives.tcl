############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline "lab7_z4/Mult"
set_directive_unroll -factor 4 "lab7_z4/Mult"
set_directive_array_partition -type cyclic -factor 4 -dim 1 "lab7_z4" a
set_directive_array_partition -type cyclic -factor 4 -dim 1 "lab7_z4" b
set_directive_array_partition -type cyclic -factor 4 -dim 1 "lab7_z4" c
set_directive_bind_op -op mul -impl dsp -latency 1 "lab7_z4/Mult" temp_mult
set_directive_top -name lab7_z4 "lab7_z4"
