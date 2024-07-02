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

`define AESL_MEM_r_0 AESL_automem_r_0
`define AESL_MEM_INST_r_0 mem_inst_r_0
`define AESL_MEM_r_1 AESL_automem_r_1
`define AESL_MEM_INST_r_1 mem_inst_r_1
`define AESL_MEM_a_0 AESL_automem_a_0
`define AESL_MEM_INST_a_0 mem_inst_a_0
`define AESL_MEM_a_1 AESL_automem_a_1
`define AESL_MEM_INST_a_1 mem_inst_a_1
`define AESL_MEM_b_0 AESL_automem_b_0
`define AESL_MEM_INST_b_0 mem_inst_b_0
`define AESL_MEM_b_1 AESL_automem_b_1
`define AESL_MEM_INST_b_1 mem_inst_b_1
`define AESL_MEM_c_0 AESL_automem_c_0
`define AESL_MEM_INST_c_0 mem_inst_c_0
`define AESL_MEM_c_1 AESL_automem_c_1
`define AESL_MEM_INST_c_1 mem_inst_c_1
`define AESL_MEM_x_0 AESL_automem_x_0
`define AESL_MEM_INST_x_0 mem_inst_x_0
`define AESL_MEM_x_1 AESL_automem_x_1
`define AESL_MEM_INST_x_1 mem_inst_x_1
`define AUTOTB_TVIN_r_0  "./c.kp_502_15.autotvin_r_0.dat"
`define AUTOTB_TVIN_r_1  "./c.kp_502_15.autotvin_r_1.dat"
`define AUTOTB_TVIN_a_0  "./c.kp_502_15.autotvin_a_0.dat"
`define AUTOTB_TVIN_a_1  "./c.kp_502_15.autotvin_a_1.dat"
`define AUTOTB_TVIN_b_0  "./c.kp_502_15.autotvin_b_0.dat"
`define AUTOTB_TVIN_b_1  "./c.kp_502_15.autotvin_b_1.dat"
`define AUTOTB_TVIN_c_0  "./c.kp_502_15.autotvin_c_0.dat"
`define AUTOTB_TVIN_c_1  "./c.kp_502_15.autotvin_c_1.dat"
`define AUTOTB_TVIN_x_0  "./c.kp_502_15.autotvin_x_0.dat"
`define AUTOTB_TVIN_x_1  "./c.kp_502_15.autotvin_x_1.dat"
`define AUTOTB_TVIN_r_0_out_wrapc  "./rtl.kp_502_15.autotvin_r_0.dat"
`define AUTOTB_TVIN_r_1_out_wrapc  "./rtl.kp_502_15.autotvin_r_1.dat"
`define AUTOTB_TVIN_a_0_out_wrapc  "./rtl.kp_502_15.autotvin_a_0.dat"
`define AUTOTB_TVIN_a_1_out_wrapc  "./rtl.kp_502_15.autotvin_a_1.dat"
`define AUTOTB_TVIN_b_0_out_wrapc  "./rtl.kp_502_15.autotvin_b_0.dat"
`define AUTOTB_TVIN_b_1_out_wrapc  "./rtl.kp_502_15.autotvin_b_1.dat"
`define AUTOTB_TVIN_c_0_out_wrapc  "./rtl.kp_502_15.autotvin_c_0.dat"
`define AUTOTB_TVIN_c_1_out_wrapc  "./rtl.kp_502_15.autotvin_c_1.dat"
`define AUTOTB_TVIN_x_0_out_wrapc  "./rtl.kp_502_15.autotvin_x_0.dat"
`define AUTOTB_TVIN_x_1_out_wrapc  "./rtl.kp_502_15.autotvin_x_1.dat"
`define AUTOTB_TVOUT_r_0  "./c.kp_502_15.autotvout_r_0.dat"
`define AUTOTB_TVOUT_r_1  "./c.kp_502_15.autotvout_r_1.dat"
`define AUTOTB_TVOUT_r_0_out_wrapc  "./impl_rtl.kp_502_15.autotvout_r_0.dat"
`define AUTOTB_TVOUT_r_1_out_wrapc  "./impl_rtl.kp_502_15.autotvout_r_1.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 3;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 13;
parameter LENGTH_r_0 = 4;
parameter LENGTH_r_1 = 4;
parameter LENGTH_a_0 = 4;
parameter LENGTH_a_1 = 4;
parameter LENGTH_b_0 = 4;
parameter LENGTH_b_1 = 4;
parameter LENGTH_c_0 = 4;
parameter LENGTH_c_1 = 4;
parameter LENGTH_x_0 = 4;
parameter LENGTH_x_1 = 4;

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

