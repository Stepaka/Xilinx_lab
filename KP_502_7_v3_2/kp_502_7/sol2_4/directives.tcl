############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline -off "kp_502_7/Loop"
set_directive_top -name kp_502_7 "kp_502_7"
set_directive_unroll -factor 4 "kp_502_7/Loop"
set_directive_array_reshape -dim 1 -factor 4 -type cyclic "kp_502_7" X1
set_directive_array_reshape -dim 1 -factor 4 -type cyclic "kp_502_7" X2
set_directive_array_reshape -dim 1 -factor 4 -type cyclic "kp_502_7" B
set_directive_array_reshape -dim 1 -factor 4 -type cyclic "kp_502_7" D
set_directive_array_reshape -dim 1 -factor 4 -type cyclic "kp_502_7" A
set_directive_array_reshape -dim 1 -factor 4 -type cyclic "kp_502_7" C