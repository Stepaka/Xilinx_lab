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

`define AESL_MEM_A AESL_automem_A
`define AESL_MEM_INST_A mem_inst_A
`define AESL_MEM_B AESL_automem_B
`define AESL_MEM_INST_B mem_inst_B
`define AESL_MEM_C AESL_automem_C
`define AESL_MEM_INST_C mem_inst_C
`define AESL_MEM_X1 AESL_automem_X1
`define AESL_MEM_INST_X1 mem_inst_X1
`define AESL_MEM_X2 AESL_automem_X2
`define AESL_MEM_INST_X2 mem_inst_X2
`define AESL_MEM_D AESL_automem_D
`define AESL_MEM_INST_D mem_inst_D
`define AUTOTB_TVIN_A  "./c.kp_502_7.autotvin_A.dat"
`define AUTOTB_TVIN_B  "./c.kp_502_7.autotvin_B.dat"
`define AUTOTB_TVIN_C  "./c.kp_502_7.autotvin_C.dat"
`define AUTOTB_TVIN_X1  "./c.kp_502_7.autotvin_X1.dat"
`define AUTOTB_TVIN_X2  "./c.kp_502_7.autotvin_X2.dat"
`define AUTOTB_TVIN_D  "./c.kp_502_7.autotvin_D.dat"
`define AUTOTB_TVIN_A_out_wrapc  "./rtl.kp_502_7.autotvin_A.dat"
`define AUTOTB_TVIN_B_out_wrapc  "./rtl.kp_502_7.autotvin_B.dat"
`define AUTOTB_TVIN_C_out_wrapc  "./rtl.kp_502_7.autotvin_C.dat"
`define AUTOTB_TVIN_X1_out_wrapc  "./rtl.kp_502_7.autotvin_X1.dat"
`define AUTOTB_TVIN_X2_out_wrapc  "./rtl.kp_502_7.autotvin_X2.dat"
`define AUTOTB_TVIN_D_out_wrapc  "./rtl.kp_502_7.autotvin_D.dat"
`define AUTOTB_TVOUT_X1  "./c.kp_502_7.autotvout_X1.dat"
`define AUTOTB_TVOUT_X2  "./c.kp_502_7.autotvout_X2.dat"
`define AUTOTB_TVOUT_D  "./c.kp_502_7.autotvout_D.dat"
`define AUTOTB_TVOUT_X1_out_wrapc  "./impl_rtl.kp_502_7.autotvout_X1.dat"
`define AUTOTB_TVOUT_X2_out_wrapc  "./impl_rtl.kp_502_7.autotvout_X2.dat"
`define AUTOTB_TVOUT_D_out_wrapc  "./impl_rtl.kp_502_7.autotvout_D.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 3;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 337;
parameter LENGTH_A = 8;
parameter LENGTH_B = 8;
parameter LENGTH_C = 8;
parameter LENGTH_X1 = 8;
parameter LENGTH_X2 = 8;
parameter LENGTH_D = 8;

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
wire [2 : 0] A_address0;
wire  A_ce0;
wire [63 : 0] A_q0;
wire [2 : 0] B_address0;
wire  B_ce0;
wire [63 : 0] B_q0;
wire [2 : 0] C_address0;
wire  C_ce0;
wire [63 : 0] C_q0;
wire [2 : 0] X1_address1;
wire  X1_ce1;
wire  X1_we1;
wire [63 : 0] X1_d1;
wire [2 : 0] X2_address1;
wire  X2_ce1;
wire  X2_we1;
wire [63 : 0] X2_d1;
wire [2 : 0] D_address1;
wire  D_ce1;
wire  D_we1;
wire [63 : 0] D_d1;
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
    .A_address0(A_address0),
    .A_ce0(A_ce0),
    .A_q0(A_q0),
    .B_address0(B_address0),
    .B_ce0(B_ce0),
    .B_q0(B_q0),
    .C_address0(C_address0),
    .C_ce0(C_ce0),
    .C_q0(C_q0),
    .X1_address1(X1_address1),
    .X1_ce1(X1_ce1),
    .X1_we1(X1_we1),
    .X1_d1(X1_d1),
    .X2_address1(X2_address1),
    .X2_ce1(X2_ce1),
    .X2_we1(X2_we1),
    .X2_d1(X2_d1),
    .D_address1(D_address1),
    .D_ce1(D_ce1),
    .D_we1(D_we1),
    .D_d1(D_d1));

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
//------------------------arrayA Instantiation--------------

