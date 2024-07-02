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

`define AESL_MEM_A_0 AESL_automem_A_0
`define AESL_MEM_INST_A_0 mem_inst_A_0
`define AESL_MEM_A_1 AESL_automem_A_1
`define AESL_MEM_INST_A_1 mem_inst_A_1
`define AESL_MEM_A_2 AESL_automem_A_2
`define AESL_MEM_INST_A_2 mem_inst_A_2
`define AESL_MEM_A_3 AESL_automem_A_3
`define AESL_MEM_INST_A_3 mem_inst_A_3
`define AESL_MEM_B_0 AESL_automem_B_0
`define AESL_MEM_INST_B_0 mem_inst_B_0
`define AESL_MEM_B_1 AESL_automem_B_1
`define AESL_MEM_INST_B_1 mem_inst_B_1
`define AESL_MEM_B_2 AESL_automem_B_2
`define AESL_MEM_INST_B_2 mem_inst_B_2
`define AESL_MEM_B_3 AESL_automem_B_3
`define AESL_MEM_INST_B_3 mem_inst_B_3
`define AESL_MEM_C_0 AESL_automem_C_0
`define AESL_MEM_INST_C_0 mem_inst_C_0
`define AESL_MEM_C_1 AESL_automem_C_1
`define AESL_MEM_INST_C_1 mem_inst_C_1
`define AESL_MEM_C_2 AESL_automem_C_2
`define AESL_MEM_INST_C_2 mem_inst_C_2
`define AESL_MEM_C_3 AESL_automem_C_3
`define AESL_MEM_INST_C_3 mem_inst_C_3
`define AESL_MEM_X1_0 AESL_automem_X1_0
`define AESL_MEM_INST_X1_0 mem_inst_X1_0
`define AESL_MEM_X1_1 AESL_automem_X1_1
`define AESL_MEM_INST_X1_1 mem_inst_X1_1
`define AESL_MEM_X1_2 AESL_automem_X1_2
`define AESL_MEM_INST_X1_2 mem_inst_X1_2
`define AESL_MEM_X1_3 AESL_automem_X1_3
`define AESL_MEM_INST_X1_3 mem_inst_X1_3
`define AESL_MEM_X2_0 AESL_automem_X2_0
`define AESL_MEM_INST_X2_0 mem_inst_X2_0
`define AESL_MEM_X2_1 AESL_automem_X2_1
`define AESL_MEM_INST_X2_1 mem_inst_X2_1
`define AESL_MEM_X2_2 AESL_automem_X2_2
`define AESL_MEM_INST_X2_2 mem_inst_X2_2
`define AESL_MEM_X2_3 AESL_automem_X2_3
`define AESL_MEM_INST_X2_3 mem_inst_X2_3
`define AESL_MEM_D_0 AESL_automem_D_0
`define AESL_MEM_INST_D_0 mem_inst_D_0
`define AESL_MEM_D_1 AESL_automem_D_1
`define AESL_MEM_INST_D_1 mem_inst_D_1
`define AESL_MEM_D_2 AESL_automem_D_2
`define AESL_MEM_INST_D_2 mem_inst_D_2
`define AESL_MEM_D_3 AESL_automem_D_3
`define AESL_MEM_INST_D_3 mem_inst_D_3
`define AUTOTB_TVIN_A_0  "../tv/cdatafile/c.kp_502_7.autotvin_A_0.dat"
`define AUTOTB_TVIN_A_1  "../tv/cdatafile/c.kp_502_7.autotvin_A_1.dat"
`define AUTOTB_TVIN_A_2  "../tv/cdatafile/c.kp_502_7.autotvin_A_2.dat"
`define AUTOTB_TVIN_A_3  "../tv/cdatafile/c.kp_502_7.autotvin_A_3.dat"
`define AUTOTB_TVIN_B_0  "../tv/cdatafile/c.kp_502_7.autotvin_B_0.dat"
`define AUTOTB_TVIN_B_1  "../tv/cdatafile/c.kp_502_7.autotvin_B_1.dat"
`define AUTOTB_TVIN_B_2  "../tv/cdatafile/c.kp_502_7.autotvin_B_2.dat"
`define AUTOTB_TVIN_B_3  "../tv/cdatafile/c.kp_502_7.autotvin_B_3.dat"
`define AUTOTB_TVIN_C_0  "../tv/cdatafile/c.kp_502_7.autotvin_C_0.dat"
`define AUTOTB_TVIN_C_1  "../tv/cdatafile/c.kp_502_7.autotvin_C_1.dat"
`define AUTOTB_TVIN_C_2  "../tv/cdatafile/c.kp_502_7.autotvin_C_2.dat"
`define AUTOTB_TVIN_C_3  "../tv/cdatafile/c.kp_502_7.autotvin_C_3.dat"
`define AUTOTB_TVIN_X1_0  "../tv/cdatafile/c.kp_502_7.autotvin_X1_0.dat"
`define AUTOTB_TVIN_X1_1  "../tv/cdatafile/c.kp_502_7.autotvin_X1_1.dat"
`define AUTOTB_TVIN_X1_2  "../tv/cdatafile/c.kp_502_7.autotvin_X1_2.dat"
`define AUTOTB_TVIN_X1_3  "../tv/cdatafile/c.kp_502_7.autotvin_X1_3.dat"
`define AUTOTB_TVIN_X2_0  "../tv/cdatafile/c.kp_502_7.autotvin_X2_0.dat"
`define AUTOTB_TVIN_X2_1  "../tv/cdatafile/c.kp_502_7.autotvin_X2_1.dat"
`define AUTOTB_TVIN_X2_2  "../tv/cdatafile/c.kp_502_7.autotvin_X2_2.dat"
`define AUTOTB_TVIN_X2_3  "../tv/cdatafile/c.kp_502_7.autotvin_X2_3.dat"
`define AUTOTB_TVIN_D_0  "../tv/cdatafile/c.kp_502_7.autotvin_D_0.dat"
`define AUTOTB_TVIN_D_1  "../tv/cdatafile/c.kp_502_7.autotvin_D_1.dat"
`define AUTOTB_TVIN_D_2  "../tv/cdatafile/c.kp_502_7.autotvin_D_2.dat"
`define AUTOTB_TVIN_D_3  "../tv/cdatafile/c.kp_502_7.autotvin_D_3.dat"
`define AUTOTB_TVIN_A_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_A_0.dat"
`define AUTOTB_TVIN_A_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_A_1.dat"
`define AUTOTB_TVIN_A_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_A_2.dat"
`define AUTOTB_TVIN_A_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_A_3.dat"
`define AUTOTB_TVIN_B_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_B_0.dat"
`define AUTOTB_TVIN_B_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_B_1.dat"
`define AUTOTB_TVIN_B_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_B_2.dat"
`define AUTOTB_TVIN_B_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_B_3.dat"
`define AUTOTB_TVIN_C_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_C_0.dat"
`define AUTOTB_TVIN_C_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_C_1.dat"
`define AUTOTB_TVIN_C_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_C_2.dat"
`define AUTOTB_TVIN_C_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_C_3.dat"
`define AUTOTB_TVIN_X1_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_X1_0.dat"
`define AUTOTB_TVIN_X1_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_X1_1.dat"
`define AUTOTB_TVIN_X1_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_X1_2.dat"
`define AUTOTB_TVIN_X1_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_X1_3.dat"
`define AUTOTB_TVIN_X2_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_X2_0.dat"
`define AUTOTB_TVIN_X2_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_X2_1.dat"
`define AUTOTB_TVIN_X2_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_X2_2.dat"
`define AUTOTB_TVIN_X2_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_X2_3.dat"
`define AUTOTB_TVIN_D_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_D_0.dat"
`define AUTOTB_TVIN_D_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_D_1.dat"
`define AUTOTB_TVIN_D_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_D_2.dat"
`define AUTOTB_TVIN_D_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvin_D_3.dat"
`define AUTOTB_TVOUT_X1_0  "../tv/cdatafile/c.kp_502_7.autotvout_X1_0.dat"
`define AUTOTB_TVOUT_X1_1  "../tv/cdatafile/c.kp_502_7.autotvout_X1_1.dat"
`define AUTOTB_TVOUT_X1_2  "../tv/cdatafile/c.kp_502_7.autotvout_X1_2.dat"
`define AUTOTB_TVOUT_X1_3  "../tv/cdatafile/c.kp_502_7.autotvout_X1_3.dat"
`define AUTOTB_TVOUT_X2_0  "../tv/cdatafile/c.kp_502_7.autotvout_X2_0.dat"
`define AUTOTB_TVOUT_X2_1  "../tv/cdatafile/c.kp_502_7.autotvout_X2_1.dat"
`define AUTOTB_TVOUT_X2_2  "../tv/cdatafile/c.kp_502_7.autotvout_X2_2.dat"
`define AUTOTB_TVOUT_X2_3  "../tv/cdatafile/c.kp_502_7.autotvout_X2_3.dat"
`define AUTOTB_TVOUT_D_0  "../tv/cdatafile/c.kp_502_7.autotvout_D_0.dat"
`define AUTOTB_TVOUT_D_1  "../tv/cdatafile/c.kp_502_7.autotvout_D_1.dat"
`define AUTOTB_TVOUT_D_2  "../tv/cdatafile/c.kp_502_7.autotvout_D_2.dat"
`define AUTOTB_TVOUT_D_3  "../tv/cdatafile/c.kp_502_7.autotvout_D_3.dat"
`define AUTOTB_TVOUT_X1_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_0.dat"
`define AUTOTB_TVOUT_X1_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_1.dat"
`define AUTOTB_TVOUT_X1_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_2.dat"
`define AUTOTB_TVOUT_X1_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_3.dat"
`define AUTOTB_TVOUT_X2_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_0.dat"
`define AUTOTB_TVOUT_X2_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_1.dat"
`define AUTOTB_TVOUT_X2_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_2.dat"
`define AUTOTB_TVOUT_X2_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_3.dat"
`define AUTOTB_TVOUT_D_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_0.dat"
`define AUTOTB_TVOUT_D_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_1.dat"
`define AUTOTB_TVOUT_D_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_2.dat"
`define AUTOTB_TVOUT_D_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_3.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 3;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 167;
parameter LENGTH_A_0 = 2;
parameter LENGTH_A_1 = 2;
parameter LENGTH_A_2 = 2;
parameter LENGTH_A_3 = 2;
parameter LENGTH_B_0 = 2;
parameter LENGTH_B_1 = 2;
parameter LENGTH_B_2 = 2;
parameter LENGTH_B_3 = 2;
parameter LENGTH_C_0 = 2;
parameter LENGTH_C_1 = 2;
parameter LENGTH_C_2 = 2;
parameter LENGTH_C_3 = 2;
parameter LENGTH_X1_0 = 2;
parameter LENGTH_X1_1 = 2;
parameter LENGTH_X1_2 = 2;
parameter LENGTH_X1_3 = 2;
parameter LENGTH_X2_0 = 2;
parameter LENGTH_X2_1 = 2;
parameter LENGTH_X2_2 = 2;
parameter LENGTH_X2_3 = 2;
parameter LENGTH_D_0 = 2;
parameter LENGTH_D_1 = 2;
parameter LENGTH_D_2 = 2;
parameter LENGTH_D_3 = 2;

