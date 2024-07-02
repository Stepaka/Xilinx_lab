// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      kp_502_15
`define AUTOTB_DUT_INST AESL_inst_kp_502_15
`define AUTOTB_TOP      apatb_kp_502_15_top
`define AUTOTB_LAT_RESULT_FILE "kp_502_15.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "kp_502_15.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_kp_502_15_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 7.00

`define AESL_DEPTH_r_0 1
`define AESL_DEPTH_r_1 1
`define AESL_DEPTH_r_2 1
`define AESL_DEPTH_r_3 1
`define AESL_DEPTH_r_4 1
`define AESL_DEPTH_r_5 1
`define AESL_DEPTH_r_6 1
`define AESL_DEPTH_r_7 1
`define AESL_DEPTH_a_0 1
`define AESL_DEPTH_a_1 1
`define AESL_DEPTH_a_2 1
`define AESL_DEPTH_a_3 1
`define AESL_DEPTH_a_4 1
`define AESL_DEPTH_a_5 1
`define AESL_DEPTH_a_6 1
`define AESL_DEPTH_a_7 1
`define AESL_DEPTH_b_0 1
`define AESL_DEPTH_b_1 1
`define AESL_DEPTH_b_2 1
`define AESL_DEPTH_b_3 1
`define AESL_DEPTH_b_4 1
`define AESL_DEPTH_b_5 1
`define AESL_DEPTH_b_6 1
`define AESL_DEPTH_b_7 1
`define AESL_DEPTH_c_0 1
`define AESL_DEPTH_c_1 1
`define AESL_DEPTH_c_2 1
`define AESL_DEPTH_c_3 1
`define AESL_DEPTH_c_4 1
`define AESL_DEPTH_c_5 1
`define AESL_DEPTH_c_6 1
`define AESL_DEPTH_c_7 1
`define AESL_DEPTH_x_0 1
`define AESL_DEPTH_x_1 1
`define AESL_DEPTH_x_2 1
`define AESL_DEPTH_x_3 1
`define AESL_DEPTH_x_4 1
`define AESL_DEPTH_x_5 1
`define AESL_DEPTH_x_6 1
`define AESL_DEPTH_x_7 1
`define AUTOTB_TVIN_a_0  "../tv/cdatafile/c.kp_502_15.autotvin_a_0.dat"
`define AUTOTB_TVIN_a_1  "../tv/cdatafile/c.kp_502_15.autotvin_a_1.dat"
`define AUTOTB_TVIN_a_2  "../tv/cdatafile/c.kp_502_15.autotvin_a_2.dat"
`define AUTOTB_TVIN_a_3  "../tv/cdatafile/c.kp_502_15.autotvin_a_3.dat"
`define AUTOTB_TVIN_a_4  "../tv/cdatafile/c.kp_502_15.autotvin_a_4.dat"
`define AUTOTB_TVIN_a_5  "../tv/cdatafile/c.kp_502_15.autotvin_a_5.dat"
`define AUTOTB_TVIN_a_6  "../tv/cdatafile/c.kp_502_15.autotvin_a_6.dat"
`define AUTOTB_TVIN_a_7  "../tv/cdatafile/c.kp_502_15.autotvin_a_7.dat"
`define AUTOTB_TVIN_b_0  "../tv/cdatafile/c.kp_502_15.autotvin_b_0.dat"
`define AUTOTB_TVIN_b_1  "../tv/cdatafile/c.kp_502_15.autotvin_b_1.dat"
`define AUTOTB_TVIN_b_2  "../tv/cdatafile/c.kp_502_15.autotvin_b_2.dat"
`define AUTOTB_TVIN_b_3  "../tv/cdatafile/c.kp_502_15.autotvin_b_3.dat"
`define AUTOTB_TVIN_b_4  "../tv/cdatafile/c.kp_502_15.autotvin_b_4.dat"
`define AUTOTB_TVIN_b_5  "../tv/cdatafile/c.kp_502_15.autotvin_b_5.dat"
`define AUTOTB_TVIN_b_6  "../tv/cdatafile/c.kp_502_15.autotvin_b_6.dat"
`define AUTOTB_TVIN_b_7  "../tv/cdatafile/c.kp_502_15.autotvin_b_7.dat"
`define AUTOTB_TVIN_c_0  "../tv/cdatafile/c.kp_502_15.autotvin_c_0.dat"
`define AUTOTB_TVIN_c_1  "../tv/cdatafile/c.kp_502_15.autotvin_c_1.dat"
`define AUTOTB_TVIN_c_2  "../tv/cdatafile/c.kp_502_15.autotvin_c_2.dat"
`define AUTOTB_TVIN_c_3  "../tv/cdatafile/c.kp_502_15.autotvin_c_3.dat"
`define AUTOTB_TVIN_c_4  "../tv/cdatafile/c.kp_502_15.autotvin_c_4.dat"
`define AUTOTB_TVIN_c_5  "../tv/cdatafile/c.kp_502_15.autotvin_c_5.dat"
`define AUTOTB_TVIN_c_6  "../tv/cdatafile/c.kp_502_15.autotvin_c_6.dat"
`define AUTOTB_TVIN_c_7  "../tv/cdatafile/c.kp_502_15.autotvin_c_7.dat"
`define AUTOTB_TVIN_x_0  "../tv/cdatafile/c.kp_502_15.autotvin_x_0.dat"
`define AUTOTB_TVIN_x_1  "../tv/cdatafile/c.kp_502_15.autotvin_x_1.dat"
`define AUTOTB_TVIN_x_2  "../tv/cdatafile/c.kp_502_15.autotvin_x_2.dat"
`define AUTOTB_TVIN_x_3  "../tv/cdatafile/c.kp_502_15.autotvin_x_3.dat"
`define AUTOTB_TVIN_x_4  "../tv/cdatafile/c.kp_502_15.autotvin_x_4.dat"
`define AUTOTB_TVIN_x_5  "../tv/cdatafile/c.kp_502_15.autotvin_x_5.dat"
`define AUTOTB_TVIN_x_6  "../tv/cdatafile/c.kp_502_15.autotvin_x_6.dat"
`define AUTOTB_TVIN_x_7  "../tv/cdatafile/c.kp_502_15.autotvin_x_7.dat"
`define AUTOTB_TVIN_a_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_a_0.dat"
`define AUTOTB_TVIN_a_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_a_1.dat"
`define AUTOTB_TVIN_a_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_a_2.dat"
`define AUTOTB_TVIN_a_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_a_3.dat"
`define AUTOTB_TVIN_a_4_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_a_4.dat"
`define AUTOTB_TVIN_a_5_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_a_5.dat"
`define AUTOTB_TVIN_a_6_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_a_6.dat"
`define AUTOTB_TVIN_a_7_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_a_7.dat"
`define AUTOTB_TVIN_b_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_b_0.dat"
`define AUTOTB_TVIN_b_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_b_1.dat"
`define AUTOTB_TVIN_b_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_b_2.dat"
`define AUTOTB_TVIN_b_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_b_3.dat"
`define AUTOTB_TVIN_b_4_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_b_4.dat"
`define AUTOTB_TVIN_b_5_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_b_5.dat"
`define AUTOTB_TVIN_b_6_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_b_6.dat"
`define AUTOTB_TVIN_b_7_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_b_7.dat"
`define AUTOTB_TVIN_c_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_c_0.dat"
`define AUTOTB_TVIN_c_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_c_1.dat"
`define AUTOTB_TVIN_c_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_c_2.dat"
`define AUTOTB_TVIN_c_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_c_3.dat"
`define AUTOTB_TVIN_c_4_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_c_4.dat"
`define AUTOTB_TVIN_c_5_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_c_5.dat"
`define AUTOTB_TVIN_c_6_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_c_6.dat"
`define AUTOTB_TVIN_c_7_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_c_7.dat"
`define AUTOTB_TVIN_x_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_x_0.dat"
`define AUTOTB_TVIN_x_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_x_1.dat"
`define AUTOTB_TVIN_x_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_x_2.dat"
`define AUTOTB_TVIN_x_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_x_3.dat"
`define AUTOTB_TVIN_x_4_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_x_4.dat"
`define AUTOTB_TVIN_x_5_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_x_5.dat"
`define AUTOTB_TVIN_x_6_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_x_6.dat"
`define AUTOTB_TVIN_x_7_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvin_x_7.dat"
`define AUTOTB_TVOUT_r_0  "../tv/cdatafile/c.kp_502_15.autotvout_r_0.dat"
`define AUTOTB_TVOUT_r_1  "../tv/cdatafile/c.kp_502_15.autotvout_r_1.dat"
`define AUTOTB_TVOUT_r_2  "../tv/cdatafile/c.kp_502_15.autotvout_r_2.dat"
`define AUTOTB_TVOUT_r_3  "../tv/cdatafile/c.kp_502_15.autotvout_r_3.dat"
`define AUTOTB_TVOUT_r_4  "../tv/cdatafile/c.kp_502_15.autotvout_r_4.dat"
`define AUTOTB_TVOUT_r_5  "../tv/cdatafile/c.kp_502_15.autotvout_r_5.dat"
`define AUTOTB_TVOUT_r_6  "../tv/cdatafile/c.kp_502_15.autotvout_r_6.dat"
`define AUTOTB_TVOUT_r_7  "../tv/cdatafile/c.kp_502_15.autotvout_r_7.dat"
`define AUTOTB_TVOUT_r_0_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_0.dat"
`define AUTOTB_TVOUT_r_1_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_1.dat"
`define AUTOTB_TVOUT_r_2_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_2.dat"
`define AUTOTB_TVOUT_r_3_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_3.dat"
`define AUTOTB_TVOUT_r_4_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_4.dat"
`define AUTOTB_TVOUT_r_5_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_5.dat"
`define AUTOTB_TVOUT_r_6_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_6.dat"
`define AUTOTB_TVOUT_r_7_out_wrapc  "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_7.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 3;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 1;
parameter LENGTH_r_0 = 1;
parameter LENGTH_r_1 = 1;
parameter LENGTH_r_2 = 1;
parameter LENGTH_r_3 = 1;
parameter LENGTH_r_4 = 1;
parameter LENGTH_r_5 = 1;
parameter LENGTH_r_6 = 1;
parameter LENGTH_r_7 = 1;
parameter LENGTH_a_0 = 1;
parameter LENGTH_a_1 = 1;
parameter LENGTH_a_2 = 1;
parameter LENGTH_a_3 = 1;
parameter LENGTH_a_4 = 1;
parameter LENGTH_a_5 = 1;
parameter LENGTH_a_6 = 1;
parameter LENGTH_a_7 = 1;
parameter LENGTH_b_0 = 1;
parameter LENGTH_b_1 = 1;
parameter LENGTH_b_2 = 1;
parameter LENGTH_b_3 = 1;
parameter LENGTH_b_4 = 1;
parameter LENGTH_b_5 = 1;
parameter LENGTH_b_6 = 1;
parameter LENGTH_b_7 = 1;
parameter LENGTH_c_0 = 1;
parameter LENGTH_c_1 = 1;
parameter LENGTH_c_2 = 1;
parameter LENGTH_c_3 = 1;
parameter LENGTH_c_4 = 1;
parameter LENGTH_c_5 = 1;
parameter LENGTH_c_6 = 1;
parameter LENGTH_c_7 = 1;
parameter LENGTH_x_0 = 1;
parameter LENGTH_x_1 = 1;
parameter LENGTH_x_2 = 1;
parameter LENGTH_x_3 = 1;
parameter LENGTH_x_4 = 1;
parameter LENGTH_x_5 = 1;
parameter LENGTH_x_6 = 1;
parameter LENGTH_x_7 = 1;

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
wire [31 : 0] r_0;
wire  r_0_ap_vld;
wire [31 : 0] r_1;
wire  r_1_ap_vld;
wire [31 : 0] r_2;
wire  r_2_ap_vld;
wire [31 : 0] r_3;
wire  r_3_ap_vld;
wire [31 : 0] r_4;
wire  r_4_ap_vld;
wire [31 : 0] r_5;
wire  r_5_ap_vld;
wire [31 : 0] r_6;
wire  r_6_ap_vld;
wire [31 : 0] r_7;
wire  r_7_ap_vld;
wire [31 : 0] a_0;
wire [31 : 0] a_1;
wire [31 : 0] a_2;
wire [31 : 0] a_3;
wire [31 : 0] a_4;
wire [31 : 0] a_5;
wire [31 : 0] a_6;
wire [31 : 0] a_7;
wire [31 : 0] b_0;
wire [31 : 0] b_1;
wire [31 : 0] b_2;
wire [31 : 0] b_3;
wire [31 : 0] b_4;
wire [31 : 0] b_5;
wire [31 : 0] b_6;
wire [31 : 0] b_7;
wire [31 : 0] c_0;
wire [31 : 0] c_1;
wire [31 : 0] c_2;
wire [31 : 0] c_3;
wire [31 : 0] c_4;
wire [31 : 0] c_5;
wire [31 : 0] c_6;
wire [31 : 0] c_7;
wire [31 : 0] x_0;
wire [31 : 0] x_1;
wire [31 : 0] x_2;
wire [31 : 0] x_3;
wire [31 : 0] x_4;
wire [31 : 0] x_5;
wire [31 : 0] x_6;
wire [31 : 0] x_7;
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
    .r_0(r_0),
    .r_0_ap_vld(r_0_ap_vld),
    .r_1(r_1),
    .r_1_ap_vld(r_1_ap_vld),
    .r_2(r_2),
    .r_2_ap_vld(r_2_ap_vld),
    .r_3(r_3),
    .r_3_ap_vld(r_3_ap_vld),
    .r_4(r_4),
    .r_4_ap_vld(r_4_ap_vld),
    .r_5(r_5),
    .r_5_ap_vld(r_5_ap_vld),
    .r_6(r_6),
    .r_6_ap_vld(r_6_ap_vld),
    .r_7(r_7),
    .r_7_ap_vld(r_7_ap_vld),
    .a_0(a_0),
    .a_1(a_1),
    .a_2(a_2),
    .a_3(a_3),
    .a_4(a_4),
    .a_5(a_5),
    .a_6(a_6),
    .a_7(a_7),
    .b_0(b_0),
    .b_1(b_1),
    .b_2(b_2),
    .b_3(b_3),
    .b_4(b_4),
    .b_5(b_5),
    .b_6(b_6),
    .b_7(b_7),
    .c_0(c_0),
    .c_1(c_1),
    .c_2(c_2),
    .c_3(c_3),
    .c_4(c_4),
    .c_5(c_5),
    .c_6(c_6),
    .c_7(c_7),
    .x_0(x_0),
    .x_1(x_1),
    .x_2(x_2),
    .x_3(x_3),
    .x_4(x_4),
    .x_5(x_5),
    .x_6(x_6),
    .x_7(x_7));

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
reg AESL_REG_r_0_ap_vld = 0;
// The signal of port r_0
reg [31: 0] AESL_REG_r_0 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_0 = 0; 
    else if(r_0_ap_vld) begin
        AESL_REG_r_0 <= r_0;
        AESL_REG_r_0_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_0
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_0_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_0_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_0_out_wrapc);
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
        if(AESL_REG_r_0_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_0);
        AESL_REG_r_0_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_r_1_ap_vld = 0;
// The signal of port r_1
reg [31: 0] AESL_REG_r_1 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_1 = 0; 
    else if(r_1_ap_vld) begin
        AESL_REG_r_1 <= r_1;
        AESL_REG_r_1_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_1
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_1_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_1_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_1_out_wrapc);
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
        if(AESL_REG_r_1_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_1);
        AESL_REG_r_1_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_r_2_ap_vld = 0;
// The signal of port r_2
reg [31: 0] AESL_REG_r_2 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_2 = 0; 
    else if(r_2_ap_vld) begin
        AESL_REG_r_2 <= r_2;
        AESL_REG_r_2_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_2
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_2_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_2_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_2_out_wrapc);
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
        if(AESL_REG_r_2_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_2);
        AESL_REG_r_2_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_r_3_ap_vld = 0;
// The signal of port r_3
reg [31: 0] AESL_REG_r_3 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_3 = 0; 
    else if(r_3_ap_vld) begin
        AESL_REG_r_3 <= r_3;
        AESL_REG_r_3_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_3
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_3_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_3_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_3_out_wrapc);
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
        if(AESL_REG_r_3_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_3);
        AESL_REG_r_3_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_r_4_ap_vld = 0;
// The signal of port r_4
reg [31: 0] AESL_REG_r_4 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_4 = 0; 
    else if(r_4_ap_vld) begin
        AESL_REG_r_4 <= r_4;
        AESL_REG_r_4_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_4
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_4_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_4_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_4_out_wrapc);
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
        if(AESL_REG_r_4_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_4);
        AESL_REG_r_4_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_r_5_ap_vld = 0;
// The signal of port r_5
reg [31: 0] AESL_REG_r_5 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_5 = 0; 
    else if(r_5_ap_vld) begin
        AESL_REG_r_5 <= r_5;
        AESL_REG_r_5_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_5
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_5_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_5_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_5_out_wrapc);
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
        if(AESL_REG_r_5_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_5);
        AESL_REG_r_5_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_r_6_ap_vld = 0;
// The signal of port r_6
reg [31: 0] AESL_REG_r_6 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_6 = 0; 
    else if(r_6_ap_vld) begin
        AESL_REG_r_6 <= r_6;
        AESL_REG_r_6_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_6
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_6_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_6_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_6_out_wrapc);
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
        if(AESL_REG_r_6_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_6);
        AESL_REG_r_6_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_r_7_ap_vld = 0;
// The signal of port r_7
reg [31: 0] AESL_REG_r_7 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_7 = 0; 
    else if(r_7_ap_vld) begin
        AESL_REG_r_7 <= r_7;
        AESL_REG_r_7_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_7
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_7_count;
    reg [279:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_7_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_7_out_wrapc);
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
        if(AESL_REG_r_7_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_7);
        AESL_REG_r_7_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


// The signal of port a_0
reg [31: 0] AESL_REG_a_0 = 0;
assign a_0 = AESL_REG_a_0;
initial begin : read_file_process_a_0
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
    fp = $fopen(`AUTOTB_TVIN_a_0,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_0);
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
            ret = $sscanf(token, "0x%x", AESL_REG_a_0);
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