// The input and output of arrayA
wire    arrayA_ce0, arrayA_ce1;
wire [8 - 1 : 0]    arrayA_we0, arrayA_we1;
wire    [2 : 0]    arrayA_address0, arrayA_address1;
wire    [63 : 0]    arrayA_din0, arrayA_din1;
wire    [63 : 0]    arrayA_dout0, arrayA_dout1;
wire    arrayA_ready;
wire    arrayA_done;

`AESL_MEM_A `AESL_MEM_INST_A(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayA_ce0),
    .we0        (arrayA_we0),
    .address0   (arrayA_address0),
    .din0       (arrayA_din0),
    .dout0      (arrayA_dout0),
    .ce1        (arrayA_ce1),
    .we1        (arrayA_we1),
    .address1   (arrayA_address1),
    .din1       (arrayA_din1),
    .dout1      (arrayA_dout1),
    .ready      (arrayA_ready),
    .done    (arrayA_done)
);

// Assignment between dut and arrayA
assign arrayA_address0 = A_address0;
assign arrayA_ce0 = A_ce0;
assign A_q0 = arrayA_dout0;
assign arrayA_we0 = 0;
assign arrayA_din0 = 0;
assign arrayA_we1 = 0;
assign arrayA_din1 = 0;
assign arrayA_ready=    ready;
assign arrayA_done = 0;


//------------------------arrayB Instantiation--------------

// The input and output of arrayB
wire    arrayB_ce0, arrayB_ce1;
wire [8 - 1 : 0]    arrayB_we0, arrayB_we1;
wire    [2 : 0]    arrayB_address0, arrayB_address1;
wire    [63 : 0]    arrayB_din0, arrayB_din1;
wire    [63 : 0]    arrayB_dout0, arrayB_dout1;
wire    arrayB_ready;
wire    arrayB_done;

`AESL_MEM_B `AESL_MEM_INST_B(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayB_ce0),
    .we0        (arrayB_we0),
    .address0   (arrayB_address0),
    .din0       (arrayB_din0),
    .dout0      (arrayB_dout0),
    .ce1        (arrayB_ce1),
    .we1        (arrayB_we1),
    .address1   (arrayB_address1),
    .din1       (arrayB_din1),
    .dout1      (arrayB_dout1),
    .ready      (arrayB_ready),
    .done    (arrayB_done)
);

// Assignment between dut and arrayB
assign arrayB_address0 = B_address0;
assign arrayB_ce0 = B_ce0;
assign B_q0 = arrayB_dout0;
assign arrayB_we0 = 0;
assign arrayB_din0 = 0;
assign arrayB_we1 = 0;
assign arrayB_din1 = 0;
assign arrayB_ready=    ready;
assign arrayB_done = 0;


//------------------------arrayC Instantiation--------------

// The input and output of arrayC
wire    arrayC_ce0, arrayC_ce1;
wire [8 - 1 : 0]    arrayC_we0, arrayC_we1;
wire    [2 : 0]    arrayC_address0, arrayC_address1;
wire    [63 : 0]    arrayC_din0, arrayC_din1;
wire    [63 : 0]    arrayC_dout0, arrayC_dout1;
wire    arrayC_ready;
wire    arrayC_done;

`AESL_MEM_C `AESL_MEM_INST_C(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayC_ce0),
    .we0        (arrayC_we0),
    .address0   (arrayC_address0),
    .din0       (arrayC_din0),
    .dout0      (arrayC_dout0),
    .ce1        (arrayC_ce1),
    .we1        (arrayC_we1),
    .address1   (arrayC_address1),
    .din1       (arrayC_din1),
    .dout1      (arrayC_dout1),
    .ready      (arrayC_ready),
    .done    (arrayC_done)
);