task post_check;
    input integer fp1;
    input integer fp2;
    reg [159 : 0] token1;
    reg [159 : 0] token2;
    reg [159 : 0] golden;
    reg [159 : 0] result;
    integer ret;
    begin
        read_token(fp1, token1);
        read_token(fp2, token2);
        if (token1 != "[[[runtime]]]" || token2 != "[[[runtime]]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
            $finish;
        end
        read_token(fp1, token1);
        read_token(fp2, token2);
        while (token1 != "[[[/runtime]]]" && token2 != "[[[/runtime]]]") begin
            if (token1 != "[[transaction]]" || token2 != "[[transaction]]") begin
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
            end
            read_token(fp1, token1);  // skip transaction number
            read_token(fp2, token2);  // skip transaction number
              read_token(fp1, token1);
              read_token(fp2, token2);
            while(token1 != "[[/transaction]]" && token2 != "[[/transaction]]") begin
                ret = $sscanf(token1, "0x%x", golden);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                ret = $sscanf(token2, "0x%x", result);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                if(golden != result) begin
                      $display("%x (expected) vs. %x (actual) - mismatch", golden, result);
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                end
                  read_token(fp1, token1);
                  read_token(fp2, token2);
            end
              read_token(fp1, token1);
              read_token(fp2, token2);
        end
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
wire [1 : 0] r_0_address0;
wire  r_0_ce0;
wire  r_0_we0;
wire [31 : 0] r_0_d0;
wire [1 : 0] r_1_address0;
wire  r_1_ce0;
wire  r_1_we0;
wire [31 : 0] r_1_d0;
wire [1 : 0] a_0_address0;
wire  a_0_ce0;
wire [31 : 0] a_0_q0;
wire [1 : 0] a_1_address0;
wire  a_1_ce0;
wire [31 : 0] a_1_q0;
wire [1 : 0] b_0_address0;
wire  b_0_ce0;
wire [31 : 0] b_0_q0;
wire [1 : 0] b_1_address0;
wire  b_1_ce0;
wire [31 : 0] b_1_q0;
wire [1 : 0] c_0_address0;
wire  c_0_ce0;
wire [31 : 0] c_0_q0;
wire [1 : 0] c_1_address0;
wire  c_1_ce0;
wire [31 : 0] c_1_q0;
wire [1 : 0] x_0_address0;
wire  x_0_ce0;
wire [31 : 0] x_0_q0;
wire [1 : 0] x_1_address0;
wire  x_1_ce0;
wire [31 : 0] x_1_q0;
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
    .r_0_address0(r_0_address0),
    .r_0_ce0(r_0_ce0),
    .r_0_we0(r_0_we0),
    .r_0_d0(r_0_d0),
    .r_1_address0(r_1_address0),
    .r_1_ce0(r_1_ce0),
    .r_1_we0(r_1_we0),
    .r_1_d0(r_1_d0),
    .a_0_address0(a_0_address0),
    .a_0_ce0(a_0_ce0),
    .a_0_q0(a_0_q0),
    .a_1_address0(a_1_address0),
    .a_1_ce0(a_1_ce0),
    .a_1_q0(a_1_q0),
    .b_0_address0(b_0_address0),
    .b_0_ce0(b_0_ce0),
    .b_0_q0(b_0_q0),
    .b_1_address0(b_1_address0),
    .b_1_ce0(b_1_ce0),
    .b_1_q0(b_1_q0),
    .c_0_address0(c_0_address0),
    .c_0_ce0(c_0_ce0),
    .c_0_q0(c_0_q0),
    .c_1_address0(c_1_address0),
    .c_1_ce0(c_1_ce0),
    .c_1_q0(c_1_q0),
    .x_0_address0(x_0_address0),
    .x_0_ce0(x_0_ce0),
    .x_0_q0(x_0_q0),
    .x_1_address0(x_1_address0),
    .x_1_ce0(x_1_ce0),
    .x_1_q0(x_1_q0));

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
//------------------------arrayr_0 Instantiation--------------