// The signal of port a_1
reg [31: 0] AESL_REG_a_1 = 0;
assign a_1 = AESL_REG_a_1;
initial begin : read_file_process_a_1
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
    fp = $fopen(`AUTOTB_TVIN_a_1,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_1);
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
            ret = $sscanf(token, "0x%x", AESL_REG_a_1);
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


// The signal of port a_2
reg [31: 0] AESL_REG_a_2 = 0;
assign a_2 = AESL_REG_a_2;
initial begin : read_file_process_a_2
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
    fp = $fopen(`AUTOTB_TVIN_a_2,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_2);
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
            ret = $sscanf(token, "0x%x", AESL_REG_a_2);
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


// The signal of port a_3
reg [31: 0] AESL_REG_a_3 = 0;
assign a_3 = AESL_REG_a_3;
initial begin : read_file_process_a_3
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
    fp = $fopen(`AUTOTB_TVIN_a_3,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_3);
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
            ret = $sscanf(token, "0x%x", AESL_REG_a_3);
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


// The signal of port a_4
reg [31: 0] AESL_REG_a_4 = 0;
assign a_4 = AESL_REG_a_4;
initial begin : read_file_process_a_4
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
    fp = $fopen(`AUTOTB_TVIN_a_4,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_4);
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
            ret = $sscanf(token, "0x%x", AESL_REG_a_4);
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


