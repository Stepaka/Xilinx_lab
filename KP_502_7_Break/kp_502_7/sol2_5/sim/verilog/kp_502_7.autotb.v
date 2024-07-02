// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      kp_502_7
`define AUTOTB_DUT_INST AESL_inst_kp_502_7
`define AUTOTB_TOP      apatb_kp_502_7_top
`define AUTOTB_LAT_RESULT_FILE "kp_502_7.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "kp_502_7.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_kp_502_7_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_A_0 1
`define AESL_DEPTH_A_1 1
`define AESL_DEPTH_A_2 1
`define AESL_DEPTH_A_3 1
`define AESL_DEPTH_A_4 1
`define AESL_DEPTH_A_5 1
`define AESL_DEPTH_A_6 1
`define AESL_DEPTH_A_7 1
`define AESL_DEPTH_B_0 1
`define AESL_DEPTH_B_1 1
`define AESL_DEPTH_B_2 1
`define AESL_DEPTH_B_3 1
`define AESL_DEPTH_B_4 1
`define AESL_DEPTH_B_5 1
`define AESL_DEPTH_B_6 1
`define AESL_DEPTH_B_7 1
`define AESL_DEPTH_C_0 1
`define AESL_DEPTH_C_1 1
`define AESL_DEPTH_C_2 1
`define AESL_DEPTH_C_3 1
`define AESL_DEPTH_C_4 1
`define AESL_DEPTH_C_5 1
`define AESL_DEPTH_C_6 1
`define AESL_DEPTH_C_7 1
`define AESL_DEPTH_X1_0 1
`define AESL_DEPTH_X1_1 1
`define AESL_DEPTH_X1_2 1
`define AESL_DEPTH_X1_3 1
`define AESL_DEPTH_X1_4 1
`define AESL_DEPTH_X1_5 1
`define AESL_DEPTH_X1_6 1
`define AESL_DEPTH_X1_7 1
`define AESL_DEPTH_X2_0 1
`define AESL_DEPTH_X2_1 1
`define AESL_DEPTH_X2_2 1
`define AESL_DEPTH_X2_3 1
`define AESL_DEPTH_X2_4 1
`define AESL_DEPTH_X2_5 1
`define AESL_DEPTH_X2_6 1
`define AESL_DEPTH_X2_7 1
`define AESL_DEPTH_D_0 1
`define AESL_DEPTH_D_1 1
`define AESL_DEPTH_D_2 1
`define AESL_DEPTH_D_3 1
`define AESL_DEPTH_D_4 1
`define AESL_DEPTH_D_5 1
`define AESL_DEPTH_D_6 1
`define AESL_DEPTH_D_7 1
`define AUTOTB_TVIN_A_0  "../tv/cdatafile/c.kp_502_7.autotvin_A_0.dat"
`define AUTOTB_TVIN_A_1  "../tv/cdatafile/c.kp_502_7.autotvin_A_1.dat"
`define AUTOTB_TVIN_A_2  "../tv/cdatafile/c.kp_502_7.autotvin_A_2.dat"
`define AUTOTB_TVIN_A_3  "../tv/cdatafile/c.kp_502_7.autotvin_A_3.dat"
`define AUTOTB_TVIN_A_4  "../tv/cdatafile/c.kp_502_7.autotvin_A_4.dat"
`define AUTOTB_TVIN_A_5  "../tv/cdatafile/c.kp_502_7.autotvin_A_5.dat"
`define AUTOTB_TVIN_A_6  "../tv/cdatafile/c.kp_502_7.autotvin_A_6.dat"
`define AUTOTB_TVIN_A_7  "../tv/cdatafile/c.kp_502_7.autotvin_A_7.dat"
`define AUTOTB_TVIN_B_0  "../tv/cdatafile/c.kp_502_7.autotvin_B_0.dat"
`define AUTOTB_TVIN_B_1  "../tv/cdatafile/c.kp_502_7.autotvin_B_1.dat"
`define AUTOTB_TVIN_B_2  "../tv/cdatafile/c.kp_502_7.autotvin_B_2.dat"
`define AUTOTB_TVIN_B_3  "../tv/cdatafile/c.kp_502_7.autotvin_B_3.dat"
`define AUTOTB_TVIN_B_4  "../tv/cdatafile/c.kp_502_7.autotvin_B_4.dat"
`define AUTOTB_TVIN_B_5  "../tv/cdatafile/c.kp_502_7.autotvin_B_5.dat"
`define AUTOTB_TVIN_B_6  "../tv/cdatafile/c.kp_502_7.autotvin_B_6.dat"
`define AUTOTB_TVIN_B_7  "../tv/cdatafile/c.kp_502_7.autotvin_B_7.dat"
`define AUTOTB_TVIN_C_0  "../tv/cdatafile/c.kp_502_7.autotvin_C_0.dat"
`define AUTOTB_TVIN_C_1  "../tv/cdatafile/c.kp_502_7.autotvin_C_1.dat"
`define AUTOTB_TVIN_C_2  "../tv/cdatafile/c.kp_502_7.autotvin_C_2.dat"
`define AUTOTB_TVIN_C_3  "../tv/cdatafile/c.kp_502_7.autotvin_C_3.dat"
`define AUTOTB_TVIN_C_4  "../tv/cdatafile/c.kp_502_7.autotvin_C_4.dat"
`define AUTOTB_TVIN_C_5  "../tv/cdatafile/c.kp_502_7.autotvin_C_5.dat"
`define AUTOTB_TVIN_C_6  "../tv/cdatafile/c.kp_502_7.autotvin_C_6.dat"
`define AUTOTB_TVIN_C_7  "../tv/cdatafile/c.kp_502_7.autotvin_C_7.dat"
`define AUTOTB_TVIN_A_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_A_0.dat"
`define AUTOTB_TVIN_A_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_A_1.dat"
`define AUTOTB_TVIN_A_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_A_2.dat"
`define AUTOTB_TVIN_A_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_A_3.dat"
`define AUTOTB_TVIN_A_4_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_A_4.dat"
`define AUTOTB_TVIN_A_5_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_A_5.dat"
`define AUTOTB_TVIN_A_6_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_A_6.dat"
`define AUTOTB_TVIN_A_7_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_A_7.dat"
`define AUTOTB_TVIN_B_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_B_0.dat"
`define AUTOTB_TVIN_B_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_B_1.dat"
`define AUTOTB_TVIN_B_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_B_2.dat"
`define AUTOTB_TVIN_B_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_B_3.dat"
`define AUTOTB_TVIN_B_4_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_B_4.dat"
`define AUTOTB_TVIN_B_5_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_B_5.dat"
`define AUTOTB_TVIN_B_6_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_B_6.dat"
`define AUTOTB_TVIN_B_7_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_B_7.dat"
`define AUTOTB_TVIN_C_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_C_0.dat"
`define AUTOTB_TVIN_C_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_C_1.dat"
`define AUTOTB_TVIN_C_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_C_2.dat"
`define AUTOTB_TVIN_C_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_C_3.dat"
`define AUTOTB_TVIN_C_4_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_C_4.dat"
`define AUTOTB_TVIN_C_5_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_C_5.dat"
`define AUTOTB_TVIN_C_6_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_C_6.dat"
`define AUTOTB_TVIN_C_7_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_C_7.dat"
`define AUTOTB_TVOUT_X1_0  "../tv/cdatafile/c.kp_502_7.autotvout_X1_0.dat"
`define AUTOTB_TVOUT_X1_1  "../tv/cdatafile/c.kp_502_7.autotvout_X1_1.dat"
`define AUTOTB_TVOUT_X1_2  "../tv/cdatafile/c.kp_502_7.autotvout_X1_2.dat"
`define AUTOTB_TVOUT_X1_3  "../tv/cdatafile/c.kp_502_7.autotvout_X1_3.dat"
`define AUTOTB_TVOUT_X1_4  "../tv/cdatafile/c.kp_502_7.autotvout_X1_4.dat"
`define AUTOTB_TVOUT_X1_5  "../tv/cdatafile/c.kp_502_7.autotvout_X1_5.dat"
`define AUTOTB_TVOUT_X1_6  "../tv/cdatafile/c.kp_502_7.autotvout_X1_6.dat"
`define AUTOTB_TVOUT_X1_7  "../tv/cdatafile/c.kp_502_7.autotvout_X1_7.dat"
`define AUTOTB_TVOUT_X2_0  "../tv/cdatafile/c.kp_502_7.autotvout_X2_0.dat"
`define AUTOTB_TVOUT_X2_1  "../tv/cdatafile/c.kp_502_7.autotvout_X2_1.dat"
`define AUTOTB_TVOUT_X2_2  "../tv/cdatafile/c.kp_502_7.autotvout_X2_2.dat"
`define AUTOTB_TVOUT_X2_3  "../tv/cdatafile/c.kp_502_7.autotvout_X2_3.dat"
`define AUTOTB_TVOUT_X2_4  "../tv/cdatafile/c.kp_502_7.autotvout_X2_4.dat"
`define AUTOTB_TVOUT_X2_5  "../tv/cdatafile/c.kp_502_7.autotvout_X2_5.dat"
`define AUTOTB_TVOUT_X2_6  "../tv/cdatafile/c.kp_502_7.autotvout_X2_6.dat"
`define AUTOTB_TVOUT_X2_7  "../tv/cdatafile/c.kp_502_7.autotvout_X2_7.dat"
`define AUTOTB_TVOUT_D_0  "../tv/cdatafile/c.kp_502_7.autotvout_D_0.dat"
`define AUTOTB_TVOUT_D_1  "../tv/cdatafile/c.kp_502_7.autotvout_D_1.dat"
`define AUTOTB_TVOUT_D_2  "../tv/cdatafile/c.kp_502_7.autotvout_D_2.dat"
`define AUTOTB_TVOUT_D_3  "../tv/cdatafile/c.kp_502_7.autotvout_D_3.dat"
`define AUTOTB_TVOUT_D_4  "../tv/cdatafile/c.kp_502_7.autotvout_D_4.dat"
`define AUTOTB_TVOUT_D_5  "../tv/cdatafile/c.kp_502_7.autotvout_D_5.dat"
`define AUTOTB_TVOUT_D_6  "../tv/cdatafile/c.kp_502_7.autotvout_D_6.dat"
`define AUTOTB_TVOUT_D_7  "../tv/cdatafile/c.kp_502_7.autotvout_D_7.dat"
`define AUTOTB_TVOUT_X1_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_0.dat"
`define AUTOTB_TVOUT_X1_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_1.dat"
`define AUTOTB_TVOUT_X1_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_2.dat"
`define AUTOTB_TVOUT_X1_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_3.dat"
`define AUTOTB_TVOUT_X1_4_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_4.dat"
`define AUTOTB_TVOUT_X1_5_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_5.dat"
`define AUTOTB_TVOUT_X1_6_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_6.dat"
`define AUTOTB_TVOUT_X1_7_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_7.dat"
`define AUTOTB_TVOUT_X2_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_0.dat"
`define AUTOTB_TVOUT_X2_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_1.dat"
`define AUTOTB_TVOUT_X2_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_2.dat"
`define AUTOTB_TVOUT_X2_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_3.dat"
`define AUTOTB_TVOUT_X2_4_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_4.dat"
`define AUTOTB_TVOUT_X2_5_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_5.dat"
`define AUTOTB_TVOUT_X2_6_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_6.dat"
`define AUTOTB_TVOUT_X2_7_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_7.dat"
`define AUTOTB_TVOUT_D_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_0.dat"
`define AUTOTB_TVOUT_D_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_1.dat"
`define AUTOTB_TVOUT_D_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_2.dat"
`define AUTOTB_TVOUT_D_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_3.dat"
`define AUTOTB_TVOUT_D_4_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_4.dat"
`define AUTOTB_TVOUT_D_5_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_5.dat"
`define AUTOTB_TVOUT_D_6_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_6.dat"
`define AUTOTB_TVOUT_D_7_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_7.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 3;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 584;
parameter LENGTH_A_0 = 1;
parameter LENGTH_A_1 = 1;
parameter LENGTH_A_2 = 1;
parameter LENGTH_A_3 = 1;
parameter LENGTH_A_4 = 1;
parameter LENGTH_A_5 = 1;
parameter LENGTH_A_6 = 1;
parameter LENGTH_A_7 = 1;
parameter LENGTH_B_0 = 1;
parameter LENGTH_B_1 = 1;
parameter LENGTH_B_2 = 1;
parameter LENGTH_B_3 = 1;
parameter LENGTH_B_4 = 1;
parameter LENGTH_B_5 = 1;
parameter LENGTH_B_6 = 1;
parameter LENGTH_B_7 = 1;
parameter LENGTH_C_0 = 1;
parameter LENGTH_C_1 = 1;
parameter LENGTH_C_2 = 1;
parameter LENGTH_C_3 = 1;
parameter LENGTH_C_4 = 1;
parameter LENGTH_C_5 = 1;
parameter LENGTH_C_6 = 1;
parameter LENGTH_C_7 = 1;
parameter LENGTH_X1_0 = 1;
parameter LENGTH_X1_1 = 1;
parameter LENGTH_X1_2 = 1;
parameter LENGTH_X1_3 = 1;
parameter LENGTH_X1_4 = 1;
parameter LENGTH_X1_5 = 1;
parameter LENGTH_X1_6 = 1;
parameter LENGTH_X1_7 = 1;
parameter LENGTH_X2_0 = 1;
parameter LENGTH_X2_1 = 1;
parameter LENGTH_X2_2 = 1;
parameter LENGTH_X2_3 = 1;
parameter LENGTH_X2_4 = 1;
parameter LENGTH_X2_5 = 1;
parameter LENGTH_X2_6 = 1;
parameter LENGTH_X2_7 = 1;
parameter LENGTH_D_0 = 1;
parameter LENGTH_D_1 = 1;
parameter LENGTH_D_2 = 1;
parameter LENGTH_D_3 = 1;
parameter LENGTH_D_4 = 1;
parameter LENGTH_D_5 = 1;
parameter LENGTH_D_6 = 1;
parameter LENGTH_D_7 = 1;

