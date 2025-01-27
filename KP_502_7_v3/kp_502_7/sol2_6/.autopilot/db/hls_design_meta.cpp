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
	Port_Property("A_0_address0", 3, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("A_0_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("A_0_q0", 32, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("A_1_address0", 3, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("A_1_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("A_1_q0", 32, hls_in, 1, "ap_memory", "mem_dout", 1),
	Port_Property("A_2_address0", 3, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("A_2_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("A_2_q0", 32, hls_in, 2, "ap_memory", "mem_dout", 1),
	Port_Property("A_3_address0", 3, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("A_3_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("A_3_q0", 32, hls_in, 3, "ap_memory", "mem_dout", 1),
	Port_Property("A_4_address0", 3, hls_out, 4, "ap_memory", "mem_address", 1),
	Port_Property("A_4_ce0", 1, hls_out, 4, "ap_memory", "mem_ce", 1),
	Port_Property("A_4_q0", 32, hls_in, 4, "ap_memory", "mem_dout", 1),
	Port_Property("A_5_address0", 3, hls_out, 5, "ap_memory", "mem_address", 1),
	Port_Property("A_5_ce0", 1, hls_out, 5, "ap_memory", "mem_ce", 1),
	Port_Property("A_5_q0", 32, hls_in, 5, "ap_memory", "mem_dout", 1),
	Port_Property("A_6_address0", 3, hls_out, 6, "ap_memory", "mem_address", 1),
	Port_Property("A_6_ce0", 1, hls_out, 6, "ap_memory", "mem_ce", 1),
	Port_Property("A_6_q0", 32, hls_in, 6, "ap_memory", "mem_dout", 1),
	Port_Property("A_7_address0", 3, hls_out, 7, "ap_memory", "mem_address", 1),
	Port_Property("A_7_ce0", 1, hls_out, 7, "ap_memory", "mem_ce", 1),
	Port_Property("A_7_q0", 32, hls_in, 7, "ap_memory", "mem_dout", 1),
	Port_Property("B_0_address0", 3, hls_out, 8, "ap_memory", "mem_address", 1),
	Port_Property("B_0_ce0", 1, hls_out, 8, "ap_memory", "mem_ce", 1),
	Port_Property("B_0_q0", 32, hls_in, 8, "ap_memory", "mem_dout", 1),
	Port_Property("B_1_address0", 3, hls_out, 9, "ap_memory", "mem_address", 1),
	Port_Property("B_1_ce0", 1, hls_out, 9, "ap_memory", "mem_ce", 1),
	Port_Property("B_1_q0", 32, hls_in, 9, "ap_memory", "mem_dout", 1),
	Port_Property("B_2_address0", 3, hls_out, 10, "ap_memory", "mem_address", 1),
	Port_Property("B_2_ce0", 1, hls_out, 10, "ap_memory", "mem_ce", 1),
	Port_Property("B_2_q0", 32, hls_in, 10, "ap_memory", "mem_dout", 1),
	Port_Property("B_3_address0", 3, hls_out, 11, "ap_memory", "mem_address", 1),
	Port_Property("B_3_ce0", 1, hls_out, 11, "ap_memory", "mem_ce", 1),
	Port_Property("B_3_q0", 32, hls_in, 11, "ap_memory", "mem_dout", 1),
	Port_Property("B_4_address0", 3, hls_out, 12, "ap_memory", "mem_address", 1),
	Port_Property("B_4_ce0", 1, hls_out, 12, "ap_memory", "mem_ce", 1),
	Port_Property("B_4_q0", 32, hls_in, 12, "ap_memory", "mem_dout", 1),
	Port_Property("B_5_address0", 3, hls_out, 13, "ap_memory", "mem_address", 1),
	Port_Property("B_5_ce0", 1, hls_out, 13, "ap_memory", "mem_ce", 1),
	Port_Property("B_5_q0", 32, hls_in, 13, "ap_memory", "mem_dout", 1),
	Port_Property("B_6_address0", 3, hls_out, 14, "ap_memory", "mem_address", 1),
	Port_Property("B_6_ce0", 1, hls_out, 14, "ap_memory", "mem_ce", 1),
	Port_Property("B_6_q0", 32, hls_in, 14, "ap_memory", "mem_dout", 1),
	Port_Property("B_7_address0", 3, hls_out, 15, "ap_memory", "mem_address", 1),
	Port_Property("B_7_ce0", 1, hls_out, 15, "ap_memory", "mem_ce", 1),
	Port_Property("B_7_q0", 32, hls_in, 15, "ap_memory", "mem_dout", 1),
	Port_Property("C_0_address0", 3, hls_out, 16, "ap_memory", "mem_address", 1),
	Port_Property("C_0_ce0", 1, hls_out, 16, "ap_memory", "mem_ce", 1),
	Port_Property("C_0_q0", 32, hls_in, 16, "ap_memory", "mem_dout", 1),
	Port_Property("C_1_address0", 3, hls_out, 17, "ap_memory", "mem_address", 1),
	Port_Property("C_1_ce0", 1, hls_out, 17, "ap_memory", "mem_ce", 1),
	Port_Property("C_1_q0", 32, hls_in, 17, "ap_memory", "mem_dout", 1),
	Port_Property("C_2_address0", 3, hls_out, 18, "ap_memory", "mem_address", 1),
	Port_Property("C_2_ce0", 1, hls_out, 18, "ap_memory", "mem_ce", 1),
	Port_Property("C_2_q0", 32, hls_in, 18, "ap_memory", "mem_dout", 1),
	Port_Property("C_3_address0", 3, hls_out, 19, "ap_memory", "mem_address", 1),
	Port_Property("C_3_ce0", 1, hls_out, 19, "ap_memory", "mem_ce", 1),
	Port_Property("C_3_q0", 32, hls_in, 19, "ap_memory", "mem_dout", 1),
	Port_Property("C_4_address0", 3, hls_out, 20, "ap_memory", "mem_address", 1),
	Port_Property("C_4_ce0", 1, hls_out, 20, "ap_memory", "mem_ce", 1),
	Port_Property("C_4_q0", 32, hls_in, 20, "ap_memory", "mem_dout", 1),
	Port_Property("C_5_address0", 3, hls_out, 21, "ap_memory", "mem_address", 1),
	Port_Property("C_5_ce0", 1, hls_out, 21, "ap_memory", "mem_ce", 1),
	Port_Property("C_5_q0", 32, hls_in, 21, "ap_memory", "mem_dout", 1),
	Port_Property("C_6_address0", 3, hls_out, 22, "ap_memory", "mem_address", 1),
	Port_Property("C_6_ce0", 1, hls_out, 22, "ap_memory", "mem_ce", 1),
	Port_Property("C_6_q0", 32, hls_in, 22, "ap_memory", "mem_dout", 1),
	Port_Property("C_7_address0", 3, hls_out, 23, "ap_memory", "mem_address", 1),
	Port_Property("C_7_ce0", 1, hls_out, 23, "ap_memory", "mem_ce", 1),
	Port_Property("C_7_q0", 32, hls_in, 23, "ap_memory", "mem_dout", 1),
	Port_Property("X1_0_address0", 3, hls_out, 24, "ap_memory", "mem_address", 1),
	Port_Property("X1_0_ce0", 1, hls_out, 24, "ap_memory", "mem_ce", 1),
	Port_Property("X1_0_we0", 1, hls_out, 24, "ap_memory", "mem_we", 1),
	Port_Property("X1_0_d0", 32, hls_out, 24, "ap_memory", "mem_din", 1),
	Port_Property("X1_1_address0", 3, hls_out, 25, "ap_memory", "mem_address", 1),
	Port_Property("X1_1_ce0", 1, hls_out, 25, "ap_memory", "mem_ce", 1),
	Port_Property("X1_1_we0", 1, hls_out, 25, "ap_memory", "mem_we", 1),
	Port_Property("X1_1_d0", 32, hls_out, 25, "ap_memory", "mem_din", 1),
	Port_Property("X1_2_address0", 3, hls_out, 26, "ap_memory", "mem_address", 1),
	Port_Property("X1_2_ce0", 1, hls_out, 26, "ap_memory", "mem_ce", 1),
	Port_Property("X1_2_we0", 1, hls_out, 26, "ap_memory", "mem_we", 1),
	Port_Property("X1_2_d0", 32, hls_out, 26, "ap_memory", "mem_din", 1),
	Port_Property("X1_3_address0", 3, hls_out, 27, "ap_memory", "mem_address", 1),
	Port_Property("X1_3_ce0", 1, hls_out, 27, "ap_memory", "mem_ce", 1),
	Port_Property("X1_3_we0", 1, hls_out, 27, "ap_memory", "mem_we", 1),
	Port_Property("X1_3_d0", 32, hls_out, 27, "ap_memory", "mem_din", 1),
	Port_Property("X1_4_address0", 3, hls_out, 28, "ap_memory", "mem_address", 1),
	Port_Property("X1_4_ce0", 1, hls_out, 28, "ap_memory", "mem_ce", 1),
	Port_Property("X1_4_we0", 1, hls_out, 28, "ap_memory", "mem_we", 1),
	Port_Property("X1_4_d0", 32, hls_out, 28, "ap_memory", "mem_din", 1),
	Port_Property("X1_5_address0", 3, hls_out, 29, "ap_memory", "mem_address", 1),
	Port_Property("X1_5_ce0", 1, hls_out, 29, "ap_memory", "mem_ce", 1),
	Port_Property("X1_5_we0", 1, hls_out, 29, "ap_memory", "mem_we", 1),
	Port_Property("X1_5_d0", 32, hls_out, 29, "ap_memory", "mem_din", 1),
	Port_Property("X1_6_address0", 3, hls_out, 30, "ap_memory", "mem_address", 1),
	Port_Property("X1_6_ce0", 1, hls_out, 30, "ap_memory", "mem_ce", 1),
	Port_Property("X1_6_we0", 1, hls_out, 30, "ap_memory", "mem_we", 1),
	Port_Property("X1_6_d0", 32, hls_out, 30, "ap_memory", "mem_din", 1),
	Port_Property("X1_7_address0", 3, hls_out, 31, "ap_memory", "mem_address", 1),
	Port_Property("X1_7_ce0", 1, hls_out, 31, "ap_memory", "mem_ce", 1),
	Port_Property("X1_7_we0", 1, hls_out, 31, "ap_memory", "mem_we", 1),
	Port_Property("X1_7_d0", 32, hls_out, 31, "ap_memory", "mem_din", 1),
	Port_Property("X2_0_address0", 3, hls_out, 32, "ap_memory", "mem_address", 1),
	Port_Property("X2_0_ce0", 1, hls_out, 32, "ap_memory", "mem_ce", 1),
	Port_Property("X2_0_we0", 1, hls_out, 32, "ap_memory", "mem_we", 1),
	Port_Property("X2_0_d0", 32, hls_out, 32, "ap_memory", "mem_din", 1),
	Port_Property("X2_1_address0", 3, hls_out, 33, "ap_memory", "mem_address", 1),
	Port_Property("X2_1_ce0", 1, hls_out, 33, "ap_memory", "mem_ce", 1),
	Port_Property("X2_1_we0", 1, hls_out, 33, "ap_memory", "mem_we", 1),
	Port_Property("X2_1_d0", 32, hls_out, 33, "ap_memory", "mem_din", 1),
	Port_Property("X2_2_address0", 3, hls_out, 34, "ap_memory", "mem_address", 1),
	Port_Property("X2_2_ce0", 1, hls_out, 34, "ap_memory", "mem_ce", 1),
	Port_Property("X2_2_we0", 1, hls_out, 34, "ap_memory", "mem_we", 1),
	Port_Property("X2_2_d0", 32, hls_out, 34, "ap_memory", "mem_din", 1),
	Port_Property("X2_3_address0", 3, hls_out, 35, "ap_memory", "mem_address", 1),
	Port_Property("X2_3_ce0", 1, hls_out, 35, "ap_memory", "mem_ce", 1),
	Port_Property("X2_3_we0", 1, hls_out, 35, "ap_memory", "mem_we", 1),
	Port_Property("X2_3_d0", 32, hls_out, 35, "ap_memory", "mem_din", 1),
	Port_Property("X2_4_address0", 3, hls_out, 36, "ap_memory", "mem_address", 1),
	Port_Property("X2_4_ce0", 1, hls_out, 36, "ap_memory", "mem_ce", 1),
	Port_Property("X2_4_we0", 1, hls_out, 36, "ap_memory", "mem_we", 1),
	Port_Property("X2_4_d0", 32, hls_out, 36, "ap_memory", "mem_din", 1),
	Port_Property("X2_5_address0", 3, hls_out, 37, "ap_memory", "mem_address", 1),
	Port_Property("X2_5_ce0", 1, hls_out, 37, "ap_memory", "mem_ce", 1),
	Port_Property("X2_5_we0", 1, hls_out, 37, "ap_memory", "mem_we", 1),
	Port_Property("X2_5_d0", 32, hls_out, 37, "ap_memory", "mem_din", 1),
	Port_Property("X2_6_address0", 3, hls_out, 38, "ap_memory", "mem_address", 1),
	Port_Property("X2_6_ce0", 1, hls_out, 38, "ap_memory", "mem_ce", 1),
	Port_Property("X2_6_we0", 1, hls_out, 38, "ap_memory", "mem_we", 1),
	Port_Property("X2_6_d0", 32, hls_out, 38, "ap_memory", "mem_din", 1),
	Port_Property("X2_7_address0", 3, hls_out, 39, "ap_memory", "mem_address", 1),
	Port_Property("X2_7_ce0", 1, hls_out, 39, "ap_memory", "mem_ce", 1),
	Port_Property("X2_7_we0", 1, hls_out, 39, "ap_memory", "mem_we", 1),
	Port_Property("X2_7_d0", 32, hls_out, 39, "ap_memory", "mem_din", 1),
	Port_Property("D_0_address0", 3, hls_out, 40, "ap_memory", "mem_address", 1),
	Port_Property("D_0_ce0", 1, hls_out, 40, "ap_memory", "mem_ce", 1),
	Port_Property("D_0_we0", 1, hls_out, 40, "ap_memory", "mem_we", 1),
	Port_Property("D_0_d0", 32, hls_out, 40, "ap_memory", "mem_din", 1),
	Port_Property("D_1_address0", 3, hls_out, 41, "ap_memory", "mem_address", 1),
	Port_Property("D_1_ce0", 1, hls_out, 41, "ap_memory", "mem_ce", 1),
	Port_Property("D_1_we0", 1, hls_out, 41, "ap_memory", "mem_we", 1),
	Port_Property("D_1_d0", 32, hls_out, 41, "ap_memory", "mem_din", 1),
	Port_Property("D_2_address0", 3, hls_out, 42, "ap_memory", "mem_address", 1),
	Port_Property("D_2_ce0", 1, hls_out, 42, "ap_memory", "mem_ce", 1),
	Port_Property("D_2_we0", 1, hls_out, 42, "ap_memory", "mem_we", 1),
	Port_Property("D_2_d0", 32, hls_out, 42, "ap_memory", "mem_din", 1),
	Port_Property("D_3_address0", 3, hls_out, 43, "ap_memory", "mem_address", 1),
	Port_Property("D_3_ce0", 1, hls_out, 43, "ap_memory", "mem_ce", 1),
	Port_Property("D_3_we0", 1, hls_out, 43, "ap_memory", "mem_we", 1),
	Port_Property("D_3_d0", 32, hls_out, 43, "ap_memory", "mem_din", 1),
	Port_Property("D_4_address0", 3, hls_out, 44, "ap_memory", "mem_address", 1),
	Port_Property("D_4_ce0", 1, hls_out, 44, "ap_memory", "mem_ce", 1),
	Port_Property("D_4_we0", 1, hls_out, 44, "ap_memory", "mem_we", 1),
	Port_Property("D_4_d0", 32, hls_out, 44, "ap_memory", "mem_din", 1),
	Port_Property("D_5_address0", 3, hls_out, 45, "ap_memory", "mem_address", 1),
	Port_Property("D_5_ce0", 1, hls_out, 45, "ap_memory", "mem_ce", 1),
	Port_Property("D_5_we0", 1, hls_out, 45, "ap_memory", "mem_we", 1),
	Port_Property("D_5_d0", 32, hls_out, 45, "ap_memory", "mem_din", 1),
	Port_Property("D_6_address0", 3, hls_out, 46, "ap_memory", "mem_address", 1),
	Port_Property("D_6_ce0", 1, hls_out, 46, "ap_memory", "mem_ce", 1),
	Port_Property("D_6_we0", 1, hls_out, 46, "ap_memory", "mem_we", 1),
	Port_Property("D_6_d0", 32, hls_out, 46, "ap_memory", "mem_din", 1),
	Port_Property("D_7_address0", 3, hls_out, 47, "ap_memory", "mem_address", 1),
	Port_Property("D_7_ce0", 1, hls_out, 47, "ap_memory", "mem_ce", 1),
	Port_Property("D_7_we0", 1, hls_out, 47, "ap_memory", "mem_we", 1),
	Port_Property("D_7_d0", 32, hls_out, 47, "ap_memory", "mem_din", 1),
};
const char* HLS_Design_Meta::dut_name = "kp_502_7";