// The signal of port a_5
reg [31: 0] AESL_REG_a_5 = 0;
assign a_5 = AESL_REG_a_5;
initial begin : read_file_process_a_5
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
    fp = $fopen(`AUTOTB_TVIN_a_5,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_5);
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
            ret = $sscanf(token, "0x%x", AESL_REG_a_5);
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


// The signal of port a_6
reg [31: 0] AESL_REG_a_6 = 0;
assign a_6 = AESL_REG_a_6;
initial begin : read_file_process_a_6
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
    fp = $fopen(`AUTOTB_TVIN_a_6,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_6);
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
            ret = $sscanf(token, "0x%x", AESL_REG_a_6);
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


// The signal of port a_7
reg [31: 0] AESL_REG_a_7 = 0;
assign a_7 = AESL_REG_a_7;
initial begin : read_file_process_a_7
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
    fp = $fopen(`AUTOTB_TVIN_a_7,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_7);
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
            ret = $sscanf(token, "0x%x", AESL_REG_a_7);
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


// The signal of port b_0
reg [31: 0] AESL_REG_b_0 = 0;
assign b_0 = AESL_REG_b_0;
initial begin : read_file_process_b_0
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
    fp = $fopen(`AUTOTB_TVIN_b_0,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_0);
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
            ret = $sscanf(token, "0x%x", AESL_REG_b_0);
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