task read_token;
    input integer fp;
    output reg [279 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire  ap_local_block;
wire  ap_local_deadlock;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [31 : 0] A_0;
wire [31 : 0] A_1;
wire [31 : 0] A_2;
wire [31 : 0] A_3;
wire [31 : 0] A_4;
wire [31 : 0] A_5;
wire [31 : 0] A_6;
wire [31 : 0] A_7;
wire [31 : 0] B_0;
wire [31 : 0] B_1;
wire [31 : 0] B_2;
wire [31 : 0] B_3;
wire [31 : 0] B_4;
wire [31 : 0] B_5;
wire [31 : 0] B_6;
wire [31 : 0] B_7;
wire [31 : 0] C_0;
wire [31 : 0] C_1;
wire [31 : 0] C_2;
wire [31 : 0] C_3;
wire [31 : 0] C_4;
wire [31 : 0] C_5;
wire [31 : 0] C_6;
wire [31 : 0] C_7;
wire [31 : 0] X1_0;
wire  X1_0_ap_vld;
wire [31 : 0] X1_1;
wire  X1_1_ap_vld;
wire [31 : 0] X1_2;
wire  X1_2_ap_vld;
wire [31 : 0] X1_3;
wire  X1_3_ap_vld;
wire [31 : 0] X1_4;
wire  X1_4_ap_vld;
wire [31 : 0] X1_5;
wire  X1_5_ap_vld;
wire [31 : 0] X1_6;
wire  X1_6_ap_vld;
wire [31 : 0] X1_7;
wire  X1_7_ap_vld;
wire [31 : 0] X2_0;
wire  X2_0_ap_vld;
wire [31 : 0] X2_1;
wire  X2_1_ap_vld;
wire [31 : 0] X2_2;
wire  X2_2_ap_vld;
wire [31 : 0] X2_3;
wire  X2_3_ap_vld;
wire [31 : 0] X2_4;
wire  X2_4_ap_vld;
wire [31 : 0] X2_5;
wire  X2_5_ap_vld;
wire [31 : 0] X2_6;
wire  X2_6_ap_vld;
wire [31 : 0] X2_7;
wire  X2_7_ap_vld;
wire [31 : 0] D_0;
wire  D_0_ap_vld;
wire [31 : 0] D_1;
wire  D_1_ap_vld;
wire [31 : 0] D_2;
wire  D_2_ap_vld;
wire [31 : 0] D_3;
wire  D_3_ap_vld;
wire [31 : 0] D_4;
wire  D_4_ap_vld;
wire [31 : 0] D_5;
wire  D_5_ap_vld;
wire [31 : 0] D_6;
wire  D_6_ap_vld;
wire [31 : 0] D_7;
wire  D_7_ap_vld;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;


wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_local_block(ap_local_block),
    .ap_local_deadlock(ap_local_deadlock),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .A_0(A_0),
    .A_1(A_1),
    .A_2(A_2),
    .A_3(A_3),
    .A_4(A_4),
    .A_5(A_5),
    .A_6(A_6),
    .A_7(A_7),
    .B_0(B_0),
    .B_1(B_1),
    .B_2(B_2),
    .B_3(B_3),
    .B_4(B_4),
    .B_5(B_5),
    .B_6(B_6),
    .B_7(B_7),
    .C_0(C_0),
    .C_1(C_1),
    .C_2(C_2),
    .C_3(C_3),
    .C_4(C_4),
    .C_5(C_5),
    .C_6(C_6),
    .C_7(C_7),
    .X1_0(X1_0),
    .X1_0_ap_vld(X1_0_ap_vld),
    .X1_1(X1_1),
    .X1_1_ap_vld(X1_1_ap_vld),
    .X1_2(X1_2),
    .X1_2_ap_vld(X1_2_ap_vld),
    .X1_3(X1_3),
    .X1_3_ap_vld(X1_3_ap_vld),
    .X1_4(X1_4),
    .X1_4_ap_vld(X1_4_ap_vld),
    .X1_5(X1_5),
    .X1_5_ap_vld(X1_5_ap_vld),
    .X1_6(X1_6),
    .X1_6_ap_vld(X1_6_ap_vld),
    .X1_7(X1_7),
    .X1_7_ap_vld(X1_7_ap_vld),
    .X2_0(X2_0),
    .X2_0_ap_vld(X2_0_ap_vld),
    .X2_1(X2_1),
    .X2_1_ap_vld(X2_1_ap_vld),
    .X2_2(X2_2),
    .X2_2_ap_vld(X2_2_ap_vld),
    .X2_3(X2_3),
    .X2_3_ap_vld(X2_3_ap_vld),
    .X2_4(X2_4),
    .X2_4_ap_vld(X2_4_ap_vld),
    .X2_5(X2_5),
    .X2_5_ap_vld(X2_5_ap_vld),
    .X2_6(X2_6),
    .X2_6_ap_vld(X2_6_ap_vld),
    .X2_7(X2_7),
    .X2_7_ap_vld(X2_7_ap_vld),
    .D_0(D_0),
    .D_0_ap_vld(D_0_ap_vld),
    .D_1(D_1),
    .D_1_ap_vld(D_1_ap_vld),
    .D_2(D_2),
    .D_2_ap_vld(D_2_ap_vld),
    .D_3(D_3),
    .D_3_ap_vld(D_3_ap_vld),
    .D_4(D_4),
    .D_4_ap_vld(D_4_ap_vld),
    .D_5(D_5),
    .D_5_ap_vld(D_5_ap_vld),
    .D_6(D_6),
    .D_6_ap_vld(D_6_ap_vld),
    .D_7(D_7),
    .D_7_ap_vld(D_7_ap_vld));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = dut_rst;