task read_token;
    input integer fp;
    output reg [159 : 0] token;
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
wire [0 : 0] A_0_address0;
wire  A_0_ce0;
wire [63 : 0] A_0_q0;
wire [0 : 0] A_1_address0;
wire  A_1_ce0;
wire [63 : 0] A_1_q0;
wire [0 : 0] A_2_address0;
wire  A_2_ce0;
wire [63 : 0] A_2_q0;
wire [0 : 0] A_3_address0;
wire  A_3_ce0;
wire [63 : 0] A_3_q0;
wire [0 : 0] B_0_address0;
wire  B_0_ce0;
wire [63 : 0] B_0_q0;
wire [0 : 0] B_1_address0;
wire  B_1_ce0;
wire [63 : 0] B_1_q0;
wire [0 : 0] B_2_address0;
wire  B_2_ce0;
wire [63 : 0] B_2_q0;
wire [0 : 0] B_3_address0;
wire  B_3_ce0;
wire [63 : 0] B_3_q0;
wire [0 : 0] C_0_address0;
wire  C_0_ce0;
wire [63 : 0] C_0_q0;
wire [0 : 0] C_1_address0;
wire  C_1_ce0;
wire [63 : 0] C_1_q0;
wire [0 : 0] C_2_address0;
wire  C_2_ce0;
wire [63 : 0] C_2_q0;
wire [0 : 0] C_3_address0;
wire  C_3_ce0;
wire [63 : 0] C_3_q0;
wire [0 : 0] X1_0_address0;
wire  X1_0_ce0;
wire  X1_0_we0;
wire [63 : 0] X1_0_d0;
wire [0 : 0] X1_1_address0;
wire  X1_1_ce0;
wire  X1_1_we0;
wire [63 : 0] X1_1_d0;
wire [0 : 0] X1_2_address0;
wire  X1_2_ce0;
wire  X1_2_we0;
wire [63 : 0] X1_2_d0;
wire [0 : 0] X1_3_address0;
wire  X1_3_ce0;
wire  X1_3_we0;
wire [63 : 0] X1_3_d0;
wire [0 : 0] X2_0_address0;
wire  X2_0_ce0;
wire  X2_0_we0;
wire [63 : 0] X2_0_d0;
wire [0 : 0] X2_1_address0;
wire  X2_1_ce0;
wire  X2_1_we0;
wire [63 : 0] X2_1_d0;
wire [0 : 0] X2_2_address0;
wire  X2_2_ce0;
wire  X2_2_we0;
wire [63 : 0] X2_2_d0;
wire [0 : 0] X2_3_address0;
wire  X2_3_ce0;
wire  X2_3_we0;
wire [63 : 0] X2_3_d0;
wire [0 : 0] D_0_address0;
wire  D_0_ce0;
wire  D_0_we0;
wire [63 : 0] D_0_d0;
wire [0 : 0] D_1_address0;
wire  D_1_ce0;
wire  D_1_we0;
wire [63 : 0] D_1_d0;
wire [0 : 0] D_2_address0;
wire  D_2_ce0;
wire  D_2_we0;
wire [63 : 0] D_2_d0;
wire [0 : 0] D_3_address0;
wire  D_3_ce0;
wire  D_3_we0;
wire [63 : 0] D_3_d0;
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
    .A_0_address0(A_0_address0),
    .A_0_ce0(A_0_ce0),
    .A_0_q0(A_0_q0),
    .A_1_address0(A_1_address0),
    .A_1_ce0(A_1_ce0),
    .A_1_q0(A_1_q0),
    .A_2_address0(A_2_address0),
    .A_2_ce0(A_2_ce0),
    .A_2_q0(A_2_q0),
    .A_3_address0(A_3_address0),
    .A_3_ce0(A_3_ce0),
    .A_3_q0(A_3_q0),
    .B_0_address0(B_0_address0),
    .B_0_ce0(B_0_ce0),
    .B_0_q0(B_0_q0),
    .B_1_address0(B_1_address0),
    .B_1_ce0(B_1_ce0),
    .B_1_q0(B_1_q0),
    .B_2_address0(B_2_address0),
    .B_2_ce0(B_2_ce0),
    .B_2_q0(B_2_q0),
    .B_3_address0(B_3_address0),
    .B_3_ce0(B_3_ce0),
    .B_3_q0(B_3_q0),
    .C_0_address0(C_0_address0),
    .C_0_ce0(C_0_ce0),
    .C_0_q0(C_0_q0),
    .C_1_address0(C_1_address0),
    .C_1_ce0(C_1_ce0),
    .C_1_q0(C_1_q0),
    .C_2_address0(C_2_address0),
    .C_2_ce0(C_2_ce0),
    .C_2_q0(C_2_q0),
    .C_3_address0(C_3_address0),
    .C_3_ce0(C_3_ce0),
    .C_3_q0(C_3_q0),
    .X1_0_address0(X1_0_address0),
    .X1_0_ce0(X1_0_ce0),
    .X1_0_we0(X1_0_we0),
    .X1_0_d0(X1_0_d0),
    .X1_1_address0(X1_1_address0),
    .X1_1_ce0(X1_1_ce0),
    .X1_1_we0(X1_1_we0),
    .X1_1_d0(X1_1_d0),
    .X1_2_address0(X1_2_address0),
    .X1_2_ce0(X1_2_ce0),
    .X1_2_we0(X1_2_we0),
    .X1_2_d0(X1_2_d0),
    .X1_3_address0(X1_3_address0),
    .X1_3_ce0(X1_3_ce0),
    .X1_3_we0(X1_3_we0),
    .X1_3_d0(X1_3_d0),
    .X2_0_address0(X2_0_address0),
    .X2_0_ce0(X2_0_ce0),
    .X2_0_we0(X2_0_we0),
    .X2_0_d0(X2_0_d0),
    .X2_1_address0(X2_1_address0),
    .X2_1_ce0(X2_1_ce0),
    .X2_1_we0(X2_1_we0),
    .X2_1_d0(X2_1_d0),
    .X2_2_address0(X2_2_address0),
    .X2_2_ce0(X2_2_ce0),
    .X2_2_we0(X2_2_we0),
    .X2_2_d0(X2_2_d0),
    .X2_3_address0(X2_3_address0),
    .X2_3_ce0(X2_3_ce0),
    .X2_3_we0(X2_3_we0),
    .X2_3_d0(X2_3_d0),
    .D_0_address0(D_0_address0),
    .D_0_ce0(D_0_ce0),
    .D_0_we0(D_0_we0),
    .D_0_d0(D_0_d0),
    .D_1_address0(D_1_address0),
    .D_1_ce0(D_1_ce0),
    .D_1_we0(D_1_we0),
    .D_1_d0(D_1_d0),
    .D_2_address0(D_2_address0),
    .D_2_ce0(D_2_ce0),
    .D_2_we0(D_2_we0),
    .D_2_d0(D_2_d0),
    .D_3_address0(D_3_address0),
    .D_3_ce0(D_3_ce0),
    .D_3_we0(D_3_we0),
    .D_3_d0(D_3_d0));

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
//------------------------arrayA_0 Instantiation--------------