// The signal of port b_1
reg [31: 0] AESL_REG_b_1 = 0;
assign b_1 = AESL_REG_b_1;
initial begin : read_file_process_b_1
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
    fp = $fopen(`AUTOTB_TVIN_b_1,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_1);
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
            ret = $sscanf(token, "0x%x", AESL_REG_b_1);
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


// The signal of port b_2
reg [31: 0] AESL_REG_b_2 = 0;
assign b_2 = AESL_REG_b_2;
initial begin : read_file_process_b_2
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
    fp = $fopen(`AUTOTB_TVIN_b_2,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_2);
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
            ret = $sscanf(token, "0x%x", AESL_REG_b_2);
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


// The signal of port b_3
reg [31: 0] AESL_REG_b_3 = 0;
assign b_3 = AESL_REG_b_3;
initial begin : read_file_process_b_3
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
    fp = $fopen(`AUTOTB_TVIN_b_3,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_3);
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
            ret = $sscanf(token, "0x%x", AESL_REG_b_3);
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


// The signal of port b_4
reg [31: 0] AESL_REG_b_4 = 0;
assign b_4 = AESL_REG_b_4;
initial begin : read_file_process_b_4
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
    fp = $fopen(`AUTOTB_TVIN_b_4,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_4);
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
            ret = $sscanf(token, "0x%x", AESL_REG_b_4);
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