// Assignment between dut and arrayC
assign arrayC_address0 = C_address0;
assign arrayC_ce0 = C_ce0;
assign C_q0 = arrayC_dout0;
assign arrayC_we0 = 0;
assign arrayC_din0 = 0;
assign arrayC_we1 = 0;
assign arrayC_din1 = 0;
assign arrayC_ready=    ready;
assign arrayC_done = 0;


//------------------------arrayX1 Instantiation--------------

// The input and output of arrayX1
wire    arrayX1_ce0, arrayX1_ce1;
wire [8 - 1 : 0]    arrayX1_we0, arrayX1_we1;
wire    [2 : 0]    arrayX1_address0, arrayX1_address1;
wire    [63 : 0]    arrayX1_din0, arrayX1_din1;
wire    [63 : 0]    arrayX1_dout0, arrayX1_dout1;
wire    arrayX1_ready;
wire    arrayX1_done;

`AESL_MEM_X1 `AESL_MEM_INST_X1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX1_ce0),
    .we0        (arrayX1_we0),
    .address0   (arrayX1_address0),
    .din0       (arrayX1_din0),
    .dout0      (arrayX1_dout0),
    .ce1        (arrayX1_ce1),
    .we1        (arrayX1_we1),
    .address1   (arrayX1_address1),
    .din1       (arrayX1_din1),
    .dout1      (arrayX1_dout1),
    .ready      (arrayX1_ready),
    .done    (arrayX1_done)
);

// Assignment between dut and arrayX1
assign arrayX1_we0 = 0;
assign arrayX1_din0 = 0;
assign arrayX1_address1 = X1_address1;
assign arrayX1_ce1 = X1_ce1;
assign arrayX1_we1[0] = X1_we1;
assign arrayX1_we1[1] = X1_we1;
assign arrayX1_we1[2] = X1_we1;
assign arrayX1_we1[3] = X1_we1;
assign arrayX1_we1[4] = X1_we1;
assign arrayX1_we1[5] = X1_we1;
assign arrayX1_we1[6] = X1_we1;
assign arrayX1_we1[7] = X1_we1;
assign arrayX1_din1 = X1_d1;
assign arrayX1_ready= ready_initial | arrayX1_done;
assign arrayX1_done =    AESL_done_delay;


//------------------------arrayX2 Instantiation--------------

// The input and output of arrayX2
wire    arrayX2_ce0, arrayX2_ce1;
wire [8 - 1 : 0]    arrayX2_we0, arrayX2_we1;
wire    [2 : 0]    arrayX2_address0, arrayX2_address1;
wire    [63 : 0]    arrayX2_din0, arrayX2_din1;
wire    [63 : 0]    arrayX2_dout0, arrayX2_dout1;
wire    arrayX2_ready;
wire    arrayX2_done;

`AESL_MEM_X2 `AESL_MEM_INST_X2(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX2_ce0),
    .we0        (arrayX2_we0),
    .address0   (arrayX2_address0),
    .din0       (arrayX2_din0),
    .dout0      (arrayX2_dout0),
    .ce1        (arrayX2_ce1),
    .we1        (arrayX2_we1),
    .address1   (arrayX2_address1),
    .din1       (arrayX2_din1),
    .dout1      (arrayX2_dout1),
    .ready      (arrayX2_ready),
    .done    (arrayX2_done)
);

// Assignment between dut and arrayX2
assign arrayX2_we0 = 0;
assign arrayX2_din0 = 0;
assign arrayX2_address1 = X2_address1;
assign arrayX2_ce1 = X2_ce1;
assign arrayX2_we1[0] = X2_we1;
assign arrayX2_we1[1] = X2_we1;
assign arrayX2_we1[2] = X2_we1;
assign arrayX2_we1[3] = X2_we1;
assign arrayX2_we1[4] = X2_we1;
assign arrayX2_we1[5] = X2_we1;
assign arrayX2_we1[6] = X2_we1;
assign arrayX2_we1[7] = X2_we1;
assign arrayX2_din1 = X2_d1;
assign arrayX2_ready= ready_initial | arrayX2_done;
assign arrayX2_done =    AESL_done_delay;


//------------------------arrayD Instantiation--------------