// The input and output of arrayr_0
wire    arrayr_0_ce0, arrayr_0_ce1;
wire [4 - 1 : 0]    arrayr_0_we0, arrayr_0_we1;
wire    [1 : 0]    arrayr_0_address0, arrayr_0_address1;
wire    [31 : 0]    arrayr_0_din0, arrayr_0_din1;
wire    [31 : 0]    arrayr_0_dout0, arrayr_0_dout1;
wire    arrayr_0_ready;
wire    arrayr_0_done;

`AESL_MEM_r_0 `AESL_MEM_INST_r_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayr_0_ce0),
    .we0        (arrayr_0_we0),
    .address0   (arrayr_0_address0),
    .din0       (arrayr_0_din0),
    .dout0      (arrayr_0_dout0),
    .ce1        (arrayr_0_ce1),
    .we1        (arrayr_0_we1),
    .address1   (arrayr_0_address1),
    .din1       (arrayr_0_din1),
    .dout1      (arrayr_0_dout1),
    .ready      (arrayr_0_ready),
    .done    (arrayr_0_done)
);

// Assignment between dut and arrayr_0
assign arrayr_0_address0 = r_0_address0;
assign arrayr_0_ce0 = r_0_ce0;
assign arrayr_0_we0[0] = r_0_we0;
assign arrayr_0_we0[1] = r_0_we0;
assign arrayr_0_we0[2] = r_0_we0;
assign arrayr_0_we0[3] = r_0_we0;
assign arrayr_0_din0 = r_0_d0;
assign arrayr_0_we1 = 0;
assign arrayr_0_din1 = 0;
assign arrayr_0_ready= ready_initial | arrayr_0_done;
assign arrayr_0_done =    AESL_done_delay;


//------------------------arrayr_1 Instantiation--------------

// The input and output of arrayr_1
wire    arrayr_1_ce0, arrayr_1_ce1;
wire [4 - 1 : 0]    arrayr_1_we0, arrayr_1_we1;
wire    [1 : 0]    arrayr_1_address0, arrayr_1_address1;
wire    [31 : 0]    arrayr_1_din0, arrayr_1_din1;
wire    [31 : 0]    arrayr_1_dout0, arrayr_1_dout1;
wire    arrayr_1_ready;
wire    arrayr_1_done;

`AESL_MEM_r_1 `AESL_MEM_INST_r_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayr_1_ce0),
    .we0        (arrayr_1_we0),
    .address0   (arrayr_1_address0),
    .din0       (arrayr_1_din0),
    .dout0      (arrayr_1_dout0),
    .ce1        (arrayr_1_ce1),
    .we1        (arrayr_1_we1),
    .address1   (arrayr_1_address1),
    .din1       (arrayr_1_din1),
    .dout1      (arrayr_1_dout1),
    .ready      (arrayr_1_ready),
    .done    (arrayr_1_done)
);

// Assignment between dut and arrayr_1
assign arrayr_1_address0 = r_1_address0;
assign arrayr_1_ce0 = r_1_ce0;
assign arrayr_1_we0[0] = r_1_we0;
assign arrayr_1_we0[1] = r_1_we0;
assign arrayr_1_we0[2] = r_1_we0;
assign arrayr_1_we0[3] = r_1_we0;
assign arrayr_1_din0 = r_1_d0;
assign arrayr_1_we1 = 0;
assign arrayr_1_din1 = 0;
assign arrayr_1_ready= ready_initial | arrayr_1_done;
assign arrayr_1_done =    AESL_done_delay;


//------------------------arraya_0 Instantiation--------------

// The input and output of arraya_0
wire    arraya_0_ce0, arraya_0_ce1;
wire [4 - 1 : 0]    arraya_0_we0, arraya_0_we1;
wire    [1 : 0]    arraya_0_address0, arraya_0_address1;
wire    [31 : 0]    arraya_0_din0, arraya_0_din1;
wire    [31 : 0]    arraya_0_dout0, arraya_0_dout1;
wire    arraya_0_ready;
wire    arraya_0_done;

`AESL_MEM_a_0 `AESL_MEM_INST_a_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arraya_0_ce0),
    .we0        (arraya_0_we0),
    .address0   (arraya_0_address0),
    .din0       (arraya_0_din0),
    .dout0      (arraya_0_dout0),
    .ce1        (arraya_0_ce1),
    .we1        (arraya_0_we1),
    .address1   (arraya_0_address1),
    .din1       (arraya_0_din1),
    .dout1      (arraya_0_dout1),
    .ready      (arraya_0_ready),
    .done    (arraya_0_done)
);