// The signal of port b_5
reg [31: 0] AESL_REG_b_5 = 0;
assign b_5 = AESL_REG_b_5;
initial begin : read_file_process_b_5
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
    fp = $fopen(`AUTOTB_TVIN_b_5,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_5);
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
            ret = $sscanf(token, "0x%x", AESL_REG_b_5);
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


// The signal of port b_6
reg [31: 0] AESL_REG_b_6 = 0;
assign b_6 = AESL_REG_b_6;
initial begin : read_file_process_b_6
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
    fp = $fopen(`AUTOTB_TVIN_b_6,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_6);
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
            ret = $sscanf(token, "0x%x", AESL_REG_b_6);
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


// The signal of port b_7
reg [31: 0] AESL_REG_b_7 = 0;
assign b_7 = AESL_REG_b_7;
initial begin : read_file_process_b_7
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
    fp = $fopen(`AUTOTB_TVIN_b_7,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_7);
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
            ret = $sscanf(token, "0x%x", AESL_REG_b_7);
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


// The signal of port c_0
reg [31: 0] AESL_REG_c_0 = 0;
assign c_0 = AESL_REG_c_0;
initial begin : read_file_process_c_0
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
    fp = $fopen(`AUTOTB_TVIN_c_0,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_c_0);
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
            ret = $sscanf(token, "0x%x", AESL_REG_c_0);
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


