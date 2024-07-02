
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(axi_slave) -into $coutputgroup]
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_d0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_d0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_d0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/ap_local_deadlock -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/ap_local_block -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $cinputgroup]
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/C_q0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/C_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/C_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/B_q0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/B_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/B_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/A_q0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/A_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/A_address0 -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/ap_start -into $blocksiggroup
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/ap_done -into $blocksiggroup
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/ap_idle -into $blocksiggroup
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_kp_502_7_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_kp_502_7_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_kp_502_7_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_A -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_B -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_C -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_X1 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_X2 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_D -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axi_slave) -into $tbcoutputgroup]
add_wave /apatb_kp_502_7_top/D_d0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/D_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/D_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/D_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X2_d0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X2_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X2_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X2_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X1_d0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X1_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X1_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X1_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/ap_local_deadlock -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/ap_local_block -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(memory) -into $tbcinputgroup]
add_wave /apatb_kp_502_7_top/C_q0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/C_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/C_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/B_q0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/B_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/B_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/A_q0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/A_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/A_address0 -into $tb_return_group -radix hex
save_wave_config kp_502_7.wcfg
run all
quit

