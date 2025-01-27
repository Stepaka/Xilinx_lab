// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="lab4_z1_lab4_z1,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12t-csg325-1Q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.470000,HLS_SYN_LAT=11,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=590,HLS_SYN_LUT=345,HLS_VERSION=2021_2}" *)

module lab4_z1 (
        ap_local_block,
        ap_local_deadlock,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_a_address0,
        in_a_ce0,
        in_a_q0,
        in_b_address0,
        in_b_ce0,
        in_b_q0,
        in_b_address1,
        in_b_ce1,
        in_b_q1,
        res_address0,
        res_ce0,
        res_we0,
        res_d0
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_pp0_stage1 = 3'd4;

output   ap_local_block;
output   ap_local_deadlock;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] in_a_address0;
output   in_a_ce0;
input  [31:0] in_a_q0;
output  [1:0] in_b_address0;
output   in_b_ce0;
input  [31:0] in_b_q0;
output  [1:0] in_b_address1;
output   in_b_ce1;
input  [31:0] in_b_q1;
output  [1:0] res_address0;
output   res_ce0;
output   res_we0;
output  [31:0] res_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_a_ce0;
reg[1:0] in_b_address0;
reg in_b_ce0;
reg[1:0] in_b_address1;
reg in_b_ce1;
reg res_ce0;
reg res_we0;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [0:0] icmp_ln6_reg_325;
wire    ap_CS_fsm_pp0_stage1;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state3_pp0_stage1_iter0;
wire    ap_block_state5_pp0_stage1_iter1;
wire    ap_block_state7_pp0_stage1_iter2;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] do_init_reg_125;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state6_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] j1_reg_141;
reg   [31:0] in_b_load_3_phi_reg_216;
reg   [31:0] in_b_load_2_phi_reg_228;
reg   [31:0] in_b_load_1_phi_reg_240;
reg   [31:0] in_b_load_phi_reg_252;
wire   [63:0] zext_ln6_fu_264_p1;
reg   [63:0] zext_ln6_reg_315;
reg   [63:0] zext_ln6_reg_315_pp0_iter1_reg;
reg   [63:0] zext_ln6_reg_315_pp0_iter2_reg;
wire   [0:0] icmp_ln6_fu_269_p2;
reg   [0:0] icmp_ln6_reg_325_pp0_iter1_reg;
reg   [0:0] icmp_ln6_reg_325_pp0_iter2_reg;
reg   [31:0] in_b_load_reg_329;
reg   [31:0] in_b_load_1_reg_334;
reg  signed [31:0] temp_a_reg_349;
reg  signed [31:0] temp_a_reg_349_pp0_iter1_reg;
wire   [1:0] j_fu_275_p2;
reg   [1:0] j_reg_354;
reg    ap_enable_reg_pp0_iter1;
wire  signed [31:0] add_ln10_2_fu_293_p2;
reg  signed [31:0] add_ln10_2_reg_369;
wire   [31:0] product_fu_299_p2;
reg   [31:0] product_reg_374;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0;
reg   [1:0] ap_phi_mux_j1_phi_fu_145_p6;
wire   [31:0] ap_phi_reg_pp0_iter0_in_b_load_3_phi_reg_216;
reg   [31:0] ap_phi_reg_pp0_iter1_in_b_load_3_phi_reg_216;
wire   [31:0] ap_phi_reg_pp0_iter0_in_b_load_2_phi_reg_228;
reg   [31:0] ap_phi_reg_pp0_iter1_in_b_load_2_phi_reg_228;
wire   [31:0] ap_phi_reg_pp0_iter0_in_b_load_1_phi_reg_240;
reg   [31:0] ap_phi_reg_pp0_iter1_in_b_load_1_phi_reg_240;
wire   [31:0] ap_phi_reg_pp0_iter0_in_b_load_phi_reg_252;
reg   [31:0] ap_phi_reg_pp0_iter1_in_b_load_phi_reg_252;
wire    ap_block_pp0_stage1;
wire   [31:0] add_ln10_1_fu_287_p2;
wire   [31:0] add_ln10_fu_281_p2;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_163;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

