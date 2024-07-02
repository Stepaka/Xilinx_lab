
set PATH=
call C:/Xilinx/Vivado/2021.2/bin/xelab xil_defaultlib.apatb_kp_502_15_top glbl -Oenable_linking_all_libraries  -prj kp_502_15.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_0_19 -L floating_point_v7_1_13 --lib "ieee_proposed=./ieee_proposed" -s kp_502_15 -debug wave
call C:/Xilinx/Vivado/2021.2/bin/xsim --noieeewarnings kp_502_15 -tclbatch kp_502_15.tcl -view kp_502_15_dataflow_ana.wcfg -protoinst kp_502_15.protoinst