// The input and output of arrayD
wire    arrayD_ce0, arrayD_ce1;
wire [8 - 1 : 0]    arrayD_we0, arrayD_we1;
wire    [2 : 0]    arrayD_address0, arrayD_address1;
wire    [63 : 0]    arrayD_din0, arrayD_din1;
wire    [63 : 0]    arrayD_dout0, arrayD_dout1;
wire    arrayD_ready;
wire    arrayD_done;

`AESL_MEM_D `AESL_MEM_INST_D(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayD_ce0),
    .we0        (arrayD_we0),
    .address0   (arrayD_address0),
    .din0       (arrayD_din0),
    .dout0      (arrayD_dout0),
    .ce1        (arrayD_ce1),
    .we1        (arrayD_we1),
    .address1   (arrayD_address1),
    .din1       (arrayD_din1),
    .dout1      (arrayD_dout1),
    .ready      (arrayD_ready),
    .done    (arrayD_done)
);

// Assignment between dut and arrayD
assign arrayD_we0 = 0;
assign arrayD_din0 = 0;
assign arrayD_address1 = D_address1;
assign arrayD_ce1 = D_ce1;
assign arrayD_we1[0] = D_we1;
assign arrayD_we1[1] = D_we1;
assign arrayD_we1[2] = D_we1;
assign arrayD_we1[3] = D_we1;
assign arrayD_we1[4] = D_we1;
assign arrayD_we1[5] = D_we1;
assign arrayD_we1[6] = D_we1;
assign arrayD_we1[7] = D_we1;
assign arrayD_din1 = D_d1;
assign arrayD_ready= ready_initial | arrayD_done;
assign arrayD_done =    AESL_done_delay;


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
    fp1 = $fopen("./rtl.kp_502_7.autotvout_X1.dat", "r");
    fp2 = $fopen("./impl_rtl.kp_502_7.autotvout_X1.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.kp_502_7.autotvout_X1.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.kp_502_7.autotvout_X1.dat\"!");
    else begin
        $display("Comparing rtl.kp_502_7.autotvout_X1.dat with impl_rtl.kp_502_7.autotvout_X1.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.kp_502_7.autotvout_X2.dat", "r");
    fp2 = $fopen("./impl_rtl.kp_502_7.autotvout_X2.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.kp_502_7.autotvout_X2.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.kp_502_7.autotvout_X2.dat\"!");
    else begin
        $display("Comparing rtl.kp_502_7.autotvout_X2.dat with impl_rtl.kp_502_7.autotvout_X2.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.kp_502_7.autotvout_D.dat", "r");
    fp2 = $fopen("./impl_rtl.kp_502_7.autotvout_D.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.kp_502_7.autotvout_D.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.kp_502_7.autotvout_D.dat\"!");
    else begin
        $display("Comparing rtl.kp_502_7.autotvout_D.dat with impl_rtl.kp_502_7.autotvout_D.dat");
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


reg end_A;
reg [31:0] size_A;
reg [31:0] size_A_backup;
reg end_B;
reg [31:0] size_B;
reg [31:0] size_B_backup;
reg end_C;
reg [31:0] size_C;
reg [31:0] size_C_backup;
reg end_X1;
reg [31:0] size_X1;
reg [31:0] size_X1_backup;
reg end_X2;
reg [31:0] size_X2;
reg [31:0] size_X2_backup;
reg end_D;
reg [31:0] size_D;
reg [31:0] size_D_backup;

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

reg dump_tvout_finish_X1;

initial begin : dump_tvout_runtime_sign_X1
    integer fp;
    dump_tvout_finish_X1 = 0;
    fp = $fopen(`AUTOTB_TVOUT_X1_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_X1_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_X1 = 1;
end


reg dump_tvout_finish_X2;

initial begin : dump_tvout_runtime_sign_X2
    integer fp;
    dump_tvout_finish_X2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_X2_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_X2_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_X2 = 1;
end


reg dump_tvout_finish_D;

initial begin : dump_tvout_runtime_sign_D
    integer fp;
    dump_tvout_finish_D = 0;
    fp = $fopen(`AUTOTB_TVOUT_D_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_D_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_D_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_D_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_D = 1;
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