assign ap_rst_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
// The signal of port A_0
reg [31: 0] AESL_REG_A_0 = 0;
assign A_0 = AESL_REG_A_0;
initial begin : read_file_process_A_0
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_A_0,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_A_0);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_A_0);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port A_1
reg [31: 0] AESL_REG_A_1 = 0;
assign A_1 = AESL_REG_A_1;
initial begin : read_file_process_A_1
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_A_1,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_A_1);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_A_1);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port A_2
reg [31: 0] AESL_REG_A_2 = 0;
assign A_2 = AESL_REG_A_2;
initial begin : read_file_process_A_2
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_A_2,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_A_2);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_A_2);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port A_3
reg [31: 0] AESL_REG_A_3 = 0;
assign A_3 = AESL_REG_A_3;
initial begin : read_file_process_A_3
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_A_3,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_A_3);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_A_3);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port A_4
reg [31: 0] AESL_REG_A_4 = 0;
assign A_4 = AESL_REG_A_4;
initial begin : read_file_process_A_4
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_A_4,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_A_4);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_A_4);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port A_5
reg [31: 0] AESL_REG_A_5 = 0;
assign A_5 = AESL_REG_A_5;
initial begin : read_file_process_A_5
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_A_5,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_A_5);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_A_5);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port A_6
reg [31: 0] AESL_REG_A_6 = 0;
assign A_6 = AESL_REG_A_6;
initial begin : read_file_process_A_6
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_A_6,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_A_6);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_A_6);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port A_7
reg [31: 0] AESL_REG_A_7 = 0;
assign A_7 = AESL_REG_A_7;
initial begin : read_file_process_A_7
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_A_7,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_A_7);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_A_7);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port B_0
reg [31: 0] AESL_REG_B_0 = 0;
assign B_0 = AESL_REG_B_0;
initial begin : read_file_process_B_0
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_B_0,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_B_0);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_B_0);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port B_1
reg [31: 0] AESL_REG_B_1 = 0;
assign B_1 = AESL_REG_B_1;
initial begin : read_file_process_B_1
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_B_1,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_B_1);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_B_1);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port B_2
reg [31: 0] AESL_REG_B_2 = 0;
assign B_2 = AESL_REG_B_2;
initial begin : read_file_process_B_2
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_B_2,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_B_2);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_B_2);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port B_3
reg [31: 0] AESL_REG_B_3 = 0;
assign B_3 = AESL_REG_B_3;
initial begin : read_file_process_B_3
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_B_3,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_B_3);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_B_3);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port B_4
reg [31: 0] AESL_REG_B_4 = 0;
assign B_4 = AESL_REG_B_4;
initial begin : read_file_process_B_4
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_B_4,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_B_4);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_B_4);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port B_5
reg [31: 0] AESL_REG_B_5 = 0;
assign B_5 = AESL_REG_B_5;
initial begin : read_file_process_B_5
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_B_5,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_B_5);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_B_5);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port B_6
reg [31: 0] AESL_REG_B_6 = 0;
assign B_6 = AESL_REG_B_6;
initial begin : read_file_process_B_6
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_B_6,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_B_6);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_B_6);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port B_7
reg [31: 0] AESL_REG_B_7 = 0;
assign B_7 = AESL_REG_B_7;
initial begin : read_file_process_B_7
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_B_7,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_B_7);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_B_7);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port C_0
reg [31: 0] AESL_REG_C_0 = 0;
assign C_0 = AESL_REG_C_0;
initial begin : read_file_process_C_0
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_C_0,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_C_0);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_C_0);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port C_1
reg [31: 0] AESL_REG_C_1 = 0;
assign C_1 = AESL_REG_C_1;
initial begin : read_file_process_C_1
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_C_1,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_C_1);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_C_1);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port C_2
reg [31: 0] AESL_REG_C_2 = 0;
assign C_2 = AESL_REG_C_2;
initial begin : read_file_process_C_2
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_C_2,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_C_2);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_C_2);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port C_3
reg [31: 0] AESL_REG_C_3 = 0;
assign C_3 = AESL_REG_C_3;
initial begin : read_file_process_C_3
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_C_3,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_C_3);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_C_3);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port C_4
reg [31: 0] AESL_REG_C_4 = 0;
assign C_4 = AESL_REG_C_4;
initial begin : read_file_process_C_4
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_C_4,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_C_4);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_C_4);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port C_5
reg [31: 0] AESL_REG_C_5 = 0;
assign C_5 = AESL_REG_C_5;
initial begin : read_file_process_C_5
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_C_5,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_C_5);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_C_5);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port C_6
reg [31: 0] AESL_REG_C_6 = 0;
assign C_6 = AESL_REG_C_6;
initial begin : read_file_process_C_6
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_C_6,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_C_6);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_C_6);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port C_7
reg [31: 0] AESL_REG_C_7 = 0;
assign C_7 = AESL_REG_C_7;
initial begin : read_file_process_C_7
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [279  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_C_7,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_C_7);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_C_7);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