// Assignment between dut and arraya_0
assign arraya_0_address0 = a_0_address0;
assign arraya_0_ce0 = a_0_ce0;
assign a_0_q0 = arraya_0_dout0;
assign arraya_0_we0 = 0;
assign arraya_0_din0 = 0;
assign arraya_0_ready=    ready;
assign arraya_0_done = 0;


//------------------------arraya_1 Instantiation--------------

// The input and output of arraya_1
wire    arraya_1_ce0, arraya_1_ce1;
wire [4 - 1 : 0]    arraya_1_we0, arraya_1_we1;
wire    [1 : 0]    arraya_1_address0, arraya_1_address1;
wire    [31 : 0]    arraya_1_din0, arraya_1_din1;
wire    [31 : 0]    arraya_1_dout0, arraya_1_dout1;
wire    arraya_1_ready;
wire    arraya_1_done;

`AESL_MEM_a_1 `AESL_MEM_INST_a_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arraya_1_ce0),
    .we0        (arraya_1_we0),
    .address0   (arraya_1_address0),
    .din0       (arraya_1_din0),
    .dout0      (arraya_1_dout0),
    .ce1        (arraya_1_ce1),
    .we1        (arraya_1_we1),
    .address1   (arraya_1_address1),
    .din1       (arraya_1_din1),
    .dout1      (arraya_1_dout1),
    .ready      (arraya_1_ready),
    .done    (arraya_1_done)
);

// Assignment between dut and arraya_1
assign arraya_1_address0 = a_1_address0;
assign arraya_1_ce0 = a_1_ce0;
assign a_1_q0 = arraya_1_dout0;
assign arraya_1_we0 = 0;
assign arraya_1_din0 = 0;
assign arraya_1_ready=    ready;
assign arraya_1_done = 0;


//------------------------arrayb_0 Instantiation--------------

// The input and output of arrayb_0
wire    arrayb_0_ce0, arrayb_0_ce1;
wire [4 - 1 : 0]    arrayb_0_we0, arrayb_0_we1;
wire    [1 : 0]    arrayb_0_address0, arrayb_0_address1;
wire    [31 : 0]    arrayb_0_din0, arrayb_0_din1;
wire    [31 : 0]    arrayb_0_dout0, arrayb_0_dout1;
wire    arrayb_0_ready;
wire    arrayb_0_done;

`AESL_MEM_b_0 `AESL_MEM_INST_b_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayb_0_ce0),
    .we0        (arrayb_0_we0),
    .address0   (arrayb_0_address0),
    .din0       (arrayb_0_din0),
    .dout0      (arrayb_0_dout0),
    .ce1        (arrayb_0_ce1),
    .we1        (arrayb_0_we1),
    .address1   (arrayb_0_address1),
    .din1       (arrayb_0_din1),
    .dout1      (arrayb_0_dout1),
    .ready      (arrayb_0_ready),
    .done    (arrayb_0_done)
);

// Assignment between dut and arrayb_0
assign arrayb_0_address0 = b_0_address0;
assign arrayb_0_ce0 = b_0_ce0;
assign b_0_q0 = arrayb_0_dout0;
assign arrayb_0_we0 = 0;
assign arrayb_0_din0 = 0;
assign arrayb_0_ready=    ready;
assign arrayb_0_done = 0;


//------------------------arrayb_1 Instantiation--------------

// The input and output of arrayb_1
wire    arrayb_1_ce0, arrayb_1_ce1;
wire [4 - 1 : 0]    arrayb_1_we0, arrayb_1_we1;
wire    [1 : 0]    arrayb_1_address0, arrayb_1_address1;
wire    [31 : 0]    arrayb_1_din0, arrayb_1_din1;
wire    [31 : 0]    arrayb_1_dout0, arrayb_1_dout1;
wire    arrayb_1_ready;
wire    arrayb_1_done;

`AESL_MEM_b_1 `AESL_MEM_INST_b_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayb_1_ce0),
    .we0        (arrayb_1_we0),
    .address0   (arrayb_1_address0),
    .din0       (arrayb_1_din0),
    .dout0      (arrayb_1_dout0),
    .ce1        (arrayb_1_ce1),
    .we1        (arrayb_1_we1),
    .address1   (arrayb_1_address1),
    .din1       (arrayb_1_din1),
    .dout1      (arrayb_1_dout1),
    .ready      (arrayb_1_ready),
    .done    (arrayb_1_done)
);

