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
	Port_Property("inA_ar_dout", 16, hls_in, 0, "ap_fifo", "fifo_data", 16384),
	Port_Property("inA_ar_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 16384),
	Port_Property("inA_ar_read", 1, hls_out, 0, "ap_fifo", "fifo_update", 16384),
	Port_Property("out_ar_address0", 14, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("out_ar_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("out_ar_we0", 1, hls_out, 1, "ap_memory", "mem_we", 1),
	Port_Property("out_ar_d0", 16, hls_out, 1, "ap_memory", "mem_din", 1),
	Port_Property("out_ar_q0", 16, hls_in, 1, "ap_memory", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "lab3_z2";