reg AESL_REG_X1_0_ap_vld = 0;
// The signal of port X1_0
reg [31: 0] AESL_REG_X1_0 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_X1_0 = 0; 
    else if(X1_0_ap_vld) begin
        AESL_REG_X1_0 <= X1_0;
        AESL_REG_X1_0_ap_vld <= 1;
    end
end 

initial begin : write_file_process_X1_0
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer X1_0_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_X1_0_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X1_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_X1_0_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_X1_0);
        AESL_REG_X1_0_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_X1_1_ap_vld = 0;
// The signal of port X1_1
reg [31: 0] AESL_REG_X1_1 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_X1_1 = 0; 
    else if(X1_1_ap_vld) begin
        AESL_REG_X1_1 <= X1_1;
        AESL_REG_X1_1_ap_vld <= 1;
    end
end 

initial begin : write_file_process_X1_1
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer X1_1_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_X1_1_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X1_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_X1_1_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_X1_1);
        AESL_REG_X1_1_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_X1_2_ap_vld = 0;
// The signal of port X1_2
reg [31: 0] AESL_REG_X1_2 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_X1_2 = 0; 
    else if(X1_2_ap_vld) begin
        AESL_REG_X1_2 <= X1_2;
        AESL_REG_X1_2_ap_vld <= 1;
    end