// Assignment between dut and arrayb_1
assign arrayb_1_address0 = b_1_address0;
assign arrayb_1_ce0 = b_1_ce0;
assign b_1_q0 = arrayb_1_dout0;
assign arrayb_1_we0 = 0;
assign arrayb_1_din0 = 0;
assign arrayb_1_ready=    ready;
assign arrayb_1_done = 0;


//------------------------arrayc_0 Instantiation--------------

// The input and output of arrayc_0
wire    arrayc_0_ce0, arrayc_0_ce1;
wire [4 - 1 : 0]    arrayc_0_we0, arrayc_0_we1;
wire    [1 : 0]    arrayc_0_address0, arrayc_0_address1;
wire    [31 : 0]    arrayc_0_din0, arrayc_0_din1;
wire    [31 : 0]    arrayc_0_dout0, arrayc_0_dout1;
wire    arrayc_0_ready;
wire    arrayc_0_done;

`AESL_MEM_c_0 `AESL_MEM_INST_c_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayc_0_ce0),
    .we0        (arrayc_0_we0),
    .address0   (arrayc_0_address0),
    .din0       (arrayc_0_din0),
    .dout0      (arrayc_0_dout0),
    .ce1        (arrayc_0_ce1),
    .we1        (arrayc_0_we1),
    .address1   (arrayc_0_address1),
    .din1       (arrayc_0_din1),
    .dout1      (arrayc_0_dout1),
    .ready      (arrayc_0_ready),
    .done    (arrayc_0_done)
);

// Assignment between dut and arrayc_0
assign arrayc_0_address0 = c_0_address0;
assign arrayc_0_ce0 = c_0_ce0;
assign c_0_q0 = arrayc_0_dout0;
assign arrayc_0_we0 = 0;
assign arrayc_0_din0 = 0;
assign arrayc_0_ready=    ready;
assign arrayc_0_done = 0;


//------------------------arrayc_1 Instantiation--------------

// The input and output of arrayc_1
wire    arrayc_1_ce0, arrayc_1_ce1;
wire [4 - 1 : 0]    arrayc_1_we0, arrayc_1_we1;
wire    [1 : 0]    arrayc_1_address0, arrayc_1_address1;
wire    [31 : 0]    arrayc_1_din0, arrayc_1_din1;
wire    [31 : 0]    arrayc_1_dout0, arrayc_1_dout1;
wire    arrayc_1_ready;
wire    arrayc_1_done;

`AESL_MEM_c_1 `AESL_MEM_INST_c_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayc_1_ce0),
    .we0        (arrayc_1_we0),
    .address0   (arrayc_1_address0),
    .din0       (arrayc_1_din0),
    .dout0      (arrayc_1_dout0),
    .ce1        (arrayc_1_ce1),
    .we1        (arrayc_1_we1),
    .address1   (arrayc_1_address1),
    .din1       (arrayc_1_din1),
    .dout1      (arrayc_1_dout1),
    .ready      (arrayc_1_ready),
    .done    (arrayc_1_done)
);

// Assignment between dut and arrayc_1
assign arrayc_1_address0 = c_1_address0;
assign arrayc_1_ce0 = c_1_ce0;
assign c_1_q0 = arrayc_1_dout0;
assign arrayc_1_we0 = 0;
assign arrayc_1_din0 = 0;
assign arrayc_1_ready=    ready;
assign arrayc_1_done = 0;


//------------------------arrayx_0 Instantiation--------------

// The input and output of arrayx_0
wire    arrayx_0_ce0, arrayx_0_ce1;
wire [4 - 1 : 0]    arrayx_0_we0, arrayx_0_we1;
wire    [1 : 0]    arrayx_0_address0, arrayx_0_address1;
wire    [31 : 0]    arrayx_0_din0, arrayx_0_din1;
wire    [31 : 0]    arrayx_0_dout0, arrayx_0_dout1;
wire    arrayx_0_ready;
wire    arrayx_0_done;

`AESL_MEM_x_0 `AESL_MEM_INST_x_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayx_0_ce0),
    .we0        (arrayx_0_we0),
    .address0   (arrayx_0_address0),
    .din0       (arrayx_0_din0),
    .dout0      (arrayx_0_dout0),
    .ce1        (arrayx_0_ce1),
    .we1        (arrayx_0_we1),
    .address1   (arrayx_0_address1),
    .din1       (arrayx_0_din1),
    .dout1      (arrayx_0_dout1),
    .ready      (arrayx_0_ready),
    .done    (arrayx_0_done)
);

