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
	Port_Property("a_0_address0", 3, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("a_0_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("a_0_we0", 1, hls_out, 0, "ap_memory", "mem_we", 1),
	Port_Property("a_0_d0", 64, hls_out, 0, "ap_memory", "mem_din", 1),
	Port_Property("a_1_address0", 3, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("a_1_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("a_1_we0", 1, hls_out, 1, "ap_memory", "mem_we", 1),
	Port_Property("a_1_d0", 64, hls_out, 1, "ap_memory", "mem_din", 1),
	Port_Property("a_2_address0", 3, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("a_2_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("a_2_we0", 1, hls_out, 2, "ap_memory", "mem_we", 1),
	Port_Property("a_2_d0", 64, hls_out, 2, "ap_memory", "mem_din", 1),
	Port_Property("a_3_address0", 3, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("a_3_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("a_3_we0", 1, hls_out, 3, "ap_memory", "mem_we", 1),
	Port_Property("a_3_d0", 64, hls_out, 3, "ap_memory", "mem_din", 1),
	Port_Property("a_4_address0", 3, hls_out, 4, "ap_memory", "mem_address", 1),
	Port_Property("a_4_ce0", 1, hls_out, 4, "ap_memory", "mem_ce", 1),
	Port_Property("a_4_we0", 1, hls_out, 4, "ap_memory", "mem_we", 1),
	Port_Property("a_4_d0", 64, hls_out, 4, "ap_memory", "mem_din", 1),
	Port_Property("a_5_address0", 3, hls_out, 5, "ap_memory", "mem_address", 1),
	Port_Property("a_5_ce0", 1, hls_out, 5, "ap_memory", "mem_ce", 1),
	Port_Property("a_5_we0", 1, hls_out, 5, "ap_memory", "mem_we", 1),
	Port_Property("a_5_d0", 64, hls_out, 5, "ap_memory", "mem_din", 1),
	Port_Property("a_6_address0", 3, hls_out, 6, "ap_memory", "mem_address", 1),
	Port_Property("a_6_ce0", 1, hls_out, 6, "ap_memory", "mem_ce", 1),
	Port_Property("a_6_we0", 1, hls_out, 6, "ap_memory", "mem_we", 1),
	Port_Property("a_6_d0", 64, hls_out, 6, "ap_memory", "mem_din", 1),
	Port_Property("a_7_address0", 3, hls_out, 7, "ap_memory", "mem_address", 1),
	Port_Property("a_7_ce0", 1, hls_out, 7, "ap_memory", "mem_ce", 1),
	Port_Property("a_7_we0", 1, hls_out, 7, "ap_memory", "mem_we", 1),
	Port_Property("a_7_d0", 64, hls_out, 7, "ap_memory", "mem_din", 1),
	Port_Property("a_8_address0", 3, hls_out, 8, "ap_memory", "mem_address", 1),
	Port_Property("a_8_ce0", 1, hls_out, 8, "ap_memory", "mem_ce", 1),
	Port_Property("a_8_we0", 1, hls_out, 8, "ap_memory", "mem_we", 1),
	Port_Property("a_8_d0", 64, hls_out, 8, "ap_memory", "mem_din", 1),
	Port_Property("a_9_address0", 3, hls_out, 9, "ap_memory", "mem_address", 1),
	Port_Property("a_9_ce0", 1, hls_out, 9, "ap_memory", "mem_ce", 1),
	Port_Property("a_9_we0", 1, hls_out, 9, "ap_memory", "mem_we", 1),
	Port_Property("a_9_d0", 64, hls_out, 9, "ap_memory", "mem_din", 1),
	Port_Property("a_10_address0", 3, hls_out, 10, "ap_memory", "mem_address", 1),
	Port_Property("a_10_ce0", 1, hls_out, 10, "ap_memory", "mem_ce", 1),
	Port_Property("a_10_we0", 1, hls_out, 10, "ap_memory", "mem_we", 1),
	Port_Property("a_10_d0", 64, hls_out, 10, "ap_memory", "mem_din", 1),
	Port_Property("a_11_address0", 3, hls_out, 11, "ap_memory", "mem_address", 1),
	Port_Property("a_11_ce0", 1, hls_out, 11, "ap_memory", "mem_ce", 1),
	Port_Property("a_11_we0", 1, hls_out, 11, "ap_memory", "mem_we", 1),
	Port_Property("a_11_d0", 64, hls_out, 11, "ap_memory", "mem_din", 1),
	Port_Property("a_12_address0", 3, hls_out, 12, "ap_memory", "mem_address", 1),
	Port_Property("a_12_ce0", 1, hls_out, 12, "ap_memory", "mem_ce", 1),
	Port_Property("a_12_we0", 1, hls_out, 12, "ap_memory", "mem_we", 1),
	Port_Property("a_12_d0", 64, hls_out, 12, "ap_memory", "mem_din", 1),
	Port_Property("a_13_address0", 3, hls_out, 13, "ap_memory", "mem_address", 1),
	Port_Property("a_13_ce0", 1, hls_out, 13, "ap_memory", "mem_ce", 1),
	Port_Property("a_13_we0", 1, hls_out, 13, "ap_memory", "mem_we", 1),
	Port_Property("a_13_d0", 64, hls_out, 13, "ap_memory", "mem_din", 1),
	Port_Property("a_14_address0", 3, hls_out, 14, "ap_memory", "mem_address", 1),
	Port_Property("a_14_ce0", 1, hls_out, 14, "ap_memory", "mem_ce", 1),
	Port_Property("a_14_we0", 1, hls_out, 14, "ap_memory", "mem_we", 1),
	Port_Property("a_14_d0", 64, hls_out, 14, "ap_memory", "mem_din", 1),
	Port_Property("a_15_address0", 3, hls_out, 15, "ap_memory", "mem_address", 1),
	Port_Property("a_15_ce0", 1, hls_out, 15, "ap_memory", "mem_ce", 1),
	Port_Property("a_15_we0", 1, hls_out, 15, "ap_memory", "mem_we", 1),
	Port_Property("a_15_d0", 64, hls_out, 15, "ap_memory", "mem_din", 1),
	Port_Property("b_0_address0", 3, hls_out, 16, "ap_memory", "mem_address", 1),
	Port_Property("b_0_ce0", 1, hls_out, 16, "ap_memory", "mem_ce", 1),
	Port_Property("b_0_q0", 64, hls_in, 16, "ap_memory", "mem_dout", 1),
	Port_Property("b_1_address0", 3, hls_out, 17, "ap_memory", "mem_address", 1),
	Port_Property("b_1_ce0", 1, hls_out, 17, "ap_memory", "mem_ce", 1),
	Port_Property("b_1_q0", 64, hls_in, 17, "ap_memory", "mem_dout", 1),
	Port_Property("b_2_address0", 3, hls_out, 18, "ap_memory", "mem_address", 1),
	Port_Property("b_2_ce0", 1, hls_out, 18, "ap_memory", "mem_ce", 1),
	Port_Property("b_2_q0", 64, hls_in, 18, "ap_memory", "mem_dout", 1),
	Port_Property("b_3_address0", 3, hls_out, 19, "ap_memory", "mem_address", 1),
	Port_Property("b_3_ce0", 1, hls_out, 19, "ap_memory", "mem_ce", 1),
	Port_Property("b_3_q0", 64, hls_in, 19, "ap_memory", "mem_dout", 1),
	Port_Property("b_4_address0", 3, hls_out, 20, "ap_memory", "mem_address", 1),
	Port_Property("b_4_ce0", 1, hls_out, 20, "ap_memory", "mem_ce", 1),
	Port_Property("b_4_q0", 64, hls_in, 20, "ap_memory", "mem_dout", 1),
	Port_Property("b_5_address0", 3, hls_out, 21, "ap_memory", "mem_address", 1),
	Port_Property("b_5_ce0", 1, hls_out, 21, "ap_memory", "mem_ce", 1),
	Port_Property("b_5_q0", 64, hls_in, 21, "ap_memory", "mem_dout", 1),
	Port_Property("b_6_address0", 3, hls_out, 22, "ap_memory", "mem_address", 1),
	Port_Property("b_6_ce0", 1, hls_out, 22, "ap_memory", "mem_ce", 1),
	Port_Property("b_6_q0", 64, hls_in, 22, "ap_memory", "mem_dout", 1),
	Port_Property("b_7_address0", 3, hls_out, 23, "ap_memory", "mem_address", 1),
	Port_Property("b_7_ce0", 1, hls_out, 23, "ap_memory", "mem_ce", 1),
	Port_Property("b_7_q0", 64, hls_in, 23, "ap_memory", "mem_dout", 1),
	Port_Property("b_8_address0", 3, hls_out, 24, "ap_memory", "mem_address", 1),
	Port_Property("b_8_ce0", 1, hls_out, 24, "ap_memory", "mem_ce", 1),
	Port_Property("b_8_q0", 64, hls_in, 24, "ap_memory", "mem_dout", 1),
	Port_Property("b_9_address0", 3, hls_out, 25, "ap_memory", "mem_address", 1),
	Port_Property("b_9_ce0", 1, hls_out, 25, "ap_memory", "mem_ce", 1),
	Port_Property("b_9_q0", 64, hls_in, 25, "ap_memory", "mem_dout", 1),
	Port_Property("b_10_address0", 3, hls_out, 26, "ap_memory", "mem_address", 1),
	Port_Property("b_10_ce0", 1, hls_out, 26, "ap_memory", "mem_ce", 1),
	Port_Property("b_10_q0", 64, hls_in, 26, "ap_memory", "mem_dout", 1),
	Port_Property("b_11_address0", 3, hls_out, 27, "ap_memory", "mem_address", 1),
	Port_Property("b_11_ce0", 1, hls_out, 27, "ap_memory", "mem_ce", 1),
	Port_Property("b_11_q0", 64, hls_in, 27, "ap_memory", "mem_dout", 1),
	Port_Property("b_12_address0", 3, hls_out, 28, "ap_memory", "mem_address", 1),
	Port_Property("b_12_ce0", 1, hls_out, 28, "ap_memory", "mem_ce", 1),
	Port_Property("b_12_q0", 64, hls_in, 28, "ap_memory", "mem_dout", 1),
	Port_Property("b_13_address0", 3, hls_out, 29, "ap_memory", "mem_address", 1),
	Port_Property("b_13_ce0", 1, hls_out, 29, "ap_memory", "mem_ce", 1),
	Port_Property("b_13_q0", 64, hls_in, 29, "ap_memory", "mem_dout", 1),
	Port_Property("b_14_address0", 3, hls_out, 30, "ap_memory", "mem_address", 1),
	Port_Property("b_14_ce0", 1, hls_out, 30, "ap_memory", "mem_ce", 1),
	Port_Property("b_14_q0", 64, hls_in, 30, "ap_memory", "mem_dout", 1),
	Port_Property("b_15_address0", 3, hls_out, 31, "ap_memory", "mem_address", 1),
	Port_Property("b_15_ce0", 1, hls_out, 31, "ap_memory", "mem_ce", 1),
	Port_Property("b_15_q0", 64, hls_in, 31, "ap_memory", "mem_dout", 1),
	Port_Property("c_0_address0", 3, hls_out, 32, "ap_memory", "mem_address", 1),
	Port_Property("c_0_ce0", 1, hls_out, 32, "ap_memory", "mem_ce", 1),
	Port_Property("c_0_q0", 64, hls_in, 32, "ap_memory", "mem_dout", 1),
	Port_Property("c_1_address0", 3, hls_out, 33, "ap_memory", "mem_address", 1),
	Port_Property("c_1_ce0", 1, hls_out, 33, "ap_memory", "mem_ce", 1),
	Port_Property("c_1_q0", 64, hls_in, 33, "ap_memory", "mem_dout", 1),
	Port_Property("c_2_address0", 3, hls_out, 34, "ap_memory", "mem_address", 1),
	Port_Property("c_2_ce0", 1, hls_out, 34, "ap_memory", "mem_ce", 1),
	Port_Property("c_2_q0", 64, hls_in, 34, "ap_memory", "mem_dout", 1),
	Port_Property("c_3_address0", 3, hls_out, 35, "ap_memory", "mem_address", 1),
	Port_Property("c_3_ce0", 1, hls_out, 35, "ap_memory", "mem_ce", 1),
	Port_Property("c_3_q0", 64, hls_in, 35, "ap_memory", "mem_dout", 1),
	Port_Property("c_4_address0", 3, hls_out, 36, "ap_memory", "mem_address", 1),
	Port_Property("c_4_ce0", 1, hls_out, 36, "ap_memory", "mem_ce", 1),
	Port_Property("c_4_q0", 64, hls_in, 36, "ap_memory", "mem_dout", 1),
	Port_Property("c_5_address0", 3, hls_out, 37, "ap_memory", "mem_address", 1),
	Port_Property("c_5_ce0", 1, hls_out, 37, "ap_memory", "mem_ce", 1),
	Port_Property("c_5_q0", 64, hls_in, 37, "ap_memory", "mem_dout", 1),
	Port_Property("c_6_address0", 3, hls_out, 38, "ap_memory", "mem_address", 1),
	Port_Property("c_6_ce0", 1, hls_out, 38, "ap_memory", "mem_ce", 1),
	Port_Property("c_6_q0", 64, hls_in, 38, "ap_memory", "mem_dout", 1),
	Port_Property("c_7_address0", 3, hls_out, 39, "ap_memory", "mem_address", 1),
	Port_Property("c_7_ce0", 1, hls_out, 39, "ap_memory", "mem_ce", 1),
	Port_Property("c_7_q0", 64, hls_in, 39, "ap_memory", "mem_dout", 1),
	Port_Property("c_8_address0", 3, hls_out, 40, "ap_memory", "mem_address", 1),
	Port_Property("c_8_ce0", 1, hls_out, 40, "ap_memory", "mem_ce", 1),
	Port_Property("c_8_q0", 64, hls_in, 40, "ap_memory", "mem_dout", 1),
	Port_Property("c_9_address0", 3, hls_out, 41, "ap_memory", "mem_address", 1),
	Port_Property("c_9_ce0", 1, hls_out, 41, "ap_memory", "mem_ce", 1),
	Port_Property("c_9_q0", 64, hls_in, 41, "ap_memory", "mem_dout", 1),
	Port_Property("c_10_address0", 3, hls_out, 42, "ap_memory", "mem_address", 1),
	Port_Property("c_10_ce0", 1, hls_out, 42, "ap_memory", "mem_ce", 1),
	Port_Property("c_10_q0", 64, hls_in, 42, "ap_memory", "mem_dout", 1),
	Port_Property("c_11_address0", 3, hls_out, 43, "ap_memory", "mem_address", 1),
	Port_Property("c_11_ce0", 1, hls_out, 43, "ap_memory", "mem_ce", 1),
	Port_Property("c_11_q0", 64, hls_in, 43, "ap_memory", "mem_dout", 1),
	Port_Property("c_12_address0", 3, hls_out, 44, "ap_memory", "mem_address", 1),
	Port_Property("c_12_ce0", 1, hls_out, 44, "ap_memory", "mem_ce", 1),
	Port_Property("c_12_q0", 64, hls_in, 44, "ap_memory", "mem_dout", 1),
	Port_Property("c_13_address0", 3, hls_out, 45, "ap_memory", "mem_address", 1),
	Port_Property("c_13_ce0", 1, hls_out, 45, "ap_memory", "mem_ce", 1),
	Port_Property("c_13_q0", 64, hls_in, 45, "ap_memory", "mem_dout", 1),
	Port_Property("c_14_address0", 3, hls_out, 46, "ap_memory", "mem_address", 1),
	Port_Property("c_14_ce0", 1, hls_out, 46, "ap_memory", "mem_ce", 1),
	Port_Property("c_14_q0", 64, hls_in, 46, "ap_memory", "mem_dout", 1),
	Port_Property("c_15_address0", 3, hls_out, 47, "ap_memory", "mem_address", 1),
	Port_Property("c_15_ce0", 1, hls_out, 47, "ap_memory", "mem_ce", 1),
	Port_Property("c_15_q0", 64, hls_in, 47, "ap_memory", "mem_dout", 1),
};
const char* HLS_Design_Meta::dut_name = "lab7_z2";