// The signal of port c_1
reg [31: 0] AESL_REG_c_1 = 0;
assign c_1 = AESL_REG_c_1;
initial begin : read_file_process_c_1
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
    fp = $fopen(`AUTOTB_TVIN_c_1,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_c_1);
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
            ret = $sscanf(token, "0x%x", AESL_REG_c_1);
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


// The signal of port c_2
reg [31: 0] AESL_REG_c_2 = 0;
assign c_2 = AESL_REG_c_2;
initial begin : read_file_process_c_2
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
    fp = $fopen(`AUTOTB_TVIN_c_2,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_c_2);
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
            ret = $sscanf(token, "0x%x", AESL_REG_c_2);
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


// The signal of port c_3
reg [31: 0] AESL_REG_c_3 = 0;
assign c_3 = AESL_REG_c_3;
initial begin : read_file_process_c_3
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
    fp = $fopen(`AUTOTB_TVIN_c_3,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_c_3);
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
            ret = $sscanf(token, "0x%x", AESL_REG_c_3);
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


// The signal of port c_4
reg [31: 0] AESL_REG_c_4 = 0;
assign c_4 = AESL_REG_c_4;
initial begin : read_file_process_c_4
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
    fp = $fopen(`AUTOTB_TVIN_c_4,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_c_4);
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
            ret = $sscanf(token, "0x%x", AESL_REG_c_4);
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


