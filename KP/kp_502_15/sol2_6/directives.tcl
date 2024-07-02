############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline "kp_502_15/Loop"
set_directive_unroll -factor 8 "kp_502_15/Loop"
set_directive_array_partition -type cyclic -factor 8 -dim 1 "kp_502_15" a
set_directive_array_partition -type cyclic -factor 8 -dim 1 "kp_502_15" b
set_directive_array_partition -type cyclic -factor 8 -dim 1 "kp_502_15" c
set_directive_array_partition -type cyclic -factor 8 -dim 1 "kp_502_15" x
set_directive_array_partition -type cyclic -factor 8 -dim 1 "kp_502_15" r
set_directive_top -name kp_502_15 "kp_502_15"