// The input and output of arrayA_0
wire    arrayA_0_ce0, arrayA_0_ce1;
wire [8 - 1 : 0]    arrayA_0_we0, arrayA_0_we1;
wire    [0 : 0]    arrayA_0_address0, arrayA_0_address1;
wire    [63 : 0]    arrayA_0_din0, arrayA_0_din1;
wire    [63 : 0]    arrayA_0_dout0, arrayA_0_dout1;
wire    arrayA_0_ready;
wire    arrayA_0_done;

`AESL_MEM_A_0 `AESL_MEM_INST_A_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayA_0_ce0),
    .we0        (arrayA_0_we0),
    .address0   (arrayA_0_address0),
    .din0       (arrayA_0_din0),
    .dout0      (arrayA_0_dout0),
    .ce1        (arrayA_0_ce1),
    .we1        (arrayA_0_we1),
    .address1   (arrayA_0_address1),
    .din1       (arrayA_0_din1),
    .dout1      (arrayA_0_dout1),
    .ready      (arrayA_0_ready),
    .done    (arrayA_0_done)
);

// Assignment between dut and arrayA_0
assign arrayA_0_address0 = A_0_address0;
assign arrayA_0_ce0 = A_0_ce0;
assign A_0_q0 = arrayA_0_dout0;
assign arrayA_0_we0 = 0;
assign arrayA_0_din0 = 0;
assign arrayA_0_we1 = 0;
assign arrayA_0_din1 = 0;
assign arrayA_0_ready=    ready;
assign arrayA_0_done = 0;


//------------------------arrayA_1 Instantiation--------------

// The input and output of arrayA_1
wire    arrayA_1_ce0, arrayA_1_ce1;
wire [8 - 1 : 0]    arrayA_1_we0, arrayA_1_we1;
wire    [0 : 0]    arrayA_1_address0, arrayA_1_address1;
wire    [63 : 0]    arrayA_1_din0, arrayA_1_din1;
wire    [63 : 0]    arrayA_1_dout0, arrayA_1_dout1;
wire    arrayA_1_ready;
wire    arrayA_1_done;

`AESL_MEM_A_1 `AESL_MEM_INST_A_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayA_1_ce0),
    .we0        (arrayA_1_we0),
    .address0   (arrayA_1_address0),
    .din0       (arrayA_1_din0),
    .dout0      (arrayA_1_dout0),
    .ce1        (arrayA_1_ce1),
    .we1        (arrayA_1_we1),
    .address1   (arrayA_1_address1),
    .din1       (arrayA_1_din1),
    .dout1      (arrayA_1_dout1),
    .ready      (arrayA_1_ready),
    .done    (arrayA_1_done)
);

// Assignment between dut and arrayA_1
assign arrayA_1_address0 = A_1_address0;
assign arrayA_1_ce0 = A_1_ce0;
assign A_1_q0 = arrayA_1_dout0;
assign arrayA_1_we0 = 0;
assign arrayA_1_din0 = 0;
assign arrayA_1_we1 = 0;
assign arrayA_1_din1 = 0;
assign arrayA_1_ready=    ready;
assign arrayA_1_done = 0;


//------------------------arrayA_2 Instantiation--------------

// The input and output of arrayA_2
wire    arrayA_2_ce0, arrayA_2_ce1;
wire [8 - 1 : 0]    arrayA_2_we0, arrayA_2_we1;
wire    [0 : 0]    arrayA_2_address0, arrayA_2_address1;
wire    [63 : 0]    arrayA_2_din0, arrayA_2_din1;
wire    [63 : 0]    arrayA_2_dout0, arrayA_2_dout1;
wire    arrayA_2_ready;
wire    arrayA_2_done;

`AESL_MEM_A_2 `AESL_MEM_INST_A_2(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayA_2_ce0),
    .we0        (arrayA_2_we0),
    .address0   (arrayA_2_address0),
    .din0       (arrayA_2_din0),
    .dout0      (arrayA_2_dout0),
    .ce1        (arrayA_2_ce1),
    .we1        (arrayA_2_we1),
    .address1   (arrayA_2_address1),
    .din1       (arrayA_2_din1),
    .dout1      (arrayA_2_dout1),
    .ready      (arrayA_2_ready),
    .done    (arrayA_2_done)
);

// Assignment between dut and arrayA_2
assign arrayA_2_address0 = A_2_address0;
assign arrayA_2_ce0 = A_2_ce0;
assign A_2_q0 = arrayA_2_dout0;
assign arrayA_2_we0 = 0;
assign arrayA_2_din0 = 0;
assign arrayA_2_we1 = 0;
assign arrayA_2_din1 = 0;
assign arrayA_2_ready=    ready;
assign arrayA_2_done = 0;


//------------------------arrayA_3 Instantiation--------------

// The input and output of arrayA_3
wire    arrayA_3_ce0, arrayA_3_ce1;
wire [8 - 1 : 0]    arrayA_3_we0, arrayA_3_we1;
wire    [0 : 0]    arrayA_3_address0, arrayA_3_address1;
wire    [63 : 0]    arrayA_3_din0, arrayA_3_din1;
wire    [63 : 0]    arrayA_3_dout0, arrayA_3_dout1;
wire    arrayA_3_ready;
wire    arrayA_3_done;

`AESL_MEM_A_3 `AESL_MEM_INST_A_3(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayA_3_ce0),
    .we0        (arrayA_3_we0),
    .address0   (arrayA_3_address0),
    .din0       (arrayA_3_din0),
    .dout0      (arrayA_3_dout0),
    .ce1        (arrayA_3_ce1),
    .we1        (arrayA_3_we1),
    .address1   (arrayA_3_address1),
    .din1       (arrayA_3_din1),
    .dout1      (arrayA_3_dout1),
    .ready      (arrayA_3_ready),
    .done    (arrayA_3_done)
);

// Assignment between dut and arrayA_3
assign arrayA_3_address0 = A_3_address0;
assign arrayA_3_ce0 = A_3_ce0;
assign A_3_q0 = arrayA_3_dout0;
assign arrayA_3_we0 = 0;
assign arrayA_3_din0 = 0;
assign arrayA_3_we1 = 0;
assign arrayA_3_din1 = 0;
assign arrayA_3_ready=    ready;
assign arrayA_3_done = 0;


