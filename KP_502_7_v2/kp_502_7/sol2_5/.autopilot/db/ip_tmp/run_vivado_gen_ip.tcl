create_project prj -part xc7a200t-sbv484-2 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "G:/Xilinx_lab/KP_502_7_v2/kp_502_7/sol2_5/syn/verilog/kp_502_7_ddiv_64ns_64ns_64_31_no_dsp_1_ip.tcl"
source "G:/Xilinx_lab/KP_502_7_v2/kp_502_7/sol2_5/syn/verilog/kp_502_7_dmul_64ns_64ns_64_5_max_dsp_1_ip.tcl"
source "G:/Xilinx_lab/KP_502_7_v2/kp_502_7/sol2_5/syn/verilog/kp_502_7_dsqrt_64ns_64ns_64_30_no_dsp_1_ip.tcl"
source "G:/Xilinx_lab/KP_502_7_v2/kp_502_7/sol2_5/syn/verilog/kp_502_7_dsub_64ns_64ns_64_5_full_dsp_1_ip.tcl"
