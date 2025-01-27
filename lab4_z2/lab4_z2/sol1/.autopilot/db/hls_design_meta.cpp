#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_local_block", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_local_deadlock", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("data_in_address0", 4, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("data_in_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("data_in_q0", 32, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("scale", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("data_out1_address0", 4, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("data_out1_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("data_out1_we0", 1, hls_out, 2, "ap_memory", "mem_we", 1),
	Port_Property("data_out1_d0", 32, hls_out, 2, "ap_memory", "mem_din", 1),
	Port_Property("data_out2_address0", 4, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("data_out2_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("data_out2_we0", 1, hls_out, 3, "ap_memory", "mem_we", 1),
	Port_Property("data_out2_d0", 32, hls_out, 3, "ap_memory", "mem_din", 1),
};
const char* HLS_Design_Meta::dut_name = "lab4_z2";