lab4_z1_mul_32s_32s_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U1(
    .din0(temp_a_reg_349_pp0_iter1_reg),
    .din1(add_ln10_2_reg_369),
    .dout(product_fu_299_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((do_init_reg_125 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_in_b_load_1_phi_reg_240 <= in_b_load_1_phi_reg_240;
    end else if (((do_init_reg_125 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_in_b_load_1_phi_reg_240 <= in_b_load_1_reg_334;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_in_b_load_1_phi_reg_240 <= ap_phi_reg_pp0_iter0_in_b_load_1_phi_reg_240;
    end
end

always @ (posedge ap_clk) begin
    if (((do_init_reg_125 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_in_b_load_2_phi_reg_228 <= in_b_load_2_phi_reg_228;
    end else if (((do_init_reg_125 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_in_b_load_2_phi_reg_228 <= in_b_q1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_in_b_load_2_phi_reg_228 <= ap_phi_reg_pp0_iter0_in_b_load_2_phi_reg_228;
    end
end

always @ (posedge ap_clk) begin
    if (((do_init_reg_125 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_in_b_load_3_phi_reg_216 <= in_b_load_3_phi_reg_216;
    end else if (((do_init_reg_125 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_in_b_load_3_phi_reg_216 <= in_b_q0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_in_b_load_3_phi_reg_216 <= ap_phi_reg_pp0_iter0_in_b_load_3_phi_reg_216;
    end
end

always @ (posedge ap_clk) begin
    if (((do_init_reg_125 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_in_b_load_phi_reg_252 <= in_b_load_phi_reg_252;
    end else if (((do_init_reg_125 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_in_b_load_phi_reg_252 <= in_b_load_reg_329;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_in_b_load_phi_reg_252 <= ap_phi_reg_pp0_iter0_in_b_load_phi_reg_252;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln6_reg_325 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        do_init_reg_125 <= 1'd0;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln6_reg_325 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        do_init_reg_125 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln6_reg_325 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        j1_reg_141 <= j_reg_354;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln6_reg_325 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        j1_reg_141 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        add_ln10_2_reg_369 <= add_ln10_2_fu_293_p2;
        temp_a_reg_349 <= in_a_q0;
        temp_a_reg_349_pp0_iter1_reg <= temp_a_reg_349;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln6_reg_325 <= icmp_ln6_fu_269_p2;
        icmp_ln6_reg_325_pp0_iter1_reg <= icmp_ln6_reg_325;
        icmp_ln6_reg_325_pp0_iter2_reg <= icmp_ln6_reg_325_pp0_iter1_reg;
        product_reg_374 <= product_fu_299_p2;
        zext_ln6_reg_315[1 : 0] <= zext_ln6_fu_264_p1[1 : 0];
        zext_ln6_reg_315_pp0_iter1_reg[1 : 0] <= zext_ln6_reg_315[1 : 0];
        zext_ln6_reg_315_pp0_iter2_reg[1 : 0] <= zext_ln6_reg_315_pp0_iter1_reg[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        in_b_load_1_phi_reg_240 <= ap_phi_reg_pp0_iter1_in_b_load_1_phi_reg_240;
        in_b_load_2_phi_reg_228 <= ap_phi_reg_pp0_iter1_in_b_load_2_phi_reg_228;
        in_b_load_3_phi_reg_216 <= ap_phi_reg_pp0_iter1_in_b_load_3_phi_reg_216;
        in_b_load_phi_reg_252 <= ap_phi_reg_pp0_iter1_in_b_load_phi_reg_252;
    end
end

always @ (posedge ap_clk) begin
    if (((do_init_reg_125 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        in_b_load_1_reg_334 <= in_b_q0;
        in_b_load_reg_329 <= in_b_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        j_reg_354 <= j_fu_275_p2;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln6_reg_325_pp0_iter2_reg == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_163)) begin
        if ((icmp_ln6_reg_325 == 1'd1)) begin
            ap_phi_mux_j1_phi_fu_145_p6 = 2'd0;
        end else if ((icmp_ln6_reg_325 == 1'd0)) begin
            ap_phi_mux_j1_phi_fu_145_p6 = j_reg_354;
        end else begin
            ap_phi_mux_j1_phi_fu_145_p6 = j1_reg_141;
        end
    end else begin
        ap_phi_mux_j1_phi_fu_145_p6 = j1_reg_141;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln6_reg_325 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (ap_start == 1'b0))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        in_a_ce0 = 1'b1;
    end else begin
        in_a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            in_b_address0 = 64'd3;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            in_b_address0 = 64'd1;
        end else begin
            in_b_address0 = 'bx;
        end
    end else begin
        in_b_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            in_b_address1 = 64'd2;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            in_b_address1 = 64'd0;
        end else begin
            in_b_address1 = 'bx;
        end
    end else begin
        in_b_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        in_b_ce0 = 1'b1;
    end else begin
        in_b_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        in_b_ce1 = 1'b1;
    end else begin
        in_b_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        res_ce0 = 1'b1;
    end else begin
        res_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        res_we0 = 1'b1;
    end else begin
        res_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_reset_idle_pp0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_reset_idle_pp0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln10_1_fu_287_p2 = (ap_phi_reg_pp0_iter1_in_b_load_2_phi_reg_228 + ap_phi_reg_pp0_iter1_in_b_load_3_phi_reg_216);

assign add_ln10_2_fu_293_p2 = (add_ln10_1_fu_287_p2 + add_ln10_fu_281_p2);

assign add_ln10_fu_281_p2 = (ap_phi_reg_pp0_iter1_in_b_load_1_phi_reg_240 + ap_phi_reg_pp0_iter1_in_b_load_phi_reg_252);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_163 = ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_local_block = 1'b0;

assign ap_local_deadlock = 1'b0;

assign ap_phi_reg_pp0_iter0_in_b_load_1_phi_reg_240 = 'bx;

assign ap_phi_reg_pp0_iter0_in_b_load_2_phi_reg_228 = 'bx;

assign ap_phi_reg_pp0_iter0_in_b_load_3_phi_reg_216 = 'bx;

assign ap_phi_reg_pp0_iter0_in_b_load_phi_reg_252 = 'bx;

assign icmp_ln6_fu_269_p2 = ((ap_phi_mux_j1_phi_fu_145_p6 == 2'd3) ? 1'b1 : 1'b0);

assign in_a_address0 = zext_ln6_fu_264_p1;

assign j_fu_275_p2 = (j1_reg_141 + 2'd1);

assign res_address0 = zext_ln6_reg_315_pp0_iter2_reg;

assign res_d0 = product_reg_374;

assign zext_ln6_fu_264_p1 = ap_phi_mux_j1_phi_fu_145_p6;

always @ (posedge ap_clk) begin
    zext_ln6_reg_315[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln6_reg_315_pp0_iter1_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln6_reg_315_pp0_iter2_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
end

endmodule //lab4_z1