//------------------------arrayB_0 Instantiation--------------

// The input and output of arrayB_0
wire    arrayB_0_ce0, arrayB_0_ce1;
wire [8 - 1 : 0]    arrayB_0_we0, arrayB_0_we1;
wire    [0 : 0]    arrayB_0_address0, arrayB_0_address1;
wire    [63 : 0]    arrayB_0_din0, arrayB_0_din1;
wire    [63 : 0]    arrayB_0_dout0, arrayB_0_dout1;
wire    arrayB_0_ready;
wire    arrayB_0_done;

`AESL_MEM_B_0 `AESL_MEM_INST_B_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayB_0_ce0),
    .we0        (arrayB_0_we0),
    .address0   (arrayB_0_address0),
    .din0       (arrayB_0_din0),
    .dout0      (arrayB_0_dout0),
    .ce1        (arrayB_0_ce1),
    .we1        (arrayB_0_we1),
    .address1   (arrayB_0_address1),
    .din1       (arrayB_0_din1),
    .dout1      (arrayB_0_dout1),
    .ready      (arrayB_0_ready),
    .done    (arrayB_0_done)
);

// Assignment between dut and arrayB_0
assign arrayB_0_address0 = B_0_address0;
assign arrayB_0_ce0 = B_0_ce0;
assign B_0_q0 = arrayB_0_dout0;
assign arrayB_0_we0 = 0;
assign arrayB_0_din0 = 0;
assign arrayB_0_we1 = 0;
assign arrayB_0_din1 = 0;
assign arrayB_0_ready=    ready;
assign arrayB_0_done = 0;


//------------------------arrayB_1 Instantiation--------------

// The input and output of arrayB_1
wire    arrayB_1_ce0, arrayB_1_ce1;
wire [8 - 1 : 0]    arrayB_1_we0, arrayB_1_we1;
wire    [0 : 0]    arrayB_1_address0, arrayB_1_address1;
wire    [63 : 0]    arrayB_1_din0, arrayB_1_din1;
wire    [63 : 0]    arrayB_1_dout0, arrayB_1_dout1;
wire    arrayB_1_ready;
wire    arrayB_1_done;

`AESL_MEM_B_1 `AESL_MEM_INST_B_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayB_1_ce0),
    .we0        (arrayB_1_we0),
    .address0   (arrayB_1_address0),
    .din0       (arrayB_1_din0),
    .dout0      (arrayB_1_dout0),
    .ce1        (arrayB_1_ce1),
    .we1        (arrayB_1_we1),
    .address1   (arrayB_1_address1),
    .din1       (arrayB_1_din1),
    .dout1      (arrayB_1_dout1),
    .ready      (arrayB_1_ready),
    .done    (arrayB_1_done)
);

// Assignment between dut and arrayB_1
assign arrayB_1_address0 = B_1_address0;
assign arrayB_1_ce0 = B_1_ce0;
assign B_1_q0 = arrayB_1_dout0;
assign arrayB_1_we0 = 0;
assign arrayB_1_din0 = 0;
assign arrayB_1_we1 = 0;
assign arrayB_1_din1 = 0;
assign arrayB_1_ready=    ready;
assign arrayB_1_done = 0;


//------------------------arrayB_2 Instantiation--------------

// The input and output of arrayB_2
wire    arrayB_2_ce0, arrayB_2_ce1;
wire [8 - 1 : 0]    arrayB_2_we0, arrayB_2_we1;
wire    [0 : 0]    arrayB_2_address0, arrayB_2_address1;
wire    [63 : 0]    arrayB_2_din0, arrayB_2_din1;
wire    [63 : 0]    arrayB_2_dout0, arrayB_2_dout1;
wire    arrayB_2_ready;
wire    arrayB_2_done;

`AESL_MEM_B_2 `AESL_MEM_INST_B_2(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayB_2_ce0),
    .we0        (arrayB_2_we0),
    .address0   (arrayB_2_address0),
    .din0       (arrayB_2_din0),
    .dout0      (arrayB_2_dout0),
    .ce1        (arrayB_2_ce1),
    .we1        (arrayB_2_we1),
    .address1   (arrayB_2_address1),
    .din1       (arrayB_2_din1),
    .dout1      (arrayB_2_dout1),
    .ready      (arrayB_2_ready),
    .done    (arrayB_2_done)
);

// Assignment between dut and arrayB_2
assign arrayB_2_address0 = B_2_address0;
assign arrayB_2_ce0 = B_2_ce0;
assign B_2_q0 = arrayB_2_dout0;
assign arrayB_2_we0 = 0;
assign arrayB_2_din0 = 0;
assign arrayB_2_we1 = 0;
assign arrayB_2_din1 = 0;
assign arrayB_2_ready=    ready;
assign arrayB_2_done = 0;


//------------------------arrayB_3 Instantiation--------------

// The input and output of arrayB_3
wire    arrayB_3_ce0, arrayB_3_ce1;
wire [8 - 1 : 0]    arrayB_3_we0, arrayB_3_we1;
wire    [0 : 0]    arrayB_3_address0, arrayB_3_address1;
wire    [63 : 0]    arrayB_3_din0, arrayB_3_din1;
wire    [63 : 0]    arrayB_3_dout0, arrayB_3_dout1;
wire    arrayB_3_ready;
wire    arrayB_3_done;

`AESL_MEM_B_3 `AESL_MEM_INST_B_3(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayB_3_ce0),
    .we0        (arrayB_3_we0),
    .address0   (arrayB_3_address0),
    .din0       (arrayB_3_din0),
    .dout0      (arrayB_3_dout0),
    .ce1        (arrayB_3_ce1),
    .we1        (arrayB_3_we1),
    .address1   (arrayB_3_address1),
    .din1       (arrayB_3_din1),
    .dout1      (arrayB_3_dout1),
    .ready      (arrayB_3_ready),
    .done    (arrayB_3_done)
);

// Assignment between dut and arrayB_3
assign arrayB_3_address0 = B_3_address0;
assign arrayB_3_ce0 = B_3_ce0;
assign B_3_q0 = arrayB_3_dout0;
assign arrayB_3_we0 = 0;
assign arrayB_3_din0 = 0;
assign arrayB_3_we1 = 0;
assign arrayB_3_din1 = 0;
assign arrayB_3_ready=    ready;
assign arrayB_3_done = 0;


//------------------------arrayC_0 Instantiation--------------

// The input and output of arrayC_0
wire    arrayC_0_ce0, arrayC_0_ce1;
wire [8 - 1 : 0]    arrayC_0_we0, arrayC_0_we1;
wire    [0 : 0]    arrayC_0_address0, arrayC_0_address1;
wire    [63 : 0]    arrayC_0_din0, arrayC_0_din1;
wire    [63 : 0]    arrayC_0_dout0, arrayC_0_dout1;
wire    arrayC_0_ready;
wire    arrayC_0_done;

`AESL_MEM_C_0 `AESL_MEM_INST_C_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayC_0_ce0),
    .we0        (arrayC_0_we0),
    .address0   (arrayC_0_address0),
    .din0       (arrayC_0_din0),
    .dout0      (arrayC_0_dout0),
    .ce1        (arrayC_0_ce1),
    .we1        (arrayC_0_we1),
    .address1   (arrayC_0_address1),
    .din1       (arrayC_0_din1),
    .dout1      (arrayC_0_dout1),
    .ready      (arrayC_0_ready),
    .done    (arrayC_0_done)
);

// Assignment between dut and arrayC_0
assign arrayC_0_address0 = C_0_address0;
assign arrayC_0_ce0 = C_0_ce0;
assign C_0_q0 = arrayC_0_dout0;
assign arrayC_0_we0 = 0;
assign arrayC_0_din0 = 0;
assign arrayC_0_we1 = 0;
assign arrayC_0_din1 = 0;
assign arrayC_0_ready=    ready;
assign arrayC_0_done = 0;


//------------------------arrayC_1 Instantiation--------------

// The input and output of arrayC_1
wire    arrayC_1_ce0, arrayC_1_ce1;
wire [8 - 1 : 0]    arrayC_1_we0, arrayC_1_we1;
wire    [0 : 0]    arrayC_1_address0, arrayC_1_address1;
wire    [63 : 0]    arrayC_1_din0, arrayC_1_din1;
wire    [63 : 0]    arrayC_1_dout0, arrayC_1_dout1;
wire    arrayC_1_ready;
wire    arrayC_1_done;

