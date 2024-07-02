
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(axi_slave) -into $coutputgroup]
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_7_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_7 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_6_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_6 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_5_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_5 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_4_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_4 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_3_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_3 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_2_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_2 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_1_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_1 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_0_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_0 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/ap_local_deadlock -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/ap_local_block -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $cinputgroup]
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/x_7 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/x_6 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/x_5 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/x_4 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/x_3 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/x_2 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/x_1 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/x_0 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/c_7 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/c_6 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/c_5 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/c_4 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/c_3 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/c_2 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/c_1 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/c_0 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/b_7 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/b_6 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/b_5 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/b_4 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/b_3 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/b_2 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/b_1 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/b_0 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/a_7 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/a_6 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/a_5 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/a_4 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/a_3 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/a_2 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/a_1 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/a_0 -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/ap_start -into $blocksiggroup
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/ap_done -into $blocksiggroup
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/ap_idle -into $blocksiggroup
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_kp_502_15_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_kp_502_15_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_kp_502_15_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_r_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_r_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_r_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_r_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_r_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_r_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_r_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_r_7 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_a_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_a_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_a_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_a_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_a_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_a_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_a_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_a_7 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_b_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_b_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_b_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_b_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_b_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_b_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_b_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_b_7 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_c_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_c_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_c_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_c_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_c_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_c_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_c_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_c_7 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_x_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_x_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_x_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_x_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_x_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_x_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_x_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_x_7 -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axi_slave) -into $tbcoutputgroup]
add_wave /apatb_kp_502_15_top/r_7_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/r_7 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/r_6_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/r_6 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/r_5_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/r_5 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/r_4_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/r_4 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/r_3_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/r_3 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/r_2_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/r_2 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/r_1_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/r_1 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/r_0_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/r_0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/ap_local_deadlock -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/ap_local_block -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcinputgroup]
add_wave /apatb_kp_502_15_top/x_7 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/x_6 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/x_5 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/x_4 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/x_3 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/x_2 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/x_1 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/x_0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/c_7 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/c_6 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/c_5 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/c_4 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/c_3 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/c_2 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/c_1 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/c_0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/b_7 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/b_6 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/b_5 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/b_4 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/b_3 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/b_2 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/b_1 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/b_0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/a_7 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/a_6 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/a_5 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/a_4 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/a_3 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/a_2 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/a_1 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/a_0 -into $tb_return_group -radix hex
save_wave_config kp_502_15.wcfg
run all
quit

