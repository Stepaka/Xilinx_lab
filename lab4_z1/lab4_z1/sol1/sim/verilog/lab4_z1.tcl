
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_lab4_z1_top/AESL_inst_lab4_z1/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(axi_slave) -into $coutputgroup]
add_wave /apatb_lab4_z1_top/AESL_inst_lab4_z1/res_d0 -into $return_group -radix hex
add_wave /apatb_lab4_z1_top/AESL_inst_lab4_z1/res_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z1_top/AESL_inst_lab4_z1/res_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z1_top/AESL_inst_lab4_z1/res_address0 -into $return_group -radix hex
add_wave /apatb_lab4_z1_top/AESL_inst_lab4_z1/ap_local_deadlock -into $return_group -radix hex
add_wave /apatb_lab4_z1_top/AESL_inst_lab4_z1/ap_local_block -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $cinputgroup]
add_wave /apatb_lab4_z1_top/AESL_inst_lab4_z1/in_b_q0 -into $return_group -radix hex
add_wave /apatb_lab4_z1_top/AESL_inst_lab4_z1/in_b_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z1_top/AESL_inst_lab4_z1/in_b_address0 -into $return_group -radix hex
add_wave /apatb_lab4_z1_top/AESL_inst_lab4_z1/in_a_q0 -into $return_group -radix hex
add_wave /apatb_lab4_z1_top/AESL_inst_lab4_z1/in_a_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_lab4_z1_top/AESL_inst_lab4_z1/in_a_address0 -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_lab4_z1_top/AESL_inst_lab4_z1/ap_start -into $blocksiggroup
add_wave /apatb_lab4_z1_top/AESL_inst_lab4_z1/ap_done -into $blocksiggroup
add_wave /apatb_lab4_z1_top/AESL_inst_lab4_z1/ap_idle -into $blocksiggroup
add_wave /apatb_lab4_z1_top/AESL_inst_lab4_z1/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_lab4_z1_top/AESL_inst_lab4_z1/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_lab4_z1_top/AESL_inst_lab4_z1/ap_clk -into $clockgroup
save_wave_config lab4_z1.wcfg
run all
quit