`AESL_MEM_C_1 `AESL_MEM_INST_C_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayC_1_ce0),
    .we0        (arrayC_1_we0),
    .address0   (arrayC_1_address0),
    .din0       (arrayC_1_din0),
    .dout0      (arrayC_1_dout0),
    .ce1        (arrayC_1_ce1),
    .we1        (arrayC_1_we1),
    .address1   (arrayC_1_address1),
    .din1       (arrayC_1_din1),
    .dout1      (arrayC_1_dout1),
    .ready      (arrayC_1_ready),
    .done    (arrayC_1_done)
);

// Assignment between dut and arrayC_1
assign arrayC_1_address0 = C_1_address0;
assign arrayC_1_ce0 = C_1_ce0;
assign C_1_q0 = arrayC_1_dout0;
assign arrayC_1_we0 = 0;
assign arrayC_1_din0 = 0;
assign arrayC_1_we1 = 0;
assign arrayC_1_din1 = 0;
assign arrayC_1_ready=    ready;
assign arrayC_1_done = 0;


//------------------------arrayC_2 Instantiation--------------

// The input and output of arrayC_2
wire    arrayC_2_ce0, arrayC_2_ce1;
wire [8 - 1 : 0]    arrayC_2_we0, arrayC_2_we1;
wire    [0 : 0]    arrayC_2_address0, arrayC_2_address1;
wire    [63 : 0]    arrayC_2_din0, arrayC_2_din1;
wire    [63 : 0]    arrayC_2_dout0, arrayC_2_dout1;
wire    arrayC_2_ready;
wire    arrayC_2_done;

`AESL_MEM_C_2 `AESL_MEM_INST_C_2(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayC_2_ce0),
    .we0        (arrayC_2_we0),
    .address0   (arrayC_2_address0),
    .din0       (arrayC_2_din0),
    .dout0      (arrayC_2_dout0),
    .ce1        (arrayC_2_ce1),
    .we1        (arrayC_2_we1),
    .address1   (arrayC_2_address1),
    .din1       (arrayC_2_din1),
    .dout1      (arrayC_2_dout1),
    .ready      (arrayC_2_ready),
    .done    (arrayC_2_done)
);

// Assignment between dut and arrayC_2
assign arrayC_2_address0 = C_2_address0;
assign arrayC_2_ce0 = C_2_ce0;
assign C_2_q0 = arrayC_2_dout0;
assign arrayC_2_we0 = 0;
assign arrayC_2_din0 = 0;
assign arrayC_2_we1 = 0;
assign arrayC_2_din1 = 0;
assign arrayC_2_ready=    ready;
assign arrayC_2_done = 0;


//------------------------arrayC_3 Instantiation--------------

// The input and output of arrayC_3
wire    arrayC_3_ce0, arrayC_3_ce1;
wire [8 - 1 : 0]    arrayC_3_we0, arrayC_3_we1;
wire    [0 : 0]    arrayC_3_address0, arrayC_3_address1;
wire    [63 : 0]    arrayC_3_din0, arrayC_3_din1;
wire    [63 : 0]    arrayC_3_dout0, arrayC_3_dout1;
wire    arrayC_3_ready;
wire    arrayC_3_done;

`AESL_MEM_C_3 `AESL_MEM_INST_C_3(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayC_3_ce0),
    .we0        (arrayC_3_we0),
    .address0   (arrayC_3_address0),
    .din0       (arrayC_3_din0),
    .dout0      (arrayC_3_dout0),
    .ce1        (arrayC_3_ce1),
    .we1        (arrayC_3_we1),
    .address1   (arrayC_3_address1),
    .din1       (arrayC_3_din1),
    .dout1      (arrayC_3_dout1),
    .ready      (arrayC_3_ready),
    .done    (arrayC_3_done)
);

// Assignment between dut and arrayC_3
assign arrayC_3_address0 = C_3_address0;
assign arrayC_3_ce0 = C_3_ce0;
assign C_3_q0 = arrayC_3_dout0;
assign arrayC_3_we0 = 0;
assign arrayC_3_din0 = 0;
assign arrayC_3_we1 = 0;
assign arrayC_3_din1 = 0;
assign arrayC_3_ready=    ready;
assign arrayC_3_done = 0;


//------------------------arrayX1_0 Instantiation--------------

// The input and output of arrayX1_0
wire    arrayX1_0_ce0, arrayX1_0_ce1;
wire [8 - 1 : 0]    arrayX1_0_we0, arrayX1_0_we1;
wire    [0 : 0]    arrayX1_0_address0, arrayX1_0_address1;
wire    [63 : 0]    arrayX1_0_din0, arrayX1_0_din1;
wire    [63 : 0]    arrayX1_0_dout0, arrayX1_0_dout1;
wire    arrayX1_0_ready;
wire    arrayX1_0_done;

`AESL_MEM_X1_0 `AESL_MEM_INST_X1_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX1_0_ce0),
    .we0        (arrayX1_0_we0),
    .address0   (arrayX1_0_address0),
    .din0       (arrayX1_0_din0),
    .dout0      (arrayX1_0_dout0),
    .ce1        (arrayX1_0_ce1),
    .we1        (arrayX1_0_we1),
    .address1   (arrayX1_0_address1),
    .din1       (arrayX1_0_din1),
    .dout1      (arrayX1_0_dout1),
    .ready      (arrayX1_0_ready),
    .done    (arrayX1_0_done)
);

// Assignment between dut and arrayX1_0
assign arrayX1_0_address0 = X1_0_address0;
assign arrayX1_0_ce0 = X1_0_ce0;
assign arrayX1_0_we0[0] = X1_0_we0;
assign arrayX1_0_we0[1] = X1_0_we0;
assign arrayX1_0_we0[2] = X1_0_we0;
assign arrayX1_0_we0[3] = X1_0_we0;
assign arrayX1_0_we0[4] = X1_0_we0;
assign arrayX1_0_we0[5] = X1_0_we0;
assign arrayX1_0_we0[6] = X1_0_we0;
assign arrayX1_0_we0[7] = X1_0_we0;
assign arrayX1_0_din0 = X1_0_d0;
assign arrayX1_0_we1 = 0;
assign arrayX1_0_din1 = 0;
assign arrayX1_0_ready= ready_initial | arrayX1_0_done;
assign arrayX1_0_done =    AESL_done_delay;


//------------------------arrayX1_1 Instantiation--------------

// The input and output of arrayX1_1
wire    arrayX1_1_ce0, arrayX1_1_ce1;
wire [8 - 1 : 0]    arrayX1_1_we0, arrayX1_1_we1;
wire    [0 : 0]    arrayX1_1_address0, arrayX1_1_address1;
wire    [63 : 0]    arrayX1_1_din0, arrayX1_1_din1;
wire    [63 : 0]    arrayX1_1_dout0, arrayX1_1_dout1;
wire    arrayX1_1_ready;
wire    arrayX1_1_done;

`AESL_MEM_X1_1 `AESL_MEM_INST_X1_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX1_1_ce0),
    .we0        (arrayX1_1_we0),
    .address0   (arrayX1_1_address0),
    .din0       (arrayX1_1_din0),
    .dout0      (arrayX1_1_dout0),
    .ce1        (arrayX1_1_ce1),
    .we1        (arrayX1_1_we1),
    .address1   (arrayX1_1_address1),
    .din1       (arrayX1_1_din1),
    .dout1      (arrayX1_1_dout1),
    .ready      (arrayX1_1_ready),
    .done    (arrayX1_1_done)
);

// Assignment between dut and arrayX1_1
assign arrayX1_1_address0 = X1_1_address0;
assign arrayX1_1_ce0 = X1_1_ce0;
assign arrayX1_1_we0[0] = X1_1_we0;
assign arrayX1_1_we0[1] = X1_1_we0;
assign arrayX1_1_we0[2] = X1_1_we0;
assign arrayX1_1_we0[3] = X1_1_we0;
assign arrayX1_1_we0[4] = X1_1_we0;
assign arrayX1_1_we0[5] = X1_1_we0;
assign arrayX1_1_we0[6] = X1_1_we0;
assign arrayX1_1_we0[7] = X1_1_we0;
assign arrayX1_1_din0 = X1_1_d0;
assign arrayX1_1_we1 = 0;
assign arrayX1_1_din1 = 0;
assign arrayX1_1_ready= ready_initial | arrayX1_1_done;
assign arrayX1_1_done =    AESL_done_delay;