end 

initial begin : write_file_process_X1_2
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer X1_2_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_X1_2_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X1_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_X1_2_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_X1_2);
        AESL_REG_X1_2_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_X1_3_ap_vld = 0;
// The signal of port X1_3
reg [31: 0] AESL_REG_X1_3 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_X1_3 = 0; 
    else if(X1_3_ap_vld) begin
        AESL_REG_X1_3 <= X1_3;
        AESL_REG_X1_3_ap_vld <= 1;
    end
end 

initial begin : write_file_process_X1_3
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer X1_3_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_X1_3_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X1_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_X1_3_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_X1_3);
        AESL_REG_X1_3_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_X1_4_ap_vld = 0;
// The signal of port X1_4
reg [31: 0] AESL_REG_X1_4 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_X1_4 = 0; 
    else if(X1_4_ap_vld) begin
        AESL_REG_X1_4 <= X1_4;
        AESL_REG_X1_4_ap_vld <= 1;
    end
end 

initial begin : write_file_process_X1_4
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer X1_4_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_X1_4_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X1_4_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_X1_4_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_X1_4);
        AESL_REG_X1_4_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_X1_5_ap_vld = 0;
// The signal of port X1_5
reg [31: 0] AESL_REG_X1_5 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_X1_5 = 0; 
    else if(X1_5_ap_vld) begin
        AESL_REG_X1_5 <= X1_5;
        AESL_REG_X1_5_ap_vld <= 1;
    end
