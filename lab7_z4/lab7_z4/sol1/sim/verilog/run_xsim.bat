
set PATH=
call C:/Xilinx/Vivado/2021.2/bin/xelab xil_defaultlib.apatb_lab7_z4_top glbl -Oenable_linking_all_libraries  -prj lab7_z4.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_0_19 -L floating_point_v7_1_13 --lib "ieee_proposed=./ieee_proposed" -s lab7_z4 -debug wave
call C:/Xilinx/Vivado/2021.2/bin/xsim --noieeewarnings lab7_z4 -tclbatch lab7_z4.tcl -view lab7_z4_dataflow_ana.wcfg -protoinst lab7_z4.protoinst