//------------------------arrayX1_2 Instantiation--------------

// The input and output of arrayX1_2
wire    arrayX1_2_ce0, arrayX1_2_ce1;
wire [8 - 1 : 0]    arrayX1_2_we0, arrayX1_2_we1;
wire    [0 : 0]    arrayX1_2_address0, arrayX1_2_address1;
wire    [63 : 0]    arrayX1_2_din0, arrayX1_2_din1;
wire    [63 : 0]    arrayX1_2_dout0, arrayX1_2_dout1;
wire    arrayX1_2_ready;
wire    arrayX1_2_done;

`AESL_MEM_X1_2 `AESL_MEM_INST_X1_2(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX1_2_ce0),
    .we0        (arrayX1_2_we0),
    .address0   (arrayX1_2_address0),
    .din0       (arrayX1_2_din0),
    .dout0      (arrayX1_2_dout0),
    .ce1        (arrayX1_2_ce1),
    .we1        (arrayX1_2_we1),
    .address1   (arrayX1_2_address1),
    .din1       (arrayX1_2_din1),
    .dout1      (arrayX1_2_dout1),
    .ready      (arrayX1_2_ready),
    .done    (arrayX1_2_done)
);

// Assignment between dut and arrayX1_2
assign arrayX1_2_address0 = X1_2_address0;
assign arrayX1_2_ce0 = X1_2_ce0;
assign arrayX1_2_we0[0] = X1_2_we0;
assign arrayX1_2_we0[1] = X1_2_we0;
assign arrayX1_2_we0[2] = X1_2_we0;
assign arrayX1_2_we0[3] = X1_2_we0;
assign arrayX1_2_we0[4] = X1_2_we0;
assign arrayX1_2_we0[5] = X1_2_we0;
assign arrayX1_2_we0[6] = X1_2_we0;
assign arrayX1_2_we0[7] = X1_2_we0;
assign arrayX1_2_din0 = X1_2_d0;
assign arrayX1_2_we1 = 0;
assign arrayX1_2_din1 = 0;
assign arrayX1_2_ready= ready_initial | arrayX1_2_done;
assign arrayX1_2_done =    AESL_done_delay;


//------------------------arrayX1_3 Instantiation--------------

// The input and output of arrayX1_3
wire    arrayX1_3_ce0, arrayX1_3_ce1;
wire [8 - 1 : 0]    arrayX1_3_we0, arrayX1_3_we1;
wire    [0 : 0]    arrayX1_3_address0, arrayX1_3_address1;
wire    [63 : 0]    arrayX1_3_din0, arrayX1_3_din1;
wire    [63 : 0]    arrayX1_3_dout0, arrayX1_3_dout1;
wire    arrayX1_3_ready;
wire    arrayX1_3_done;

`AESL_MEM_X1_3 `AESL_MEM_INST_X1_3(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX1_3_ce0),
    .we0        (arrayX1_3_we0),
    .address0   (arrayX1_3_address0),
    .din0       (arrayX1_3_din0),
    .dout0      (arrayX1_3_dout0),
    .ce1        (arrayX1_3_ce1),
    .we1        (arrayX1_3_we1),
    .address1   (arrayX1_3_address1),
    .din1       (arrayX1_3_din1),
    .dout1      (arrayX1_3_dout1),
    .ready      (arrayX1_3_ready),
    .done    (arrayX1_3_done)
);

// Assignment between dut and arrayX1_3
assign arrayX1_3_address0 = X1_3_address0;
assign arrayX1_3_ce0 = X1_3_ce0;
assign arrayX1_3_we0[0] = X1_3_we0;
assign arrayX1_3_we0[1] = X1_3_we0;
assign arrayX1_3_we0[2] = X1_3_we0;
assign arrayX1_3_we0[3] = X1_3_we0;
assign arrayX1_3_we0[4] = X1_3_we0;
assign arrayX1_3_we0[5] = X1_3_we0;
assign arrayX1_3_we0[6] = X1_3_we0;
assign arrayX1_3_we0[7] = X1_3_we0;
assign arrayX1_3_din0 = X1_3_d0;
assign arrayX1_3_we1 = 0;
assign arrayX1_3_din1 = 0;
assign arrayX1_3_ready= ready_initial | arrayX1_3_done;
assign arrayX1_3_done =    AESL_done_delay;


//------------------------arrayX2_0 Instantiation--------------

// The input and output of arrayX2_0
wire    arrayX2_0_ce0, arrayX2_0_ce1;
wire [8 - 1 : 0]    arrayX2_0_we0, arrayX2_0_we1;
wire    [0 : 0]    arrayX2_0_address0, arrayX2_0_address1;
wire    [63 : 0]    arrayX2_0_din0, arrayX2_0_din1;
wire    [63 : 0]    arrayX2_0_dout0, arrayX2_0_dout1;
wire    arrayX2_0_ready;
wire    arrayX2_0_done;

`AESL_MEM_X2_0 `AESL_MEM_INST_X2_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX2_0_ce0),
    .we0        (arrayX2_0_we0),
    .address0   (arrayX2_0_address0),
    .din0       (arrayX2_0_din0),
    .dout0      (arrayX2_0_dout0),
    .ce1        (arrayX2_0_ce1),
    .we1        (arrayX2_0_we1),
    .address1   (arrayX2_0_address1),
    .din1       (arrayX2_0_din1),
    .dout1      (arrayX2_0_dout1),
    .ready      (arrayX2_0_ready),
    .done    (arrayX2_0_done)
);

// Assignment between dut and arrayX2_0
assign arrayX2_0_address0 = X2_0_address0;
assign arrayX2_0_ce0 = X2_0_ce0;
assign arrayX2_0_we0[0] = X2_0_we0;
assign arrayX2_0_we0[1] = X2_0_we0;
assign arrayX2_0_we0[2] = X2_0_we0;
assign arrayX2_0_we0[3] = X2_0_we0;
assign arrayX2_0_we0[4] = X2_0_we0;
assign arrayX2_0_we0[5] = X2_0_we0;
assign arrayX2_0_we0[6] = X2_0_we0;
assign arrayX2_0_we0[7] = X2_0_we0;
assign arrayX2_0_din0 = X2_0_d0;
assign arrayX2_0_we1 = 0;
assign arrayX2_0_din1 = 0;
assign arrayX2_0_ready= ready_initial | arrayX2_0_done;
assign arrayX2_0_done =    AESL_done_delay;


//------------------------arrayX2_1 Instantiation--------------

// The input and output of arrayX2_1
wire    arrayX2_1_ce0, arrayX2_1_ce1;
wire [8 - 1 : 0]    arrayX2_1_we0, arrayX2_1_we1;
wire    [0 : 0]    arrayX2_1_address0, arrayX2_1_address1;
wire    [63 : 0]    arrayX2_1_din0, arrayX2_1_din1;
wire    [63 : 0]    arrayX2_1_dout0, arrayX2_1_dout1;
wire    arrayX2_1_ready;
wire    arrayX2_1_done;

`AESL_MEM_X2_1 `AESL_MEM_INST_X2_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX2_1_ce0),
    .we0        (arrayX2_1_we0),
    .address0   (arrayX2_1_address0),
    .din0       (arrayX2_1_din0),
    .dout0      (arrayX2_1_dout0),
    .ce1        (arrayX2_1_ce1),
    .we1        (arrayX2_1_we1),
    .address1   (arrayX2_1_address1),
    .din1       (arrayX2_1_din1),
    .dout1      (arrayX2_1_dout1),
    .ready      (arrayX2_1_ready),
    .done    (arrayX2_1_done)
);

