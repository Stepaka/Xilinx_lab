############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_unroll -factor 16 "lab6_z1/Mult"
set_directive_array_reshape -type cyclic -factor 16 -dim 1 "lab6_z1" a
set_directive_array_reshape -type cyclic -factor 16 -dim 1 "lab6_z1" b
set_directive_array_reshape -type cyclic -factor 16 -dim 1 "lab6_z1" c
set_directive_pipeline "lab6_z1/Mult"
set_directive_top -name lab6_z1 "lab6_z1"
