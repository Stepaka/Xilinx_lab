
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(axi_slave) -into $coutputgroup]
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_3_d0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_3_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_3_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_3_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_2_d0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_2_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_2_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_1_d0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_1_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_1_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_0_d0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_0_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_0_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/D_0_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_3_d0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_3_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_3_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_3_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_2_d0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_2_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_2_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_1_d0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_1_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_1_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_0_d0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_0_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_0_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X2_0_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_3_d0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_3_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_3_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_3_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_2_d0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_2_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_2_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_1_d0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_1_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_1_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_0_d0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_0_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_0_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/X1_0_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/ap_local_deadlock -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/ap_local_block -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $cinputgroup]
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/C_3_q0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/C_3_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/C_3_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/C_2_q0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/C_2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/C_2_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/C_1_q0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/C_1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/C_1_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/C_0_q0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/C_0_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/C_0_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/B_3_q0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/B_3_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/B_3_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/B_2_q0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/B_2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/B_2_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/B_1_q0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/B_1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/B_1_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/B_0_q0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/B_0_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/B_0_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/A_3_q0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/A_3_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/A_3_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/A_2_q0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/A_2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/A_2_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/A_1_q0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/A_1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/A_1_address0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/A_0_q0 -into $return_group -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/A_0_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/AESL_inst_kp_502_7/A_0_address0 -into $return_group -radix hex
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
add_wave /apatb_kp_502_7_top/LENGTH_A_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_A_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_A_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_A_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_B_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_B_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_B_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_B_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_C_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_C_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_C_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_C_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_X1_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_X1_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_X1_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_X1_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_X2_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_X2_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_X2_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_X2_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_D_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_D_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_D_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_kp_502_7_top/LENGTH_D_3 -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axi_slave) -into $tbcoutputgroup]
add_wave /apatb_kp_502_7_top/D_3_d0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/D_3_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/D_3_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/D_3_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/D_2_d0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/D_2_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/D_2_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/D_2_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/D_1_d0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/D_1_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/D_1_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/D_1_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/D_0_d0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/D_0_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/D_0_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/D_0_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X2_3_d0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X2_3_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X2_3_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X2_3_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X2_2_d0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X2_2_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X2_2_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X2_2_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X2_1_d0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X2_1_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X2_1_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X2_1_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X2_0_d0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X2_0_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X2_0_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X2_0_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X1_3_d0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X1_3_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X1_3_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X1_3_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X1_2_d0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X1_2_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X1_2_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X1_2_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X1_1_d0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X1_1_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X1_1_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X1_1_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X1_0_d0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/X1_0_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X1_0_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/X1_0_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/ap_local_deadlock -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/ap_local_block -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(memory) -into $tbcinputgroup]
add_wave /apatb_kp_502_7_top/C_3_q0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/C_3_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/C_3_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/C_2_q0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/C_2_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/C_2_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/C_1_q0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/C_1_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/C_1_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/C_0_q0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/C_0_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/C_0_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/B_3_q0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/B_3_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/B_3_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/B_2_q0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/B_2_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/B_2_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/B_1_q0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/B_1_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/B_1_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/B_0_q0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/B_0_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/B_0_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/A_3_q0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/A_3_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/A_3_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/A_2_q0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/A_2_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/A_2_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/A_1_q0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/A_1_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/A_1_address0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/A_0_q0 -into $tb_return_group -radix hex
add_wave /apatb_kp_502_7_top/A_0_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_kp_502_7_top/A_0_address0 -into $tb_return_group -radix hex
save_wave_config kp_502_7.wcfg
run all
quit

