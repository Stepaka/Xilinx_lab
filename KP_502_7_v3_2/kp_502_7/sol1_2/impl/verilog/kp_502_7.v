// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="kp_502_7_kp_502_7,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a200t-sbv484-2,HLS_INPUT_CLOCK=14.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=12.766000,HLS_SYN_LAT=209,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=1409,HLS_SYN_LUT=4038,HLS_VERSION=2021_2}" *)

module kp_502_7 (
        ap_local_block,
        ap_local_deadlock,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_address0,
        A_ce0,
        A_q0,
        B_address0,
        B_ce0,
        B_q0,
        C_address0,
        C_ce0,
        C_q0,
        X1_address0,
        X1_ce0,
        X1_we0,
        X1_d0,
        X2_address0,
        X2_ce0,
        X2_we0,
        X2_d0,
        D_address0,
        D_ce0,
        D_we0,
        D_d0
);

parameter    ap_ST_fsm_state1 = 50'd1;
parameter    ap_ST_fsm_state2 = 50'd2;
parameter    ap_ST_fsm_state3 = 50'd4;
parameter    ap_ST_fsm_state4 = 50'd8;
parameter    ap_ST_fsm_state5 = 50'd16;
parameter    ap_ST_fsm_state6 = 50'd32;
parameter    ap_ST_fsm_state7 = 50'd64;
parameter    ap_ST_fsm_state8 = 50'd128;
parameter    ap_ST_fsm_state9 = 50'd256;
parameter    ap_ST_fsm_state10 = 50'd512;
parameter    ap_ST_fsm_state11 = 50'd1024;
parameter    ap_ST_fsm_state12 = 50'd2048;
parameter    ap_ST_fsm_state13 = 50'd4096;
parameter    ap_ST_fsm_state14 = 50'd8192;
parameter    ap_ST_fsm_state15 = 50'd16384;
parameter    ap_ST_fsm_state16 = 50'd32768;
parameter    ap_ST_fsm_state17 = 50'd65536;
parameter    ap_ST_fsm_state18 = 50'd131072;
parameter    ap_ST_fsm_state19 = 50'd262144;
parameter    ap_ST_fsm_state20 = 50'd524288;
parameter    ap_ST_fsm_state21 = 50'd1048576;
parameter    ap_ST_fsm_state22 = 50'd2097152;
parameter    ap_ST_fsm_state23 = 50'd4194304;
parameter    ap_ST_fsm_state24 = 50'd8388608;
parameter    ap_ST_fsm_state25 = 50'd16777216;
parameter    ap_ST_fsm_state26 = 50'd33554432;
parameter    ap_ST_fsm_state27 = 50'd67108864;
parameter    ap_ST_fsm_state28 = 50'd134217728;
parameter    ap_ST_fsm_state29 = 50'd268435456;
parameter    ap_ST_fsm_state30 = 50'd536870912;
parameter    ap_ST_fsm_state31 = 50'd1073741824;
parameter    ap_ST_fsm_state32 = 50'd2147483648;
parameter    ap_ST_fsm_state33 = 50'd4294967296;
parameter    ap_ST_fsm_state34 = 50'd8589934592;
parameter    ap_ST_fsm_state35 = 50'd17179869184;
parameter    ap_ST_fsm_state36 = 50'd34359738368;
parameter    ap_ST_fsm_state37 = 50'd68719476736;
parameter    ap_ST_fsm_state38 = 50'd137438953472;
parameter    ap_ST_fsm_state39 = 50'd274877906944;
parameter    ap_ST_fsm_state40 = 50'd549755813888;
parameter    ap_ST_fsm_state41 = 50'd1099511627776;
parameter    ap_ST_fsm_state42 = 50'd2199023255552;
parameter    ap_ST_fsm_state43 = 50'd4398046511104;
parameter    ap_ST_fsm_state44 = 50'd8796093022208;
parameter    ap_ST_fsm_state45 = 50'd17592186044416;
parameter    ap_ST_fsm_state46 = 50'd35184372088832;
parameter    ap_ST_fsm_state47 = 50'd70368744177664;
parameter    ap_ST_fsm_state48 = 50'd140737488355328;
parameter    ap_ST_fsm_state49 = 50'd281474976710656;
parameter    ap_ST_fsm_state50 = 50'd562949953421312;

