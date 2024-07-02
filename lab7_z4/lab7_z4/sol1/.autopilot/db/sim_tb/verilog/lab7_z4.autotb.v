// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      lab7_z4
`define AUTOTB_DUT_INST AESL_inst_lab7_z4
`define AUTOTB_TOP      apatb_lab7_z4_top
`define AUTOTB_LAT_RESULT_FILE "lab7_z4.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "lab7_z4.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_lab7_z4_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_MEM_a AESL_automem_a
`define AESL_MEM_INST_a mem_inst_a
`define AESL_MEM_b AESL_automem_b
`define AESL_MEM_INST_b mem_inst_b
`define AESL_MEM_c AESL_automem_c
`define AESL_MEM_INST_c mem_inst_c
`define AUTOTB_TVIN_a  "./c.lab7_z4.autotvin_a.dat"
`define AUTOTB_TVIN_b  "./c.lab7_z4.autotvin_b.dat"
`define AUTOTB_TVIN_c  "./c.lab7_z4.autotvin_c.dat"
`define AUTOTB_TVIN_a_out_wrapc  "./rtl.lab7_z4.autotvin_a.dat"
`define AUTOTB_TVIN_b_out_wrapc  "./rtl.lab7_z4.autotvin_b.dat"
`define AUTOTB_TVIN_c_out_wrapc  "./rtl.lab7_z4.autotvin_c.dat"
`define AUTOTB_TVOUT_a  "./c.lab7_z4.autotvout_a.dat"
`define AUTOTB_TVOUT_a_out_wrapc  "./impl_rtl.lab7_z4.autotvout_a.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 3;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 641;
parameter LENGTH_a = 128;
parameter LENGTH_b = 128;
parameter LENGTH_c = 128;

task read_token;
    input integer fp;
    output reg [535 : 0] token;
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
    reg [535 : 0] token1;
    reg [535 : 0] token2;
    reg [535 : 0] golden;
    reg [535 : 0] result;
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
wire [6 : 0] a_address0;
wire  a_ce0;
wire  a_we0;
wire [255 : 0] a_d0;
wire [6 : 0] b_address0;
wire  b_ce0;
wire [255 : 0] b_q0;
wire [6 : 0] c_address0;
wire  c_ce0;
wire [255 : 0] c_q0;
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
    .a_address0(a_address0),
    .a_ce0(a_ce0),
    .a_we0(a_we0),
    .a_d0(a_d0),
    .b_address0(b_address0),
    .b_ce0(b_ce0),
    .b_q0(b_q0),
    .c_address0(c_address0),
    .c_ce0(c_ce0),
    .c_q0(c_q0));

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
//------------------------arraya Instantiation--------------

// The input and output of arraya
wire    arraya_ce0, arraya_ce1;
wire [32 - 1 : 0]    arraya_we0, arraya_we1;
wire    [6 : 0]    arraya_address0, arraya_address1;
wire    [255 : 0]    arraya_din0, arraya_din1;
wire    [255 : 0]    arraya_dout0, arraya_dout1;
wire    arraya_ready;
wire    arraya_done;

`AESL_MEM_a `AESL_MEM_INST_a(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arraya_ce0),
    .we0        (arraya_we0),
    .address0   (arraya_address0),
    .din0       (arraya_din0),
    .dout0      (arraya_dout0),
    .ce1        (arraya_ce1),
    .we1        (arraya_we1),
    .address1   (arraya_address1),
    .din1       (arraya_din1),
    .dout1      (arraya_dout1),
    .ready      (arraya_ready),
    .done    (arraya_done)
);

// Assignment between dut and arraya
assign arraya_address0 = a_address0;
assign arraya_ce0 = a_ce0;
assign arraya_we0[0] = a_we0;
assign arraya_we0[1] = a_we0;
assign arraya_we0[2] = a_we0;
assign arraya_we0[3] = a_we0;
assign arraya_we0[4] = a_we0;
assign arraya_we0[5] = a_we0;
assign arraya_we0[6] = a_we0;
assign arraya_we0[7] = a_we0;
assign arraya_we0[8] = a_we0;
assign arraya_we0[9] = a_we0;
assign arraya_we0[10] = a_we0;
assign arraya_we0[11] = a_we0;
assign arraya_we0[12] = a_we0;
assign arraya_we0[13] = a_we0;
assign arraya_we0[14] = a_we0;
assign arraya_we0[15] = a_we0;
assign arraya_we0[16] = a_we0;
assign arraya_we0[17] = a_we0;
assign arraya_we0[18] = a_we0;
assign arraya_we0[19] = a_we0;
assign arraya_we0[20] = a_we0;
assign arraya_we0[21] = a_we0;
assign arraya_we0[22] = a_we0;
assign arraya_we0[23] = a_we0;
assign arraya_we0[24] = a_we0;
assign arraya_we0[25] = a_we0;
assign arraya_we0[26] = a_we0;
assign arraya_we0[27] = a_we0;
assign arraya_we0[28] = a_we0;
assign arraya_we0[29] = a_we0;
assign arraya_we0[30] = a_we0;
assign arraya_we0[31] = a_we0;
assign arraya_din0 = a_d0;
assign arraya_we1 = 0;
assign arraya_din1 = 0;
assign arraya_ready= ready_initial | arraya_done;
assign arraya_done =    AESL_done_delay;


