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
	Port_Property("d_in_0_address0", 8, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("d_in_0_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("d_in_0_q0", 16, hls_in, 0, "ap_memory", "in_data", 1),
	Port_Property("d_in_0_address1", 8, hls_out, 0, "ap_memory", "MemPortADDR2", 1),
	Port_Property("d_in_0_ce1", 1, hls_out, 0, "ap_memory", "MemPortCE2", 1),
	Port_Property("d_in_0_q1", 16, hls_in, 0, "ap_memory", "in_data", 1),
	Port_Property("d_in_1_address0", 8, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("d_in_1_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("d_in_1_q0", 16, hls_in, 1, "ap_memory", "in_data", 1),
	Port_Property("d_in_1_address1", 8, hls_out, 1, "ap_memory", "MemPortADDR2", 1),
	Port_Property("d_in_1_ce1", 1, hls_out, 1, "ap_memory", "MemPortCE2", 1),
	Port_Property("d_in_1_q1", 16, hls_in, 1, "ap_memory", "in_data", 1),
	Port_Property("d_out_address0", 7, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("d_out_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("d_out_we0", 1, hls_out, 2, "ap_memory", "mem_we", 1),
	Port_Property("d_out_d0", 16, hls_out, 2, "ap_memory", "mem_din", 1),
};
const char* HLS_Design_Meta::dut_name = "lab5_z1";