output   ap_local_block;
output   ap_local_deadlock;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] A_address0;
output   A_ce0;
input  [31:0] A_q0;
output  [2:0] B_address0;
output   B_ce0;
input  [31:0] B_q0;
output  [2:0] C_address0;
output   C_ce0;
input  [31:0] C_q0;
output  [2:0] X1_address0;
output   X1_ce0;
output   X1_we0;
output  [31:0] X1_d0;
output  [2:0] X2_address0;
output   X2_ce0;
output   X2_we0;
output  [31:0] X2_d0;
output  [2:0] D_address0;
output   D_ce0;
output   D_we0;
output  [31:0] D_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg A_ce0;
reg B_ce0;
reg C_ce0;
reg X1_ce0;
reg X1_we0;
reg X2_ce0;
reg X2_we0;
reg D_ce0;
reg D_we0;

(* fsm_encoding = "none" *) reg   [49:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] grp_fu_184_p1;
reg   [63:0] reg_192;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state28;
wire   [63:0] zext_ln6_fu_209_p1;
reg   [63:0] zext_ln6_reg_558;
wire    ap_CS_fsm_state2;
wire   [3:0] add_ln6_fu_222_p2;
reg   [3:0] add_ln6_reg_568;
wire   [0:0] icmp_ln6_fu_216_p2;
reg  signed [31:0] temp_B_reg_588;
wire    ap_CS_fsm_state3;
reg  signed [31:0] temp_A_reg_593;
wire   [31:0] temp_D_fu_246_p2;
reg   [31:0] temp_D_reg_598;
wire   [0:0] tmp_1_fu_253_p3;
reg   [0:0] tmp_1_reg_603;
wire   [63:0] grp_fu_187_p2;
reg   [63:0] tmp_reg_607;
wire   [31:0] shl_ln19_fu_261_p2;
wire    ap_CS_fsm_state25;
wire   [63:0] grp_fu_168_p2;
reg   [63:0] sub_reg_618;
wire   [63:0] grp_fu_172_p2;
reg   [63:0] add_reg_623;
wire   [63:0] grp_fu_176_p2;
reg   [63:0] dc_reg_628;
wire    ap_CS_fsm_state49;
wire   [63:0] grp_fu_180_p2;
reg   [63:0] dc_1_reg_633;
wire    ap_CS_fsm_state50;
reg   [3:0] i_fu_86;
wire    ap_CS_fsm_state29;
reg   [31:0] grp_fu_184_p0;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state21;
wire    ap_CS_fsm_state8;
wire   [31:0] mul_ln11_1_fu_234_p2;
wire   [31:0] mul_ln11_fu_228_p2;
wire   [31:0] shl_ln11_fu_240_p2;
wire   [63:0] data_V_fu_267_p1;
wire   [51:0] tmp_17_fu_288_p1;
wire   [53:0] mantissa_fu_292_p4;
wire   [10:0] tmp_16_fu_278_p4;
wire   [11:0] zext_ln513_fu_306_p1;
wire   [11:0] add_ln513_fu_310_p2;
wire   [10:0] sub_ln1364_fu_324_p2;
wire   [0:0] isNeg_fu_316_p3;
wire  signed [11:0] sext_ln1364_fu_330_p1;
wire   [11:0] ush_fu_334_p3;
wire  signed [31:0] sext_ln1340_fu_342_p1;
wire   [136:0] zext_ln15_fu_302_p1;
wire   [136:0] zext_ln1340_fu_346_p1;
wire   [136:0] r_V_fu_350_p2;
wire   [0:0] tmp_8_fu_362_p3;
wire   [136:0] r_V_1_fu_356_p2;
wire   [31:0] zext_ln671_fu_370_p1;
wire   [31:0] tmp_7_fu_374_p4;
wire   [31:0] val_fu_384_p3;
wire   [0:0] p_Result_s_fu_270_p3;
wire   [31:0] result_V_2_fu_392_p2;
wire   [63:0] data_V_1_fu_407_p1;
wire   [51:0] tmp_19_fu_428_p1;
wire   [53:0] mantissa_1_fu_432_p4;
wire   [10:0] tmp_18_fu_418_p4;
wire   [11:0] zext_ln513_1_fu_446_p1;
wire   [11:0] add_ln513_1_fu_450_p2;
wire   [10:0] sub_ln1364_1_fu_464_p2;
wire   [0:0] isNeg_1_fu_456_p3;
wire  signed [11:0] sext_ln1364_1_fu_470_p1;
wire   [11:0] ush_1_fu_474_p3;
wire  signed [31:0] sext_ln1340_1_fu_482_p1;
wire   [136:0] zext_ln15_1_fu_442_p1;
wire   [136:0] zext_ln1340_1_fu_486_p1;
wire   [136:0] r_V_2_fu_490_p2;
wire   [0:0] tmp_15_fu_502_p3;
wire   [136:0] r_V_3_fu_496_p2;
wire   [31:0] zext_ln671_1_fu_510_p1;
wire   [31:0] tmp_s_fu_514_p4;
wire   [31:0] val_1_fu_524_p3;
wire   [0:0] p_Result_1_fu_410_p3;
wire   [31:0] result_V_6_fu_532_p2;
reg   [49:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
wire    ap_ST_fsm_state31_blk;
wire    ap_ST_fsm_state32_blk;
wire    ap_ST_fsm_state33_blk;
wire    ap_ST_fsm_state34_blk;
wire    ap_ST_fsm_state35_blk;
wire    ap_ST_fsm_state36_blk;
wire    ap_ST_fsm_state37_blk;
wire    ap_ST_fsm_state38_blk;
wire    ap_ST_fsm_state39_blk;
wire    ap_ST_fsm_state40_blk;
wire    ap_ST_fsm_state41_blk;
wire    ap_ST_fsm_state42_blk;
wire    ap_ST_fsm_state43_blk;
wire    ap_ST_fsm_state44_blk;
wire    ap_ST_fsm_state45_blk;
wire    ap_ST_fsm_state46_blk;
wire    ap_ST_fsm_state47_blk;
wire    ap_ST_fsm_state48_blk;
wire    ap_ST_fsm_state49_blk;
wire    ap_ST_fsm_state50_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 50'd1;
end

kp_502_7_dsub_64ns_64ns_64_4_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
dsub_64ns_64ns_64_4_full_dsp_1_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(reg_192),
    .din1(tmp_reg_607),
    .ce(1'b1),
    .dout(grp_fu_168_p2)
);

kp_502_7_dadd_64ns_64ns_64_4_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
dadd_64ns_64ns_64_4_full_dsp_1_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(reg_192),
    .din1(tmp_reg_607),
    .ce(1'b1),
    .dout(grp_fu_172_p2)
);

kp_502_7_ddiv_64ns_64ns_64_21_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 21 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_21_no_dsp_1_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sub_reg_618),
    .din1(reg_192),
    .ce(1'b1),
    .dout(grp_fu_176_p2)
);