// Assignment between dut and arrayx_0
assign arrayx_0_address0 = x_0_address0;
assign arrayx_0_ce0 = x_0_ce0;
assign x_0_q0 = arrayx_0_dout0;
assign arrayx_0_we0 = 0;
assign arrayx_0_din0 = 0;
assign arrayx_0_ready=    ready;
assign arrayx_0_done = 0;


//------------------------arrayx_1 Instantiation--------------

// The input and output of arrayx_1
wire    arrayx_1_ce0, arrayx_1_ce1;
wire [4 - 1 : 0]    arrayx_1_we0, arrayx_1_we1;
wire    [1 : 0]    arrayx_1_address0, arrayx_1_address1;
wire    [31 : 0]    arrayx_1_din0, arrayx_1_din1;
wire    [31 : 0]    arrayx_1_dout0, arrayx_1_dout1;
wire    arrayx_1_ready;
wire    arrayx_1_done;

`AESL_MEM_x_1 `AESL_MEM_INST_x_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayx_1_ce0),
    .we0        (arrayx_1_we0),
    .address0   (arrayx_1_address0),
    .din0       (arrayx_1_din0),
    .dout0      (arrayx_1_dout0),
    .ce1        (arrayx_1_ce1),
    .we1        (arrayx_1_we1),
    .address1   (arrayx_1_address1),
    .din1       (arrayx_1_din1),
    .dout1      (arrayx_1_dout1),
    .ready      (arrayx_1_ready),
    .done    (arrayx_1_done)
);

// Assignment between dut and arrayx_1
assign arrayx_1_address0 = x_1_address0;
assign arrayx_1_ce0 = x_1_ce0;
assign x_1_q0 = arrayx_1_dout0;
assign arrayx_1_we0 = 0;
assign arrayx_1_din0 = 0;
assign arrayx_1_ready=    ready;
assign arrayx_1_done = 0;


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
        integer fp1;
        integer fp2;
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
    fp1 = $fopen("./rtl.kp_502_15.autotvout_r_0.dat", "r");
    fp2 = $fopen("./impl_rtl.kp_502_15.autotvout_r_0.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.kp_502_15.autotvout_r_0.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.kp_502_15.autotvout_r_0.dat\"!");
    else begin
        $display("Comparing rtl.kp_502_15.autotvout_r_0.dat with impl_rtl.kp_502_15.autotvout_r_0.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.kp_502_15.autotvout_r_1.dat", "r");
    fp2 = $fopen("./impl_rtl.kp_502_15.autotvout_r_1.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.kp_502_15.autotvout_r_1.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.kp_502_15.autotvout_r_1.dat\"!");
    else begin
        $display("Comparing rtl.kp_502_15.autotvout_r_1.dat with impl_rtl.kp_502_15.autotvout_r_1.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
        $display("Simulation Passed.");
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_r_0;
reg [31:0] size_r_0;
reg [31:0] size_r_0_backup;
reg end_r_1;
reg [31:0] size_r_1;
reg [31:0] size_r_1_backup;
reg end_a_0;
reg [31:0] size_a_0;
reg [31:0] size_a_0_backup;
reg end_a_1;
reg [31:0] size_a_1;
reg [31:0] size_a_1_backup;
reg end_b_0;
reg [31:0] size_b_0;
reg [31:0] size_b_0_backup;
reg end_b_1;
reg [31:0] size_b_1;
reg [31:0] size_b_1_backup;
reg end_c_0;
reg [31:0] size_c_0;
reg [31:0] size_c_0_backup;
reg end_c_1;
reg [31:0] size_c_1;
reg [31:0] size_c_1_backup;
reg end_x_0;
reg [31:0] size_x_0;
reg [31:0] size_x_0_backup;
reg end_x_1;
reg [31:0] size_x_1;
reg [31:0] size_x_1_backup;

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

reg dump_tvout_finish_r_0;

initial begin : dump_tvout_runtime_sign_r_0
    integer fp;
    dump_tvout_finish_r_0 = 0;
    fp = $fopen(`AUTOTB_TVOUT_r_0_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_r_0_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_r_0 = 1;
end


reg dump_tvout_finish_r_1;

initial begin : dump_tvout_runtime_sign_r_1
    integer fp;
    dump_tvout_finish_r_1 = 0;
    fp = $fopen(`AUTOTB_TVOUT_r_1_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_r_1_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_r_1 = 1;
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
