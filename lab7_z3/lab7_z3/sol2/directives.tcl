############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline "lab7_z3/Mult"
set_directive_unroll -factor 16 "lab7_z3/Mult"
set_directive_array_partition -type cyclic -factor 16 -dim 1 "lab7_z3" a
set_directive_array_partition -type cyclic -factor 16 -dim 1 "lab7_z3" b
set_directive_array_partition -type cyclic -factor 16 -dim 1 "lab7_z3" c
set_directive_bind_op -op dmul -impl meddsp "lab7_z3" temp_mult
set_directive_top -name lab7_z3 "lab7_z3"