end 

initial begin : write_file_process_X1_5
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer X1_5_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_X1_5_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X1_5_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_X1_5_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_X1_5);
        AESL_REG_X1_5_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_X1_6_ap_vld = 0;
// The signal of port X1_6
reg [31: 0] AESL_REG_X1_6 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_X1_6 = 0; 
    else if(X1_6_ap_vld) begin
        AESL_REG_X1_6 <= X1_6;
        AESL_REG_X1_6_ap_vld <= 1;
    end
end 

initial begin : write_file_process_X1_6
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer X1_6_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_X1_6_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X1_6_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_X1_6_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_X1_6);
        AESL_REG_X1_6_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_X1_7_ap_vld = 0;
// The signal of port X1_7
reg [31: 0] AESL_REG_X1_7 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_X1_7 = 0; 
    else if(X1_7_ap_vld) begin
        AESL_REG_X1_7 <= X1_7;
        AESL_REG_X1_7_ap_vld <= 1;
    end
end 

initial begin : write_file_process_X1_7
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer X1_7_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_X1_7_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X1_7_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_X1_7_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_X1_7);
        AESL_REG_X1_7_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_X2_0_ap_vld = 0;
// The signal of port X2_0
reg [31: 0] AESL_REG_X2_0 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_X2_0 = 0; 
    else if(X2_0_ap_vld) begin
        AESL_REG_X2_0 <= X2_0;
        AESL_REG_X2_0_ap_vld <= 1;
    end
end 

initial begin : write_file_process_X2_0
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer X2_0_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_X2_0_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X2_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_X2_0_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_X2_0);
        AESL_REG_X2_0_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_X2_1_ap_vld = 0;
// The signal of port X2_1
reg [31: 0] AESL_REG_X2_1 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_X2_1 = 0; 
    else if(X2_1_ap_vld) begin
        AESL_REG_X2_1 <= X2_1;
        AESL_REG_X2_1_ap_vld <= 1;
    end
end 

initial begin : write_file_process_X2_1
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer X2_1_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_X2_1_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X2_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_X2_1_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_X2_1);
        AESL_REG_X2_1_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_X2_2_ap_vld = 0;
// The signal of port X2_2
reg [31: 0] AESL_REG_X2_2 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_X2_2 = 0; 
    else if(X2_2_ap_vld) begin
        AESL_REG_X2_2 <= X2_2;
        AESL_REG_X2_2_ap_vld <= 1;
    end
end 

initial begin : write_file_process_X2_2
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer X2_2_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_X2_2_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X2_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_X2_2_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_X2_2);
        AESL_REG_X2_2_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_X2_3_ap_vld = 0;
// The signal of port X2_3
reg [31: 0] AESL_REG_X2_3 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_X2_3 = 0; 
    else if(X2_3_ap_vld) begin
        AESL_REG_X2_3 <= X2_3;
        AESL_REG_X2_3_ap_vld <= 1;
    end
end 

initial begin : write_file_process_X2_3
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer X2_3_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_X2_3_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X2_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_X2_3_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_X2_3);
        AESL_REG_X2_3_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_X2_4_ap_vld = 0;