// The signal of port c_5
reg [31: 0] AESL_REG_c_5 = 0;
assign c_5 = AESL_REG_c_5;
initial begin : read_file_process_c_5
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
    fp = $fopen(`AUTOTB_TVIN_c_5,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_c_5);
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
            ret = $sscanf(token, "0x%x", AESL_REG_c_5);
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


// The signal of port c_6
reg [31: 0] AESL_REG_c_6 = 0;
assign c_6 = AESL_REG_c_6;
initial begin : read_file_process_c_6
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
    fp = $fopen(`AUTOTB_TVIN_c_6,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_c_6);
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
            ret = $sscanf(token, "0x%x", AESL_REG_c_6);
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


// The signal of port c_7
reg [31: 0] AESL_REG_c_7 = 0;
assign c_7 = AESL_REG_c_7;
initial begin : read_file_process_c_7
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
    fp = $fopen(`AUTOTB_TVIN_c_7,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_c_7);
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
            ret = $sscanf(token, "0x%x", AESL_REG_c_7);
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


// The signal of port x_0
reg [31: 0] AESL_REG_x_0 = 0;
assign x_0 = AESL_REG_x_0;
initial begin : read_file_process_x_0
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
    fp = $fopen(`AUTOTB_TVIN_x_0,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_x_0);
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
            ret = $sscanf(token, "0x%x", AESL_REG_x_0);
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


// The signal of port x_1
reg [31: 0] AESL_REG_x_1 = 0;
assign x_1 = AESL_REG_x_1;
initial begin : read_file_process_x_1
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
    fp = $fopen(`AUTOTB_TVIN_x_1,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_x_1);
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
            ret = $sscanf(token, "0x%x", AESL_REG_x_1);
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


// The signal of port x_2
reg [31: 0] AESL_REG_x_2 = 0;
assign x_2 = AESL_REG_x_2;
initial begin : read_file_process_x_2
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
    fp = $fopen(`AUTOTB_TVIN_x_2,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_x_2);
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
            ret = $sscanf(token, "0x%x", AESL_REG_x_2);
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


// The signal of port x_3
reg [31: 0] AESL_REG_x_3 = 0;
assign x_3 = AESL_REG_x_3;
initial begin : read_file_process_x_3
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
    fp = $fopen(`AUTOTB_TVIN_x_3,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_x_3);
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
            ret = $sscanf(token, "0x%x", AESL_REG_x_3);
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


// The signal of port x_4
reg [31: 0] AESL_REG_x_4 = 0;
assign x_4 = AESL_REG_x_4;
initial begin : read_file_process_x_4
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
    fp = $fopen(`AUTOTB_TVIN_x_4,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_x_4);
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
            ret = $sscanf(token, "0x%x", AESL_REG_x_4);
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


// The signal of port x_5
reg [31: 0] AESL_REG_x_5 = 0;
assign x_5 = AESL_REG_x_5;
initial begin : read_file_process_x_5
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
    fp = $fopen(`AUTOTB_TVIN_x_5,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_x_5);
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
            ret = $sscanf(token, "0x%x", AESL_REG_x_5);
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


// The signal of port x_6
reg [31: 0] AESL_REG_x_6 = 0;
assign x_6 = AESL_REG_x_6;
initial begin : read_file_process_x_6
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
    fp = $fopen(`AUTOTB_TVIN_x_6,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_x_6);
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
            ret = $sscanf(token, "0x%x", AESL_REG_x_6);
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


