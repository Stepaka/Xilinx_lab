
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(axi_slave) -into $coutputgroup]
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out2_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out2_q1 -into $return_group -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out2_d1 -into $return_group -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out2_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out2_address1 -into $return_group -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out2_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out2_q0 -into $return_group -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out2_d0 -into $return_group -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out2_address0 -into $return_group -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out1_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out1_q1 -into $return_group -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out1_d1 -into $return_group -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out1_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out1_address1 -into $return_group -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out1_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out1_q0 -into $return_group -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out1_d0 -into $return_group -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_out1_address0 -into $return_group -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/ap_local_deadlock -into $return_group -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/ap_local_block -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $cinputgroup]
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/scale -into $return_group -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_in_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_in_q1 -into $return_group -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_in_d1 -into $return_group -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_in_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_in_address1 -into $return_group -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_in_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_in_q0 -into $return_group -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_in_d0 -into $return_group -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_in_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/data_in_address0 -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/ap_start -into $blocksiggroup
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/ap_done -into $blocksiggroup
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/ap_ready -into $blocksiggroup
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/ap_idle -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_lab4_z2_top/AESL_inst_lab4_z2/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_lab4_z2_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_lab4_z2_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_lab4_z2_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_lab4_z2_top/LENGTH_data_in -into $tb_portdepth_group -radix hex
add_wave /apatb_lab4_z2_top/LENGTH_scale -into $tb_portdepth_group -radix hex
add_wave /apatb_lab4_z2_top/LENGTH_data_out1 -into $tb_portdepth_group -radix hex
add_wave /apatb_lab4_z2_top/LENGTH_data_out2 -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axi_slave) -into $tbcoutputgroup]
add_wave /apatb_lab4_z2_top/data_out2_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/data_out2_q1 -into $tb_return_group -radix hex
add_wave /apatb_lab4_z2_top/data_out2_d1 -into $tb_return_group -radix hex
add_wave /apatb_lab4_z2_top/data_out2_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/data_out2_address1 -into $tb_return_group -radix hex
add_wave /apatb_lab4_z2_top/data_out2_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/data_out2_q0 -into $tb_return_group -radix hex
add_wave /apatb_lab4_z2_top/data_out2_d0 -into $tb_return_group -radix hex
add_wave /apatb_lab4_z2_top/data_out2_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/data_out2_address0 -into $tb_return_group -radix hex
add_wave /apatb_lab4_z2_top/data_out1_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/data_out1_q1 -into $tb_return_group -radix hex
add_wave /apatb_lab4_z2_top/data_out1_d1 -into $tb_return_group -radix hex
add_wave /apatb_lab4_z2_top/data_out1_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/data_out1_address1 -into $tb_return_group -radix hex
add_wave /apatb_lab4_z2_top/data_out1_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/data_out1_q0 -into $tb_return_group -radix hex
add_wave /apatb_lab4_z2_top/data_out1_d0 -into $tb_return_group -radix hex
add_wave /apatb_lab4_z2_top/data_out1_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/data_out1_address0 -into $tb_return_group -radix hex
add_wave /apatb_lab4_z2_top/ap_local_deadlock -into $tb_return_group -radix hex
add_wave /apatb_lab4_z2_top/ap_local_block -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(memory) -into $tbcinputgroup]
add_wave /apatb_lab4_z2_top/scale -into $tb_return_group -radix hex
add_wave /apatb_lab4_z2_top/data_in_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/data_in_q1 -into $tb_return_group -radix hex
add_wave /apatb_lab4_z2_top/data_in_d1 -into $tb_return_group -radix hex
add_wave /apatb_lab4_z2_top/data_in_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/data_in_address1 -into $tb_return_group -radix hex
add_wave /apatb_lab4_z2_top/data_in_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/data_in_q0 -into $tb_return_group -radix hex
add_wave /apatb_lab4_z2_top/data_in_d0 -into $tb_return_group -radix hex
add_wave /apatb_lab4_z2_top/data_in_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z2_top/data_in_address0 -into $tb_return_group -radix hex
save_wave_config lab4_z2.wcfg
run all
quit