//------------------------arrayb Instantiation--------------

// The input and output of arrayb
wire    arrayb_ce0, arrayb_ce1;
wire [32 - 1 : 0]    arrayb_we0, arrayb_we1;
wire    [6 : 0]    arrayb_address0, arrayb_address1;
wire    [255 : 0]    arrayb_din0, arrayb_din1;
wire    [255 : 0]    arrayb_dout0, arrayb_dout1;
wire    arrayb_ready;
wire    arrayb_done;

`AESL_MEM_b `AESL_MEM_INST_b(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayb_ce0),
    .we0        (arrayb_we0),
    .address0   (arrayb_address0),
    .din0       (arrayb_din0),
    .dout0      (arrayb_dout0),
    .ce1        (arrayb_ce1),
    .we1        (arrayb_we1),
    .address1   (arrayb_address1),
    .din1       (arrayb_din1),
    .dout1      (arrayb_dout1),
    .ready      (arrayb_ready),
    .done    (arrayb_done)
);

// Assignment between dut and arrayb
assign arrayb_address0 = b_address0;
assign arrayb_ce0 = b_ce0;
assign b_q0 = arrayb_dout0;
assign arrayb_we0 = 0;
assign arrayb_din0 = 0;
assign arrayb_we1 = 0;
assign arrayb_din1 = 0;
assign arrayb_ready=    ready;
assign arrayb_done = 0;


//------------------------arrayc Instantiation--------------

// The input and output of arrayc
wire    arrayc_ce0, arrayc_ce1;
wire [32 - 1 : 0]    arrayc_we0, arrayc_we1;
wire    [6 : 0]    arrayc_address0, arrayc_address1;
wire    [255 : 0]    arrayc_din0, arrayc_din1;
wire    [255 : 0]    arrayc_dout0, arrayc_dout1;
wire    arrayc_ready;
wire    arrayc_done;

`AESL_MEM_c `AESL_MEM_INST_c(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayc_ce0),
    .we0        (arrayc_we0),
    .address0   (arrayc_address0),
    .din0       (arrayc_din0),
    .dout0      (arrayc_dout0),
    .ce1        (arrayc_ce1),
    .we1        (arrayc_we1),
    .address1   (arrayc_address1),
    .din1       (arrayc_din1),
    .dout1      (arrayc_dout1),
    .ready      (arrayc_ready),
    .done    (arrayc_done)
);

// Assignment between dut and arrayc
assign arrayc_address0 = c_address0;
assign arrayc_ce0 = c_ce0;
assign c_q0 = arrayc_dout0;
assign arrayc_we0 = 0;
assign arrayc_din0 = 0;
assign arrayc_we1 = 0;
assign arrayc_din1 = 0;
assign arrayc_ready=    ready;
assign arrayc_done = 0;


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
    fp1 = $fopen("./rtl.lab7_z4.autotvout_a.dat", "r");
    fp2 = $fopen("./impl_rtl.lab7_z4.autotvout_a.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.lab7_z4.autotvout_a.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.lab7_z4.autotvout_a.dat\"!");
    else begin
        $display("Comparing rtl.lab7_z4.autotvout_a.dat with impl_rtl.lab7_z4.autotvout_a.dat");
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


reg end_a;
reg [31:0] size_a;
reg [31:0] size_a_backup;
reg end_b;
reg [31:0] size_b;
reg [31:0] size_b_backup;
reg end_c;
reg [31:0] size_c;
reg [31:0] size_c_backup;

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

reg dump_tvout_finish_a;

initial begin : dump_tvout_runtime_sign_a
    integer fp;
    dump_tvout_finish_a = 0;
    fp = $fopen(`AUTOTB_TVOUT_a_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_a_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_a_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_a_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_a = 1;
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
