############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline "kp_502_7/Loop"
set_directive_top -name kp_502_7 "kp_502_7"
set_directive_unroll -factor 32 "kp_502_7/Loop"
set_directive_array_partition -type cyclic -factor 32 -dim 1 "kp_502_7" X2
set_directive_array_partition -type cyclic -factor 32 -dim 1 "kp_502_7" D
set_directive_array_partition -type cyclic -factor 32 -dim 1 "kp_502_7" A
set_directive_array_partition -type cyclic -factor 32 -dim 1 "kp_502_7" C
set_directive_array_partition -type cyclic -factor 32 -dim 1 "kp_502_7" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "kp_502_7" X1