// The signal of port x_7
reg [31: 0] AESL_REG_x_7 = 0;
assign x_7 = AESL_REG_x_7;
initial begin : read_file_process_x_7
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
    fp = $fopen(`AUTOTB_TVIN_x_7,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_x_7);
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
            ret = $sscanf(token, "0x%x", AESL_REG_x_7);
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


reg end_a_0;
reg [31:0] size_a_0;
reg [31:0] size_a_0_backup;
reg end_a_1;
reg [31:0] size_a_1;
reg [31:0] size_a_1_backup;
reg end_a_2;
reg [31:0] size_a_2;
reg [31:0] size_a_2_backup;
reg end_a_3;
reg [31:0] size_a_3;
reg [31:0] size_a_3_backup;
reg end_a_4;
reg [31:0] size_a_4;
reg [31:0] size_a_4_backup;
reg end_a_5;
reg [31:0] size_a_5;
reg [31:0] size_a_5_backup;
reg end_a_6;
reg [31:0] size_a_6;
reg [31:0] size_a_6_backup;
reg end_a_7;
reg [31:0] size_a_7;
reg [31:0] size_a_7_backup;
reg end_b_0;
reg [31:0] size_b_0;
reg [31:0] size_b_0_backup;
reg end_b_1;
reg [31:0] size_b_1;
reg [31:0] size_b_1_backup;
reg end_b_2;
reg [31:0] size_b_2;
reg [31:0] size_b_2_backup;
reg end_b_3;
reg [31:0] size_b_3;
reg [31:0] size_b_3_backup;
reg end_b_4;
reg [31:0] size_b_4;
reg [31:0] size_b_4_backup;
reg end_b_5;
reg [31:0] size_b_5;
reg [31:0] size_b_5_backup;
reg end_b_6;
reg [31:0] size_b_6;
reg [31:0] size_b_6_backup;
reg end_b_7;
reg [31:0] size_b_7;
reg [31:0] size_b_7_backup;
reg end_c_0;
reg [31:0] size_c_0;
reg [31:0] size_c_0_backup;
reg end_c_1;
reg [31:0] size_c_1;
reg [31:0] size_c_1_backup;
reg end_c_2;
reg [31:0] size_c_2;
reg [31:0] size_c_2_backup;
reg end_c_3;
reg [31:0] size_c_3;
reg [31:0] size_c_3_backup;
reg end_c_4;
reg [31:0] size_c_4;
reg [31:0] size_c_4_backup;
reg end_c_5;
reg [31:0] size_c_5;
reg [31:0] size_c_5_backup;
reg end_c_6;
reg [31:0] size_c_6;
reg [31:0] size_c_6_backup;
reg end_c_7;
reg [31:0] size_c_7;
reg [31:0] size_c_7_backup;
reg end_x_0;
reg [31:0] size_x_0;
reg [31:0] size_x_0_backup;
reg end_x_1;
reg [31:0] size_x_1;
reg [31:0] size_x_1_backup;
reg end_x_2;
reg [31:0] size_x_2;
reg [31:0] size_x_2_backup;
reg end_x_3;
reg [31:0] size_x_3;
reg [31:0] size_x_3_backup;
reg end_x_4;
reg [31:0] size_x_4;
reg [31:0] size_x_4_backup;
reg end_x_5;
reg [31:0] size_x_5;
reg [31:0] size_x_5_backup;
reg end_x_6;
reg [31:0] size_x_6;
reg [31:0] size_x_6_backup;
reg end_x_7;
reg [31:0] size_x_7;
reg [31:0] size_x_7_backup;
reg end_r_0;
reg [31:0] size_r_0;
reg [31:0] size_r_0_backup;
reg end_r_1;
reg [31:0] size_r_1;
reg [31:0] size_r_1_backup;
reg end_r_2;
reg [31:0] size_r_2;
reg [31:0] size_r_2_backup;
reg end_r_3;
reg [31:0] size_r_3;
reg [31:0] size_r_3_backup;
reg end_r_4;
reg [31:0] size_r_4;
reg [31:0] size_r_4_backup;
reg end_r_5;
reg [31:0] size_r_5;
reg [31:0] size_r_5_backup;
reg end_r_6;
reg [31:0] size_r_6;
reg [31:0] size_r_6_backup;
reg end_r_7;
reg [31:0] size_r_7;
reg [31:0] size_r_7_backup;

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