// Assignment between dut and arrayX2_1
assign arrayX2_1_address0 = X2_1_address0;
assign arrayX2_1_ce0 = X2_1_ce0;
assign arrayX2_1_we0[0] = X2_1_we0;
assign arrayX2_1_we0[1] = X2_1_we0;
assign arrayX2_1_we0[2] = X2_1_we0;
assign arrayX2_1_we0[3] = X2_1_we0;
assign arrayX2_1_we0[4] = X2_1_we0;
assign arrayX2_1_we0[5] = X2_1_we0;
assign arrayX2_1_we0[6] = X2_1_we0;
assign arrayX2_1_we0[7] = X2_1_we0;
assign arrayX2_1_din0 = X2_1_d0;
assign arrayX2_1_we1 = 0;
assign arrayX2_1_din1 = 0;
assign arrayX2_1_ready= ready_initial | arrayX2_1_done;
assign arrayX2_1_done =    AESL_done_delay;


//------------------------arrayX2_2 Instantiation--------------

// The input and output of arrayX2_2
wire    arrayX2_2_ce0, arrayX2_2_ce1;
wire [8 - 1 : 0]    arrayX2_2_we0, arrayX2_2_we1;
wire    [0 : 0]    arrayX2_2_address0, arrayX2_2_address1;
wire    [63 : 0]    arrayX2_2_din0, arrayX2_2_din1;
wire    [63 : 0]    arrayX2_2_dout0, arrayX2_2_dout1;
wire    arrayX2_2_ready;
wire    arrayX2_2_done;

`AESL_MEM_X2_2 `AESL_MEM_INST_X2_2(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX2_2_ce0),
    .we0        (arrayX2_2_we0),
    .address0   (arrayX2_2_address0),
    .din0       (arrayX2_2_din0),
    .dout0      (arrayX2_2_dout0),
    .ce1        (arrayX2_2_ce1),
    .we1        (arrayX2_2_we1),
    .address1   (arrayX2_2_address1),
    .din1       (arrayX2_2_din1),
    .dout1      (arrayX2_2_dout1),
    .ready      (arrayX2_2_ready),
    .done    (arrayX2_2_done)
);

// Assignment between dut and arrayX2_2
assign arrayX2_2_address0 = X2_2_address0;
assign arrayX2_2_ce0 = X2_2_ce0;
assign arrayX2_2_we0[0] = X2_2_we0;
assign arrayX2_2_we0[1] = X2_2_we0;
assign arrayX2_2_we0[2] = X2_2_we0;
assign arrayX2_2_we0[3] = X2_2_we0;
assign arrayX2_2_we0[4] = X2_2_we0;
assign arrayX2_2_we0[5] = X2_2_we0;
assign arrayX2_2_we0[6] = X2_2_we0;
assign arrayX2_2_we0[7] = X2_2_we0;
assign arrayX2_2_din0 = X2_2_d0;
assign arrayX2_2_we1 = 0;
assign arrayX2_2_din1 = 0;
assign arrayX2_2_ready= ready_initial | arrayX2_2_done;
assign arrayX2_2_done =    AESL_done_delay;


//------------------------arrayX2_3 Instantiation--------------

// The input and output of arrayX2_3
wire    arrayX2_3_ce0, arrayX2_3_ce1;
wire [8 - 1 : 0]    arrayX2_3_we0, arrayX2_3_we1;
wire    [0 : 0]    arrayX2_3_address0, arrayX2_3_address1;
wire    [63 : 0]    arrayX2_3_din0, arrayX2_3_din1;
wire    [63 : 0]    arrayX2_3_dout0, arrayX2_3_dout1;
wire    arrayX2_3_ready;
wire    arrayX2_3_done;

`AESL_MEM_X2_3 `AESL_MEM_INST_X2_3(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX2_3_ce0),
    .we0        (arrayX2_3_we0),
    .address0   (arrayX2_3_address0),
    .din0       (arrayX2_3_din0),
    .dout0      (arrayX2_3_dout0),
    .ce1        (arrayX2_3_ce1),
    .we1        (arrayX2_3_we1),
    .address1   (arrayX2_3_address1),
    .din1       (arrayX2_3_din1),
    .dout1      (arrayX2_3_dout1),
    .ready      (arrayX2_3_ready),
    .done    (arrayX2_3_done)
);

// Assignment between dut and arrayX2_3
assign arrayX2_3_address0 = X2_3_address0;
assign arrayX2_3_ce0 = X2_3_ce0;
assign arrayX2_3_we0[0] = X2_3_we0;
assign arrayX2_3_we0[1] = X2_3_we0;
assign arrayX2_3_we0[2] = X2_3_we0;
assign arrayX2_3_we0[3] = X2_3_we0;
assign arrayX2_3_we0[4] = X2_3_we0;
assign arrayX2_3_we0[5] = X2_3_we0;
assign arrayX2_3_we0[6] = X2_3_we0;
assign arrayX2_3_we0[7] = X2_3_we0;
assign arrayX2_3_din0 = X2_3_d0;
assign arrayX2_3_we1 = 0;
assign arrayX2_3_din1 = 0;
assign arrayX2_3_ready= ready_initial | arrayX2_3_done;
assign arrayX2_3_done =    AESL_done_delay;


//------------------------arrayD_0 Instantiation--------------

// The input and output of arrayD_0
wire    arrayD_0_ce0, arrayD_0_ce1;
wire [8 - 1 : 0]    arrayD_0_we0, arrayD_0_we1;
wire    [0 : 0]    arrayD_0_address0, arrayD_0_address1;
wire    [63 : 0]    arrayD_0_din0, arrayD_0_din1;
wire    [63 : 0]    arrayD_0_dout0, arrayD_0_dout1;
wire    arrayD_0_ready;
wire    arrayD_0_done;

`AESL_MEM_D_0 `AESL_MEM_INST_D_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayD_0_ce0),
    .we0        (arrayD_0_we0),
    .address0   (arrayD_0_address0),
    .din0       (arrayD_0_din0),
    .dout0      (arrayD_0_dout0),
    .ce1        (arrayD_0_ce1),
    .we1        (arrayD_0_we1),
    .address1   (arrayD_0_address1),
    .din1       (arrayD_0_din1),
    .dout1      (arrayD_0_dout1),
    .ready      (arrayD_0_ready),
    .done    (arrayD_0_done)
);

// Assignment between dut and arrayD_0
assign arrayD_0_address0 = D_0_address0;
assign arrayD_0_ce0 = D_0_ce0;
assign arrayD_0_we0[0] = D_0_we0;
assign arrayD_0_we0[1] = D_0_we0;
assign arrayD_0_we0[2] = D_0_we0;
assign arrayD_0_we0[3] = D_0_we0;
assign arrayD_0_we0[4] = D_0_we0;
assign arrayD_0_we0[5] = D_0_we0;
assign arrayD_0_we0[6] = D_0_we0;
assign arrayD_0_we0[7] = D_0_we0;
assign arrayD_0_din0 = D_0_d0;
assign arrayD_0_we1 = 0;
assign arrayD_0_din1 = 0;
assign arrayD_0_ready= ready_initial | arrayD_0_done;
assign arrayD_0_done =    AESL_done_delay;


//------------------------arrayD_1 Instantiation--------------

// The input and output of arrayD_1
wire    arrayD_1_ce0, arrayD_1_ce1;
wire [8 - 1 : 0]    arrayD_1_we0, arrayD_1_we1;
wire    [0 : 0]    arrayD_1_address0, arrayD_1_address1;
wire    [63 : 0]    arrayD_1_din0, arrayD_1_din1;
wire    [63 : 0]    arrayD_1_dout0, arrayD_1_dout1;
wire    arrayD_1_ready;
wire    arrayD_1_done;

`AESL_MEM_D_1 `AESL_MEM_INST_D_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayD_1_ce0),
    .we0        (arrayD_1_we0),
    .address0   (arrayD_1_address0),
    .din0       (arrayD_1_din0),
    .dout0      (arrayD_1_dout0),
    .ce1        (arrayD_1_ce1),
    .we1        (arrayD_1_we1),
    .address1   (arrayD_1_address1),
    .din1       (arrayD_1_din1),
    .dout1      (arrayD_1_dout1),
    .ready      (arrayD_1_ready),
    .done    (arrayD_1_done)
);