kp_502_7_ddiv_64ns_64ns_64_21_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 21 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_21_no_dsp_1_U4(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(add_reg_623),
    .din1(reg_192),
    .ce(1'b1),
    .dout(grp_fu_180_p2)
);

kp_502_7_sitodp_32ns_64_4_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
sitodp_32ns_64_4_no_dsp_1_U5(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_184_p0),
    .ce(1'b1),
    .dout(grp_fu_184_p1)
);

kp_502_7_dsqrt_64ns_64ns_64_17_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 17 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_17_no_dsp_1_U6(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(64'd0),
    .din1(reg_192),
    .ce(1'b1),
    .dout(grp_fu_187_p2)
);

kp_502_7_mul_32s_32s_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U7(
    .din0(B_q0),
    .din1(B_q0),
    .dout(mul_ln11_fu_228_p2)
);

kp_502_7_mul_32s_32s_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U8(
    .din0(A_q0),
    .din1(C_q0),
    .dout(mul_ln11_1_fu_234_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_86 <= 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        i_fu_86 <= add_ln6_reg_568;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln6_reg_568 <= add_ln6_fu_222_p2;
        zext_ln6_reg_558[3 : 0] <= zext_ln6_fu_209_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        add_reg_623 <= grp_fu_172_p2;
        sub_reg_618 <= grp_fu_168_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        dc_1_reg_633 <= grp_fu_180_p2;
        dc_reg_628 <= grp_fu_176_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_192 <= grp_fu_184_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        temp_A_reg_593 <= A_q0;
        temp_B_reg_588 <= B_q0;
        temp_D_reg_598 <= temp_D_fu_246_p2;
        tmp_1_reg_603 <= temp_D_fu_246_p2[32'd31];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        tmp_reg_607 <= grp_fu_187_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        A_ce0 = 1'b1;
    end else begin
        A_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        B_ce0 = 1'b1;
    end else begin
        B_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        C_ce0 = 1'b1;
    end else begin
        C_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        D_ce0 = 1'b1;
    end else begin
        D_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        D_we0 = 1'b1;
    end else begin
        D_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        X1_ce0 = 1'b1;
    end else begin
        X1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state50) & (tmp_1_reg_603 == 1'd0))) begin
        X1_we0 = 1'b1;
    end else begin
        X1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        X2_ce0 = 1'b1;
    end else begin
        X2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state50) & (tmp_1_reg_603 == 1'd0))) begin
        X2_we0 = 1'b1;
    end else begin
        X2_we0 = 1'b0;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

assign ap_ST_fsm_state11_blk = 1'b0;

assign ap_ST_fsm_state12_blk = 1'b0;

assign ap_ST_fsm_state13_blk = 1'b0;

assign ap_ST_fsm_state14_blk = 1'b0;

assign ap_ST_fsm_state15_blk = 1'b0;

assign ap_ST_fsm_state16_blk = 1'b0;

assign ap_ST_fsm_state17_blk = 1'b0;

assign ap_ST_fsm_state18_blk = 1'b0;

assign ap_ST_fsm_state19_blk = 1'b0;

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state20_blk = 1'b0;

assign ap_ST_fsm_state21_blk = 1'b0;

assign ap_ST_fsm_state22_blk = 1'b0;

assign ap_ST_fsm_state23_blk = 1'b0;

assign ap_ST_fsm_state24_blk = 1'b0;

assign ap_ST_fsm_state25_blk = 1'b0;

assign ap_ST_fsm_state26_blk = 1'b0;

assign ap_ST_fsm_state27_blk = 1'b0;

assign ap_ST_fsm_state28_blk = 1'b0;

assign ap_ST_fsm_state29_blk = 1'b0;

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state30_blk = 1'b0;

assign ap_ST_fsm_state31_blk = 1'b0;

assign ap_ST_fsm_state32_blk = 1'b0;

assign ap_ST_fsm_state33_blk = 1'b0;

assign ap_ST_fsm_state34_blk = 1'b0;

assign ap_ST_fsm_state35_blk = 1'b0;

assign ap_ST_fsm_state36_blk = 1'b0;

assign ap_ST_fsm_state37_blk = 1'b0;

assign ap_ST_fsm_state38_blk = 1'b0;

assign ap_ST_fsm_state39_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state40_blk = 1'b0;

assign ap_ST_fsm_state41_blk = 1'b0;

assign ap_ST_fsm_state42_blk = 1'b0;

assign ap_ST_fsm_state43_blk = 1'b0;

assign ap_ST_fsm_state44_blk = 1'b0;

assign ap_ST_fsm_state45_blk = 1'b0;

assign ap_ST_fsm_state46_blk = 1'b0;

assign ap_ST_fsm_state47_blk = 1'b0;

assign ap_ST_fsm_state48_blk = 1'b0;

assign ap_ST_fsm_state49_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state50_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln6_fu_216_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln6_fu_216_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_184_p0 = shl_ln19_fu_261_p2;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_184_p0 = temp_B_reg_588;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_184_p0 = temp_D_reg_598;
    end else begin
        grp_fu_184_p0 = 'bx;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln6_fu_216_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (tmp_1_fu_253_p3 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state50;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            ap_NS_fsm = ap_ST_fsm_state50;
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_address0 = zext_ln6_fu_209_p1;

assign B_address0 = zext_ln6_fu_209_p1;

assign C_address0 = zext_ln6_fu_209_p1;

assign D_address0 = zext_ln6_reg_558;

assign D_d0 = temp_D_fu_246_p2;

assign X1_address0 = zext_ln6_reg_558;

assign X1_d0 = ((p_Result_s_fu_270_p3[0:0] == 1'b1) ? result_V_2_fu_392_p2 : val_fu_384_p3);

assign X2_address0 = zext_ln6_reg_558;

assign X2_d0 = ((p_Result_1_fu_410_p3[0:0] == 1'b1) ? result_V_6_fu_532_p2 : val_1_fu_524_p3);

assign add_ln513_1_fu_450_p2 = ($signed(zext_ln513_1_fu_446_p1) + $signed(12'd3073));

assign add_ln513_fu_310_p2 = ($signed(zext_ln513_fu_306_p1) + $signed(12'd3073));

assign add_ln6_fu_222_p2 = (i_fu_86 + 4'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];

assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];

assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state49 = ap_CS_fsm[32'd48];

assign ap_CS_fsm_state50 = ap_CS_fsm[32'd49];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_local_block = 1'b0;

assign ap_local_deadlock = 1'b0;

assign data_V_1_fu_407_p1 = dc_1_reg_633;

assign data_V_fu_267_p1 = dc_reg_628;

assign icmp_ln6_fu_216_p2 = ((i_fu_86 == 4'd8) ? 1'b1 : 1'b0);

assign isNeg_1_fu_456_p3 = add_ln513_1_fu_450_p2[32'd11];

assign isNeg_fu_316_p3 = add_ln513_fu_310_p2[32'd11];

assign mantissa_1_fu_432_p4 = {{{{1'd1}, {tmp_19_fu_428_p1}}}, {1'd0}};

assign mantissa_fu_292_p4 = {{{{1'd1}, {tmp_17_fu_288_p1}}}, {1'd0}};

assign p_Result_1_fu_410_p3 = data_V_1_fu_407_p1[32'd63];

assign p_Result_s_fu_270_p3 = data_V_fu_267_p1[32'd63];

assign r_V_1_fu_356_p2 = zext_ln15_fu_302_p1 << zext_ln1340_fu_346_p1;

assign r_V_2_fu_490_p2 = zext_ln15_1_fu_442_p1 >> zext_ln1340_1_fu_486_p1;

assign r_V_3_fu_496_p2 = zext_ln15_1_fu_442_p1 << zext_ln1340_1_fu_486_p1;

assign r_V_fu_350_p2 = zext_ln15_fu_302_p1 >> zext_ln1340_fu_346_p1;

assign result_V_2_fu_392_p2 = (32'd0 - val_fu_384_p3);

assign result_V_6_fu_532_p2 = (32'd0 - val_1_fu_524_p3);

assign sext_ln1340_1_fu_482_p1 = $signed(ush_1_fu_474_p3);

assign sext_ln1340_fu_342_p1 = $signed(ush_fu_334_p3);

assign sext_ln1364_1_fu_470_p1 = $signed(sub_ln1364_1_fu_464_p2);

assign sext_ln1364_fu_330_p1 = $signed(sub_ln1364_fu_324_p2);

assign shl_ln11_fu_240_p2 = mul_ln11_1_fu_234_p2 << 32'd2;

assign shl_ln19_fu_261_p2 = temp_A_reg_593 << 32'd1;

assign sub_ln1364_1_fu_464_p2 = (11'd1023 - tmp_18_fu_418_p4);

assign sub_ln1364_fu_324_p2 = (11'd1023 - tmp_16_fu_278_p4);

assign temp_D_fu_246_p2 = (mul_ln11_fu_228_p2 - shl_ln11_fu_240_p2);

assign tmp_15_fu_502_p3 = r_V_2_fu_490_p2[32'd53];

assign tmp_16_fu_278_p4 = {{data_V_fu_267_p1[62:52]}};

assign tmp_17_fu_288_p1 = data_V_fu_267_p1[51:0];

assign tmp_18_fu_418_p4 = {{data_V_1_fu_407_p1[62:52]}};

assign tmp_19_fu_428_p1 = data_V_1_fu_407_p1[51:0];

assign tmp_1_fu_253_p3 = temp_D_fu_246_p2[32'd31];

assign tmp_7_fu_374_p4 = {{r_V_1_fu_356_p2[84:53]}};

assign tmp_8_fu_362_p3 = r_V_fu_350_p2[32'd53];

assign tmp_s_fu_514_p4 = {{r_V_3_fu_496_p2[84:53]}};

assign ush_1_fu_474_p3 = ((isNeg_1_fu_456_p3[0:0] == 1'b1) ? sext_ln1364_1_fu_470_p1 : add_ln513_1_fu_450_p2);

assign ush_fu_334_p3 = ((isNeg_fu_316_p3[0:0] == 1'b1) ? sext_ln1364_fu_330_p1 : add_ln513_fu_310_p2);

assign val_1_fu_524_p3 = ((isNeg_1_fu_456_p3[0:0] == 1'b1) ? zext_ln671_1_fu_510_p1 : tmp_s_fu_514_p4);

assign val_fu_384_p3 = ((isNeg_fu_316_p3[0:0] == 1'b1) ? zext_ln671_fu_370_p1 : tmp_7_fu_374_p4);

assign zext_ln1340_1_fu_486_p1 = $unsigned(sext_ln1340_1_fu_482_p1);

assign zext_ln1340_fu_346_p1 = $unsigned(sext_ln1340_fu_342_p1);

assign zext_ln15_1_fu_442_p1 = mantissa_1_fu_432_p4;

assign zext_ln15_fu_302_p1 = mantissa_fu_292_p4;

assign zext_ln513_1_fu_446_p1 = tmp_18_fu_418_p4;

assign zext_ln513_fu_306_p1 = tmp_16_fu_278_p4;

assign zext_ln671_1_fu_510_p1 = tmp_15_fu_502_p3;

assign zext_ln671_fu_370_p1 = tmp_8_fu_362_p3;

assign zext_ln6_fu_209_p1 = i_fu_86;

always @ (posedge ap_clk) begin
    zext_ln6_reg_558[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //kp_502_7