// The signal of port X2_4
reg [31: 0] AESL_REG_X2_4 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_X2_4 = 0; 
    else if(X2_4_ap_vld) begin
        AESL_REG_X2_4 <= X2_4;
        AESL_REG_X2_4_ap_vld <= 1;
    end
end 

initial begin : write_file_process_X2_4
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer X2_4_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_X2_4_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X2_4_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_X2_4_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_X2_4);
        AESL_REG_X2_4_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_X2_5_ap_vld = 0;
// The signal of port X2_5
reg [31: 0] AESL_REG_X2_5 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_X2_5 = 0; 
    else if(X2_5_ap_vld) begin
        AESL_REG_X2_5 <= X2_5;
        AESL_REG_X2_5_ap_vld <= 1;
    end
end 

initial begin : write_file_process_X2_5
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer X2_5_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_X2_5_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X2_5_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_X2_5_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_X2_5);
        AESL_REG_X2_5_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_X2_6_ap_vld = 0;
// The signal of port X2_6
reg [31: 0] AESL_REG_X2_6 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_X2_6 = 0; 
    else if(X2_6_ap_vld) begin
        AESL_REG_X2_6 <= X2_6;
        AESL_REG_X2_6_ap_vld <= 1;
    end
end 

initial begin : write_file_process_X2_6
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer X2_6_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_X2_6_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X2_6_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_X2_6_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_X2_6);
        AESL_REG_X2_6_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_X2_7_ap_vld = 0;
// The signal of port X2_7
reg [31: 0] AESL_REG_X2_7 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_X2_7 = 0; 
    else if(X2_7_ap_vld) begin
        AESL_REG_X2_7 <= X2_7;
        AESL_REG_X2_7_ap_vld <= 1;
    end
end 

initial begin : write_file_process_X2_7
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer X2_7_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_X2_7_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X2_7_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_X2_7_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_X2_7);
        AESL_REG_X2_7_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_D_0_ap_vld = 0;
// The signal of port D_0
reg [31: 0] AESL_REG_D_0 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_D_0 = 0; 
    else if(D_0_ap_vld) begin
        AESL_REG_D_0 <= D_0;
        AESL_REG_D_0_ap_vld <= 1;
    end
end 

initial begin : write_file_process_D_0
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer D_0_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_D_0_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_D_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_D_0_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_D_0);
        AESL_REG_D_0_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_D_1_ap_vld = 0;
// The signal of port D_1
reg [31: 0] AESL_REG_D_1 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_D_1 = 0; 
    else if(D_1_ap_vld) begin
        AESL_REG_D_1 <= D_1;
        AESL_REG_D_1_ap_vld <= 1;
    end
end 

initial begin : write_file_process_D_1
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer D_1_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_D_1_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_D_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_D_1_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_D_1);
        AESL_REG_D_1_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_D_2_ap_vld = 0;
// The signal of port D_2
reg [31: 0] AESL_REG_D_2 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_D_2 = 0; 
    else if(D_2_ap_vld) begin
        AESL_REG_D_2 <= D_2;
        AESL_REG_D_2_ap_vld <= 1;
    end
end 

initial begin : write_file_process_D_2
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer D_2_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_D_2_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_D_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_D_2_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_D_2);
        AESL_REG_D_2_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_D_3_ap_vld = 0;
// The signal of port D_3
reg [31: 0] AESL_REG_D_3 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_D_3 = 0; 
    else if(D_3_ap_vld) begin
        AESL_REG_D_3 <= D_3;
        AESL_REG_D_3_ap_vld <= 1;
    end
end 

initial begin : write_file_process_D_3
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer D_3_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_D_3_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_D_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_D_3_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_D_3);
        AESL_REG_D_3_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_D_4_ap_vld = 0;
// The signal of port D_4
reg [31: 0] AESL_REG_D_4 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_D_4 = 0; 
    else if(D_4_ap_vld) begin
        AESL_REG_D_4 <= D_4;
        AESL_REG_D_4_ap_vld <= 1;
    end
end 

initial begin : write_file_process_D_4
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer D_4_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_D_4_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_D_4_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_D_4_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_D_4);
        AESL_REG_D_4_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_D_5_ap_vld = 0;
// The signal of port D_5
reg [31: 0] AESL_REG_D_5 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_D_5 = 0; 
    else if(D_5_ap_vld) begin
        AESL_REG_D_5 <= D_5;
        AESL_REG_D_5_ap_vld <= 1;
    end
end 

initial begin : write_file_process_D_5
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer D_5_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_D_5_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_D_5_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_D_5_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_D_5);
        AESL_REG_D_5_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_D_6_ap_vld = 0;
// The signal of port D_6
reg [31: 0] AESL_REG_D_6 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_D_6 = 0; 
    else if(D_6_ap_vld) begin
        AESL_REG_D_6 <= D_6;
        AESL_REG_D_6_ap_vld <= 1;
    end
end 

initial begin : write_file_process_D_6
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer D_6_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_D_6_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_D_6_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_D_6_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_D_6);
        AESL_REG_D_6_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_D_7_ap_vld = 0;
// The signal of port D_7
reg [31: 0] AESL_REG_D_7 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_D_7 = 0; 
    else if(D_7_ap_vld) begin
        AESL_REG_D_7 <= D_7;
        AESL_REG_D_7_ap_vld <= 1;
    end