// Assignment between dut and arrayD_1
assign arrayD_1_address0 = D_1_address0;
assign arrayD_1_ce0 = D_1_ce0;
assign arrayD_1_we0[0] = D_1_we0;
assign arrayD_1_we0[1] = D_1_we0;
assign arrayD_1_we0[2] = D_1_we0;
assign arrayD_1_we0[3] = D_1_we0;
assign arrayD_1_we0[4] = D_1_we0;
assign arrayD_1_we0[5] = D_1_we0;
assign arrayD_1_we0[6] = D_1_we0;
assign arrayD_1_we0[7] = D_1_we0;
assign arrayD_1_din0 = D_1_d0;
assign arrayD_1_we1 = 0;
assign arrayD_1_din1 = 0;
assign arrayD_1_ready= ready_initial | arrayD_1_done;
assign arrayD_1_done =    AESL_done_delay;


//------------------------arrayD_2 Instantiation--------------

// The input and output of arrayD_2
wire    arrayD_2_ce0, arrayD_2_ce1;
wire [8 - 1 : 0]    arrayD_2_we0, arrayD_2_we1;
wire    [0 : 0]    arrayD_2_address0, arrayD_2_address1;
wire    [63 : 0]    arrayD_2_din0, arrayD_2_din1;
wire    [63 : 0]    arrayD_2_dout0, arrayD_2_dout1;
wire    arrayD_2_ready;
wire    arrayD_2_done;

`AESL_MEM_D_2 `AESL_MEM_INST_D_2(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayD_2_ce0),
    .we0        (arrayD_2_we0),
    .address0   (arrayD_2_address0),
    .din0       (arrayD_2_din0),
    .dout0      (arrayD_2_dout0),
    .ce1        (arrayD_2_ce1),
    .we1        (arrayD_2_we1),
    .address1   (arrayD_2_address1),
    .din1       (arrayD_2_din1),
    .dout1      (arrayD_2_dout1),
    .ready      (arrayD_2_ready),
    .done    (arrayD_2_done)
);

// Assignment between dut and arrayD_2
assign arrayD_2_address0 = D_2_address0;
assign arrayD_2_ce0 = D_2_ce0;
assign arrayD_2_we0[0] = D_2_we0;
assign arrayD_2_we0[1] = D_2_we0;
assign arrayD_2_we0[2] = D_2_we0;
assign arrayD_2_we0[3] = D_2_we0;
assign arrayD_2_we0[4] = D_2_we0;
assign arrayD_2_we0[5] = D_2_we0;
assign arrayD_2_we0[6] = D_2_we0;
assign arrayD_2_we0[7] = D_2_we0;
assign arrayD_2_din0 = D_2_d0;
assign arrayD_2_we1 = 0;
assign arrayD_2_din1 = 0;
assign arrayD_2_ready= ready_initial | arrayD_2_done;
assign arrayD_2_done =    AESL_done_delay;


//------------------------arrayD_3 Instantiation--------------

// The input and output of arrayD_3
wire    arrayD_3_ce0, arrayD_3_ce1;
wire [8 - 1 : 0]    arrayD_3_we0, arrayD_3_we1;
wire    [0 : 0]    arrayD_3_address0, arrayD_3_address1;
wire    [63 : 0]    arrayD_3_din0, arrayD_3_din1;
wire    [63 : 0]    arrayD_3_dout0, arrayD_3_dout1;
wire    arrayD_3_ready;
wire    arrayD_3_done;

`AESL_MEM_D_3 `AESL_MEM_INST_D_3(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayD_3_ce0),
    .we0        (arrayD_3_we0),
    .address0   (arrayD_3_address0),
    .din0       (arrayD_3_din0),
    .dout0      (arrayD_3_dout0),
    .ce1        (arrayD_3_ce1),
    .we1        (arrayD_3_we1),
    .address1   (arrayD_3_address1),
    .din1       (arrayD_3_din1),
    .dout1      (arrayD_3_dout1),
    .ready      (arrayD_3_ready),
    .done    (arrayD_3_done)
);

// Assignment between dut and arrayD_3
assign arrayD_3_address0 = D_3_address0;
assign arrayD_3_ce0 = D_3_ce0;
assign arrayD_3_we0[0] = D_3_we0;
assign arrayD_3_we0[1] = D_3_we0;
assign arrayD_3_we0[2] = D_3_we0;
assign arrayD_3_we0[3] = D_3_we0;
assign arrayD_3_we0[4] = D_3_we0;
assign arrayD_3_we0[5] = D_3_we0;
assign arrayD_3_we0[6] = D_3_we0;
assign arrayD_3_we0[7] = D_3_we0;
assign arrayD_3_din0 = D_3_d0;
assign arrayD_3_we1 = 0;
assign arrayD_3_din1 = 0;
assign arrayD_3_ready= ready_initial | arrayD_3_done;
assign arrayD_3_done =    AESL_done_delay;


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

reg dump_tvout_finish_X1_0;

initial begin : dump_tvout_runtime_sign_X1_0
    integer fp;
    dump_tvout_finish_X1_0 = 0;
    fp = $fopen(`AUTOTB_TVOUT_X1_0_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X1_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_X1_0_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X1_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_X1_0 = 1;
end


reg dump_tvout_finish_X1_1;

initial begin : dump_tvout_runtime_sign_X1_1
    integer fp;
    dump_tvout_finish_X1_1 = 0;
    fp = $fopen(`AUTOTB_TVOUT_X1_1_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X1_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_X1_1_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X1_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_X1_1 = 1;
end


reg dump_tvout_finish_X1_2;

initial begin : dump_tvout_runtime_sign_X1_2
    integer fp;
    dump_tvout_finish_X1_2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_X1_2_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X1_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_X1_2_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X1_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_X1_2 = 1;
end


reg dump_tvout_finish_X1_3;

initial begin : dump_tvout_runtime_sign_X1_3
    integer fp;
    dump_tvout_finish_X1_3 = 0;
    fp = $fopen(`AUTOTB_TVOUT_X1_3_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X1_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_X1_3_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X1_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_X1_3 = 1;
end


reg dump_tvout_finish_X2_0;

initial begin : dump_tvout_runtime_sign_X2_0
    integer fp;
    dump_tvout_finish_X2_0 = 0;
    fp = $fopen(`AUTOTB_TVOUT_X2_0_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X2_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_X2_0_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X2_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_X2_0 = 1;
end


reg dump_tvout_finish_X2_1;

initial begin : dump_tvout_runtime_sign_X2_1
    integer fp;
    dump_tvout_finish_X2_1 = 0;
    fp = $fopen(`AUTOTB_TVOUT_X2_1_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X2_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_X2_1_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X2_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_X2_1 = 1;
end


reg dump_tvout_finish_X2_2;

initial begin : dump_tvout_runtime_sign_X2_2
    integer fp;
    dump_tvout_finish_X2_2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_X2_2_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X2_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_X2_2_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X2_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_X2_2 = 1;
end


reg dump_tvout_finish_X2_3;

initial begin : dump_tvout_runtime_sign_X2_3
    integer fp;
    dump_tvout_finish_X2_3 = 0;
    fp = $fopen(`AUTOTB_TVOUT_X2_3_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X2_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_X2_3_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X2_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_X2_3 = 1;
end


reg dump_tvout_finish_D_0;

initial begin : dump_tvout_runtime_sign_D_0
    integer fp;
    dump_tvout_finish_D_0 = 0;
    fp = $fopen(`AUTOTB_TVOUT_D_0_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_D_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_D_0_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_D_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_D_0 = 1;
end


reg dump_tvout_finish_D_1;

initial begin : dump_tvout_runtime_sign_D_1
    integer fp;
    dump_tvout_finish_D_1 = 0;
    fp = $fopen(`AUTOTB_TVOUT_D_1_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_D_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_D_1_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_D_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_D_1 = 1;
end


reg dump_tvout_finish_D_2;

initial begin : dump_tvout_runtime_sign_D_2
    integer fp;
    dump_tvout_finish_D_2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_D_2_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_D_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_D_2_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_D_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_D_2 = 1;
end


reg dump_tvout_finish_D_3;

initial begin : dump_tvout_runtime_sign_D_3
    integer fp;
    dump_tvout_finish_D_3 = 0;
    fp = $fopen(`AUTOTB_TVOUT_D_3_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_D_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_D_3_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_D_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_D_3 = 1;
end


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
