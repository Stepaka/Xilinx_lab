
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(axi_slave) -into $coutputgroup]
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_d1 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_address1 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_d0 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/r_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/ap_local_deadlock -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/ap_local_block -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $cinputgroup]
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/x_q1 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/x_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/x_address1 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/x_q0 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/x_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/x_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/c_q1 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/c_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/c_address1 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/c_q0 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/c_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/c_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/b_q1 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/b_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/b_address1 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/b_q0 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/b_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/b_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/a_q1 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/a_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/a_address1 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/a_q0 -into $return_group -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/a_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/AESL_inst_kp_502_15/a_address0 -into $return_group -radix hex
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
add_wave /apatb_kp_502_15_top/LENGTH_r -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_a -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_b -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_c -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_15_top/LENGTH_x -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axi_slave) -into $tbcoutputgroup]
add_wave /apatb_kp_502_15_top/r_d1 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/r_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/r_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/r_address1 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/r_d0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/r_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/r_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/r_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/ap_local_deadlock -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/ap_local_block -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(memory) -into $tbcinputgroup]
add_wave /apatb_kp_502_15_top/x_q1 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/x_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/x_address1 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/x_q0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/x_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/x_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/c_q1 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/c_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/c_address1 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/c_q0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/c_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/c_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/b_q1 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/b_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/b_address1 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/b_q0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/b_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/b_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/a_q1 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/a_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/a_address1 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/a_q0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_15_top/a_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_15_top/a_address0 -into $tb_return_group -radix hex
save_wave_config kp_502_15.wcfg
run all
quit