end 

initial begin : write_file_process_D_7
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer D_7_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_D_7_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_D_7_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_D_7_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_D_7);
        AESL_REG_D_7_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_A_0;
reg [31:0] size_A_0;
reg [31:0] size_A_0_backup;
reg end_A_1;
reg [31:0] size_A_1;
reg [31:0] size_A_1_backup;
reg end_A_2;
reg [31:0] size_A_2;
reg [31:0] size_A_2_backup;
reg end_A_3;
reg [31:0] size_A_3;
reg [31:0] size_A_3_backup;
reg end_A_4;
reg [31:0] size_A_4;
reg [31:0] size_A_4_backup;
reg end_A_5;
reg [31:0] size_A_5;
reg [31:0] size_A_5_backup;
reg end_A_6;
reg [31:0] size_A_6;
reg [31:0] size_A_6_backup;
reg end_A_7;
reg [31:0] size_A_7;
reg [31:0] size_A_7_backup;
reg end_B_0;
reg [31:0] size_B_0;
reg [31:0] size_B_0_backup;
reg end_B_1;
reg [31:0] size_B_1;
reg [31:0] size_B_1_backup;
reg end_B_2;
reg [31:0] size_B_2;
reg [31:0] size_B_2_backup;
reg end_B_3;
reg [31:0] size_B_3;
reg [31:0] size_B_3_backup;
reg end_B_4;
reg [31:0] size_B_4;
reg [31:0] size_B_4_backup;
reg end_B_5;
reg [31:0] size_B_5;
reg [31:0] size_B_5_backup;
reg end_B_6;
reg [31:0] size_B_6;
reg [31:0] size_B_6_backup;
reg end_B_7;
reg [31:0] size_B_7;
reg [31:0] size_B_7_backup;
reg end_C_0;
reg [31:0] size_C_0;
reg [31:0] size_C_0_backup;
reg end_C_1;
reg [31:0] size_C_1;
reg [31:0] size_C_1_backup;
reg end_C_2;
reg [31:0] size_C_2;
reg [31:0] size_C_2_backup;
reg end_C_3;
reg [31:0] size_C_3;
reg [31:0] size_C_3_backup;
reg end_C_4;
reg [31:0] size_C_4;
reg [31:0] size_C_4_backup;
reg end_C_5;
reg [31:0] size_C_5;
reg [31:0] size_C_5_backup;
reg end_C_6;
reg [31:0] size_C_6;
reg [31:0] size_C_6_backup;
reg end_C_7;
reg [31:0] size_C_7;
reg [31:0] size_C_7_backup;
reg end_X1_0;
reg [31:0] size_X1_0;
reg [31:0] size_X1_0_backup;
reg end_X1_1;
reg [31:0] size_X1_1;
reg [31:0] size_X1_1_backup;
reg end_X1_2;
reg [31:0] size_X1_2;
reg [31:0] size_X1_2_backup;
reg end_X1_3;
reg [31:0] size_X1_3;
reg [31:0] size_X1_3_backup;
reg end_X1_4;
reg [31:0] size_X1_4;
reg [31:0] size_X1_4_backup;
reg end_X1_5;
reg [31:0] size_X1_5;
reg [31:0] size_X1_5_backup;
reg end_X1_6;
reg [31:0] size_X1_6;
reg [31:0] size_X1_6_backup;
reg end_X1_7;
reg [31:0] size_X1_7;
reg [31:0] size_X1_7_backup;
reg end_X2_0;
reg [31:0] size_X2_0;
reg [31:0] size_X2_0_backup;
reg end_X2_1;
reg [31:0] size_X2_1;
reg [31:0] size_X2_1_backup;
reg end_X2_2;
reg [31:0] size_X2_2;
reg [31:0] size_X2_2_backup;
reg end_X2_3;
reg [31:0] size_X2_3;
reg [31:0] size_X2_3_backup;
reg end_X2_4;
reg [31:0] size_X2_4;
reg [31:0] size_X2_4_backup;
reg end_X2_5;
reg [31:0] size_X2_5;
reg [31:0] size_X2_5_backup;
reg end_X2_6;
reg [31:0] size_X2_6;
reg [31:0] size_X2_6_backup;
reg end_X2_7;
reg [31:0] size_X2_7;
reg [31:0] size_X2_7_backup;
reg end_D_0;
reg [31:0] size_D_0;
reg [31:0] size_D_0_backup;
reg end_D_1;
reg [31:0] size_D_1;
reg [31:0] size_D_1_backup;
reg end_D_2;
reg [31:0] size_D_2;
reg [31:0] size_D_2_backup;
reg end_D_3;
reg [31:0] size_D_3;
reg [31:0] size_D_3_backup;
reg end_D_4;
reg [31:0] size_D_4;
reg [31:0] size_D_4_backup;
reg end_D_5;
reg [31:0] size_D_5;
reg [31:0] size_D_5_backup;
reg end_D_6;
reg [31:0] size_D_6;
reg [31:0] size_D_6_backup;
reg end_D_7;
reg [31:0] size_D_7;
reg [31:0] size_D_7_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 1) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
