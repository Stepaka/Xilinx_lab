// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="kp_502_7_kp_502_7,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a200t-sbv484-2,HLS_INPUT_CLOCK=6.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.938250,HLS_SYN_LAT=281,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=2692,HLS_SYN_LUT=2914,HLS_VERSION=2021_2}" *)

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

parameter    ap_ST_fsm_state1 = 93'd1;
parameter    ap_ST_fsm_state2 = 93'd2;
parameter    ap_ST_fsm_state3 = 93'd4;
parameter    ap_ST_fsm_state4 = 93'd8;
parameter    ap_ST_fsm_state5 = 93'd16;
parameter    ap_ST_fsm_state6 = 93'd32;
parameter    ap_ST_fsm_state7 = 93'd64;
parameter    ap_ST_fsm_state8 = 93'd128;
parameter    ap_ST_fsm_state9 = 93'd256;
parameter    ap_ST_fsm_state10 = 93'd512;
parameter    ap_ST_fsm_state11 = 93'd1024;
parameter    ap_ST_fsm_state12 = 93'd2048;
parameter    ap_ST_fsm_state13 = 93'd4096;
parameter    ap_ST_fsm_state14 = 93'd8192;
parameter    ap_ST_fsm_state15 = 93'd16384;
parameter    ap_ST_fsm_state16 = 93'd32768;
parameter    ap_ST_fsm_state17 = 93'd65536;
parameter    ap_ST_fsm_state18 = 93'd131072;
parameter    ap_ST_fsm_state19 = 93'd262144;
parameter    ap_ST_fsm_state20 = 93'd524288;
parameter    ap_ST_fsm_state21 = 93'd1048576;
parameter    ap_ST_fsm_state22 = 93'd2097152;
parameter    ap_ST_fsm_state23 = 93'd4194304;
parameter    ap_ST_fsm_state24 = 93'd8388608;
parameter    ap_ST_fsm_state25 = 93'd16777216;
parameter    ap_ST_fsm_state26 = 93'd33554432;
parameter    ap_ST_fsm_state27 = 93'd67108864;
parameter    ap_ST_fsm_state28 = 93'd134217728;
parameter    ap_ST_fsm_state29 = 93'd268435456;
parameter    ap_ST_fsm_state30 = 93'd536870912;
parameter    ap_ST_fsm_state31 = 93'd1073741824;
parameter    ap_ST_fsm_state32 = 93'd2147483648;
parameter    ap_ST_fsm_state33 = 93'd4294967296;
parameter    ap_ST_fsm_state34 = 93'd8589934592;
parameter    ap_ST_fsm_state35 = 93'd17179869184;
parameter    ap_ST_fsm_state36 = 93'd34359738368;
parameter    ap_ST_fsm_state37 = 93'd68719476736;
parameter    ap_ST_fsm_state38 = 93'd137438953472;
parameter    ap_ST_fsm_state39 = 93'd274877906944;
parameter    ap_ST_fsm_state40 = 93'd549755813888;
parameter    ap_ST_fsm_state41 = 93'd1099511627776;
parameter    ap_ST_fsm_state42 = 93'd2199023255552;
parameter    ap_ST_fsm_state43 = 93'd4398046511104;
parameter    ap_ST_fsm_state44 = 93'd8796093022208;
parameter    ap_ST_fsm_state45 = 93'd17592186044416;
parameter    ap_ST_fsm_state46 = 93'd35184372088832;
parameter    ap_ST_fsm_state47 = 93'd70368744177664;
parameter    ap_ST_fsm_state48 = 93'd140737488355328;
parameter    ap_ST_fsm_state49 = 93'd281474976710656;
parameter    ap_ST_fsm_state50 = 93'd562949953421312;
parameter    ap_ST_fsm_state51 = 93'd1125899906842624;
parameter    ap_ST_fsm_state52 = 93'd2251799813685248;
parameter    ap_ST_fsm_state53 = 93'd4503599627370496;
parameter    ap_ST_fsm_state54 = 93'd9007199254740992;
parameter    ap_ST_fsm_state55 = 93'd18014398509481984;
parameter    ap_ST_fsm_state56 = 93'd36028797018963968;
parameter    ap_ST_fsm_state57 = 93'd72057594037927936;
parameter    ap_ST_fsm_state58 = 93'd144115188075855872;
parameter    ap_ST_fsm_state59 = 93'd288230376151711744;
parameter    ap_ST_fsm_state60 = 93'd576460752303423488;
parameter    ap_ST_fsm_state61 = 93'd1152921504606846976;
parameter    ap_ST_fsm_state62 = 93'd2305843009213693952;
parameter    ap_ST_fsm_state63 = 93'd4611686018427387904;
parameter    ap_ST_fsm_state64 = 93'd9223372036854775808;
parameter    ap_ST_fsm_state65 = 93'd18446744073709551616;
parameter    ap_ST_fsm_state66 = 93'd36893488147419103232;
parameter    ap_ST_fsm_state67 = 93'd73786976294838206464;
parameter    ap_ST_fsm_state68 = 93'd147573952589676412928;
parameter    ap_ST_fsm_state69 = 93'd295147905179352825856;
parameter    ap_ST_fsm_state70 = 93'd590295810358705651712;
parameter    ap_ST_fsm_state71 = 93'd1180591620717411303424;
parameter    ap_ST_fsm_state72 = 93'd2361183241434822606848;
parameter    ap_ST_fsm_state73 = 93'd4722366482869645213696;
parameter    ap_ST_fsm_state74 = 93'd9444732965739290427392;
parameter    ap_ST_fsm_state75 = 93'd18889465931478580854784;
parameter    ap_ST_fsm_state76 = 93'd37778931862957161709568;
parameter    ap_ST_fsm_state77 = 93'd75557863725914323419136;
parameter    ap_ST_fsm_state78 = 93'd151115727451828646838272;
parameter    ap_ST_fsm_state79 = 93'd302231454903657293676544;
parameter    ap_ST_fsm_state80 = 93'd604462909807314587353088;
parameter    ap_ST_fsm_state81 = 93'd1208925819614629174706176;
parameter    ap_ST_fsm_state82 = 93'd2417851639229258349412352;
parameter    ap_ST_fsm_state83 = 93'd4835703278458516698824704;
parameter    ap_ST_fsm_state84 = 93'd9671406556917033397649408;
parameter    ap_ST_fsm_state85 = 93'd19342813113834066795298816;
parameter    ap_ST_fsm_state86 = 93'd38685626227668133590597632;
parameter    ap_ST_fsm_state87 = 93'd77371252455336267181195264;
parameter    ap_ST_fsm_state88 = 93'd154742504910672534362390528;
parameter    ap_ST_fsm_state89 = 93'd309485009821345068724781056;
parameter    ap_ST_fsm_state90 = 93'd618970019642690137449562112;
parameter    ap_ST_fsm_state91 = 93'd1237940039285380274899124224;
parameter    ap_ST_fsm_state92 = 93'd2475880078570760549798248448;
parameter    ap_ST_fsm_state93 = 93'd4951760157141521099596496896;

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
reg[2:0] X1_address0;
reg X1_ce0;
reg X1_we0;
reg[31:0] X1_d0;
reg[2:0] X2_address0;
reg X2_ce0;
reg X2_we0;
reg[31:0] X2_d0;
reg D_ce0;
reg D_we0;

(* fsm_encoding = "none" *) reg   [92:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] zext_ln8_fu_183_p1;
reg   [63:0] zext_ln8_reg_300;
wire    ap_CS_fsm_state2;
wire   [3:0] add_ln8_fu_196_p2;
reg   [3:0] add_ln8_reg_314;
wire   [0:0] icmp_ln8_fu_190_p2;
reg  signed [31:0] temp_B_reg_334;
wire    ap_CS_fsm_state3;
reg  signed [31:0] temp_A_reg_343;
reg  signed [31:0] C_load_reg_350;
wire   [31:0] grp_fu_202_p2;
reg   [31:0] mul_ln13_reg_355;
wire    ap_CS_fsm_state6;
wire   [31:0] grp_fu_206_p2;
reg   [31:0] mul_ln13_1_reg_361;
wire   [30:0] trunc_ln13_fu_221_p1;
reg   [30:0] trunc_ln13_reg_366;
wire    ap_CS_fsm_state7;
wire   [0:0] tmp_fu_225_p3;
reg   [0:0] tmp_reg_371;
wire   [0:0] icmp_ln21_fu_233_p2;
reg   [0:0] icmp_ln21_reg_375;
wire   [15:0] grp_sqrt_fixed_32_32_s_fu_170_ap_return;
reg   [15:0] p_Val2_s_reg_384;
wire    ap_CS_fsm_state19;
wire   [31:0] add_ln32_fu_251_p2;
reg   [31:0] add_ln32_reg_389;
wire    ap_CS_fsm_state20;
wire   [31:0] sub_ln33_fu_256_p2;
reg   [31:0] sub_ln33_reg_394;
wire   [31:0] shl_ln32_fu_261_p2;
wire    ap_CS_fsm_state21;
wire   [31:0] grp_fu_266_p2;
reg   [31:0] sdiv_ln32_reg_405;
wire    ap_CS_fsm_state56;
wire   [31:0] grp_fu_271_p2;
reg   [31:0] sdiv_ln33_reg_410;
wire   [31:0] grp_fu_243_p2;
reg   [31:0] sdiv_ln23_reg_415;
wire    ap_CS_fsm_state92;
wire    ap_CS_fsm_state8;
wire   [2:0] X1_addr_2_gep_fu_138_p3;
wire    ap_CS_fsm_state57;
wire   [2:0] X2_addr_2_gep_fu_146_p3;
wire   [2:0] X1_addr_1_gep_fu_154_p3;
wire    ap_CS_fsm_state93;
wire   [2:0] X2_addr_1_gep_fu_162_p3;
reg   [3:0] i_fu_54;
wire   [31:0] xf_V_fu_215_p2;
wire   [31:0] sub_ln32_fu_276_p2;
wire   [31:0] sub_ln23_fu_286_p2;
wire    ap_CS_fsm_state4;
wire   [31:0] shl_ln13_fu_210_p2;
wire   [31:0] grp_fu_243_p1;
wire   [31:0] zext_ln840_fu_248_p1;
reg    grp_fu_243_ap_start;
wire    grp_fu_243_ap_done;
reg    grp_fu_266_ap_start;
wire    grp_fu_266_ap_done;
reg    grp_fu_271_ap_start;
wire    grp_fu_271_ap_done;
reg   [92:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state51_blk;
wire    ap_ST_fsm_state52_blk;
wire    ap_ST_fsm_state53_blk;
wire    ap_ST_fsm_state54_blk;
wire    ap_ST_fsm_state55_blk;
wire    ap_ST_fsm_state56_blk;
wire    ap_ST_fsm_state57_blk;
wire    ap_ST_fsm_state58_blk;
wire    ap_ST_fsm_state59_blk;
wire    ap_ST_fsm_state60_blk;
wire    ap_ST_fsm_state61_blk;
wire    ap_ST_fsm_state62_blk;
wire    ap_ST_fsm_state63_blk;
wire    ap_ST_fsm_state64_blk;
wire    ap_ST_fsm_state65_blk;
wire    ap_ST_fsm_state66_blk;
wire    ap_ST_fsm_state67_blk;
wire    ap_ST_fsm_state68_blk;
wire    ap_ST_fsm_state69_blk;
wire    ap_ST_fsm_state70_blk;
wire    ap_ST_fsm_state71_blk;
wire    ap_ST_fsm_state72_blk;
wire    ap_ST_fsm_state73_blk;
wire    ap_ST_fsm_state74_blk;
wire    ap_ST_fsm_state75_blk;
wire    ap_ST_fsm_state76_blk;
wire    ap_ST_fsm_state77_blk;
wire    ap_ST_fsm_state78_blk;
wire    ap_ST_fsm_state79_blk;
wire    ap_ST_fsm_state80_blk;
wire    ap_ST_fsm_state81_blk;
wire    ap_ST_fsm_state82_blk;
wire    ap_ST_fsm_state83_blk;
wire    ap_ST_fsm_state84_blk;
wire    ap_ST_fsm_state85_blk;
wire    ap_ST_fsm_state86_blk;
wire    ap_ST_fsm_state87_blk;
wire    ap_ST_fsm_state88_blk;
wire    ap_ST_fsm_state89_blk;
wire    ap_ST_fsm_state90_blk;
wire    ap_ST_fsm_state91_blk;
wire    ap_ST_fsm_state92_blk;
wire    ap_ST_fsm_state93_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 93'd1;
end

kp_502_7_sqrt_fixed_32_32_s grp_sqrt_fixed_32_32_s_fu_170(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .x(trunc_ln13_reg_366),
    .ap_return(grp_sqrt_fixed_32_32_s_fu_170_ap_return)
);

kp_502_7_mul_32s_32s_32_3_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_3_1_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(temp_B_reg_334),
    .din1(temp_B_reg_334),
    .ce(1'b1),
    .dout(grp_fu_202_p2)
);

kp_502_7_mul_32s_32s_32_3_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_3_1_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(temp_A_reg_343),
    .din1(C_load_reg_350),
    .ce(1'b1),
    .dout(grp_fu_206_p2)
);

kp_502_7_sdiv_32s_32ns_32_36_seq_1 #(
    .ID( 1 ),
    .NUM_STAGE( 36 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sdiv_32s_32ns_32_36_seq_1_U4(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_243_ap_start),
    .done(grp_fu_243_ap_done),
    .din0(temp_B_reg_334),
    .din1(grp_fu_243_p1),
    .ce(1'b1),
    .dout(grp_fu_243_p2)
);

kp_502_7_sdiv_32ns_32ns_32_36_seq_1 #(
    .ID( 1 ),
    .NUM_STAGE( 36 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sdiv_32ns_32ns_32_36_seq_1_U5(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_266_ap_start),
    .done(grp_fu_266_ap_done),
    .din0(add_ln32_reg_389),
    .din1(shl_ln32_fu_261_p2),
    .ce(1'b1),
    .dout(grp_fu_266_p2)
);

kp_502_7_sdiv_32ns_32ns_32_36_seq_1 #(
    .ID( 1 ),
    .NUM_STAGE( 36 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sdiv_32ns_32ns_32_36_seq_1_U6(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_271_ap_start),
    .done(grp_fu_271_ap_done),
    .din0(sub_ln33_reg_394),
    .din1(shl_ln32_fu_261_p2),
    .ce(1'b1),
    .dout(grp_fu_271_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_54 <= 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        i_fu_54 <= add_ln8_reg_314;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        C_load_reg_350 <= C_q0;
        temp_A_reg_343 <= A_q0;
        temp_B_reg_334 <= B_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        add_ln32_reg_389 <= add_ln32_fu_251_p2;
        sub_ln33_reg_394 <= sub_ln33_fu_256_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln8_reg_314 <= add_ln8_fu_196_p2;
        zext_ln8_reg_300[3 : 0] <= zext_ln8_fu_183_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (tmp_fu_225_p3 == 1'd0))) begin
        icmp_ln21_reg_375 <= icmp_ln21_fu_233_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        mul_ln13_1_reg_361 <= grp_fu_206_p2;
        mul_ln13_reg_355 <= grp_fu_202_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        p_Val2_s_reg_384 <= grp_sqrt_fixed_32_32_s_fu_170_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state92)) begin
        sdiv_ln23_reg_415 <= grp_fu_243_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        sdiv_ln32_reg_405 <= grp_fu_266_p2;
        sdiv_ln33_reg_410 <= grp_fu_271_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_reg_371 <= xf_V_fu_215_p2[32'd31];
        trunc_ln13_reg_366 <= trunc_ln13_fu_221_p1;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        D_ce0 = 1'b1;
    end else begin
        D_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        D_we0 = 1'b1;
    end else begin
        D_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state93)) begin
        X1_address0 = X1_addr_1_gep_fu_154_p3;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        X1_address0 = X1_addr_2_gep_fu_138_p3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        X1_address0 = zext_ln8_reg_300;
    end else begin
        X1_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state7))) begin
        X1_ce0 = 1'b1;
    end else begin
        X1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state93)) begin
        X1_d0 = sub_ln23_fu_286_p2;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        X1_d0 = sub_ln32_fu_276_p2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        X1_d0 = 32'd0;
    end else begin
        X1_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state93) | ((1'b1 == ap_CS_fsm_state57) & (icmp_ln21_reg_375 == 1'd0) & (tmp_reg_371 == 1'd0)) | ((1'b1 == ap_CS_fsm_state7) & (tmp_fu_225_p3 == 1'd1)))) begin
        X1_we0 = 1'b1;
    end else begin
        X1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state93)) begin
        X2_address0 = X2_addr_1_gep_fu_162_p3;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        X2_address0 = X2_addr_2_gep_fu_146_p3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        X2_address0 = zext_ln8_reg_300;
    end else begin
        X2_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state7))) begin
        X2_ce0 = 1'b1;
    end else begin
        X2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state93)) begin
        X2_d0 = sub_ln23_fu_286_p2;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        X2_d0 = sdiv_ln33_reg_410;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        X2_d0 = 32'd0;
    end else begin
        X2_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state93) | ((1'b1 == ap_CS_fsm_state57) & (icmp_ln21_reg_375 == 1'd0) & (tmp_reg_371 == 1'd0)) | ((1'b1 == ap_CS_fsm_state7) & (tmp_fu_225_p3 == 1'd1)))) begin
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

assign ap_ST_fsm_state51_blk = 1'b0;

assign ap_ST_fsm_state52_blk = 1'b0;

assign ap_ST_fsm_state53_blk = 1'b0;

assign ap_ST_fsm_state54_blk = 1'b0;

assign ap_ST_fsm_state55_blk = 1'b0;

assign ap_ST_fsm_state56_blk = 1'b0;

assign ap_ST_fsm_state57_blk = 1'b0;

assign ap_ST_fsm_state58_blk = 1'b0;

assign ap_ST_fsm_state59_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state60_blk = 1'b0;

assign ap_ST_fsm_state61_blk = 1'b0;

assign ap_ST_fsm_state62_blk = 1'b0;

assign ap_ST_fsm_state63_blk = 1'b0;

assign ap_ST_fsm_state64_blk = 1'b0;

assign ap_ST_fsm_state65_blk = 1'b0;

assign ap_ST_fsm_state66_blk = 1'b0;

assign ap_ST_fsm_state67_blk = 1'b0;

assign ap_ST_fsm_state68_blk = 1'b0;

assign ap_ST_fsm_state69_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state70_blk = 1'b0;

assign ap_ST_fsm_state71_blk = 1'b0;

assign ap_ST_fsm_state72_blk = 1'b0;

assign ap_ST_fsm_state73_blk = 1'b0;

assign ap_ST_fsm_state74_blk = 1'b0;

assign ap_ST_fsm_state75_blk = 1'b0;

assign ap_ST_fsm_state76_blk = 1'b0;

assign ap_ST_fsm_state77_blk = 1'b0;

assign ap_ST_fsm_state78_blk = 1'b0;

assign ap_ST_fsm_state79_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state80_blk = 1'b0;

assign ap_ST_fsm_state81_blk = 1'b0;

assign ap_ST_fsm_state82_blk = 1'b0;

assign ap_ST_fsm_state83_blk = 1'b0;

assign ap_ST_fsm_state84_blk = 1'b0;

assign ap_ST_fsm_state85_blk = 1'b0;

assign ap_ST_fsm_state86_blk = 1'b0;

assign ap_ST_fsm_state87_blk = 1'b0;

assign ap_ST_fsm_state88_blk = 1'b0;

assign ap_ST_fsm_state89_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state90_blk = 1'b0;

assign ap_ST_fsm_state91_blk = 1'b0;

assign ap_ST_fsm_state92_blk = 1'b0;

assign ap_ST_fsm_state93_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln8_fu_190_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln8_fu_190_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln21_fu_233_p2 == 1'd1) & (tmp_fu_225_p3 == 1'd0))) begin
        grp_fu_243_ap_start = 1'b1;
    end else begin
        grp_fu_243_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_266_ap_start = 1'b1;
    end else begin
        grp_fu_266_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_271_ap_start = 1'b1;
    end else begin
        grp_fu_271_ap_start = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln8_fu_190_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
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
            if (((1'b1 == ap_CS_fsm_state7) & (tmp_fu_225_p3 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state57;
            end else if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln21_fu_233_p2 == 1'd1) & (tmp_fu_225_p3 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state58;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
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
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            ap_NS_fsm = ap_ST_fsm_state52;
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            ap_NS_fsm = ap_ST_fsm_state54;
        end
        ap_ST_fsm_state54 : begin
            ap_NS_fsm = ap_ST_fsm_state55;
        end
        ap_ST_fsm_state55 : begin
            ap_NS_fsm = ap_ST_fsm_state56;
        end
        ap_ST_fsm_state56 : begin
            ap_NS_fsm = ap_ST_fsm_state57;
        end
        ap_ST_fsm_state57 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state58 : begin
            ap_NS_fsm = ap_ST_fsm_state59;
        end
        ap_ST_fsm_state59 : begin
            ap_NS_fsm = ap_ST_fsm_state60;
        end
        ap_ST_fsm_state60 : begin
            ap_NS_fsm = ap_ST_fsm_state61;
        end
        ap_ST_fsm_state61 : begin
            ap_NS_fsm = ap_ST_fsm_state62;
        end
        ap_ST_fsm_state62 : begin
            ap_NS_fsm = ap_ST_fsm_state63;
        end
        ap_ST_fsm_state63 : begin
            ap_NS_fsm = ap_ST_fsm_state64;
        end
        ap_ST_fsm_state64 : begin
            ap_NS_fsm = ap_ST_fsm_state65;
        end
        ap_ST_fsm_state65 : begin
            ap_NS_fsm = ap_ST_fsm_state66;
        end
        ap_ST_fsm_state66 : begin
            ap_NS_fsm = ap_ST_fsm_state67;
        end
        ap_ST_fsm_state67 : begin
            ap_NS_fsm = ap_ST_fsm_state68;
        end
        ap_ST_fsm_state68 : begin
            ap_NS_fsm = ap_ST_fsm_state69;
        end
        ap_ST_fsm_state69 : begin
            ap_NS_fsm = ap_ST_fsm_state70;
        end
        ap_ST_fsm_state70 : begin
            ap_NS_fsm = ap_ST_fsm_state71;
        end
        ap_ST_fsm_state71 : begin
            ap_NS_fsm = ap_ST_fsm_state72;
        end
        ap_ST_fsm_state72 : begin
            ap_NS_fsm = ap_ST_fsm_state73;
        end
        ap_ST_fsm_state73 : begin
            ap_NS_fsm = ap_ST_fsm_state74;
        end
        ap_ST_fsm_state74 : begin
            ap_NS_fsm = ap_ST_fsm_state75;
        end
        ap_ST_fsm_state75 : begin
            ap_NS_fsm = ap_ST_fsm_state76;
        end
        ap_ST_fsm_state76 : begin
            ap_NS_fsm = ap_ST_fsm_state77;
        end
        ap_ST_fsm_state77 : begin
            ap_NS_fsm = ap_ST_fsm_state78;
        end
        ap_ST_fsm_state78 : begin
            ap_NS_fsm = ap_ST_fsm_state79;
        end
        ap_ST_fsm_state79 : begin
            ap_NS_fsm = ap_ST_fsm_state80;
        end
        ap_ST_fsm_state80 : begin
            ap_NS_fsm = ap_ST_fsm_state81;
        end
        ap_ST_fsm_state81 : begin
            ap_NS_fsm = ap_ST_fsm_state82;
        end
        ap_ST_fsm_state82 : begin
            ap_NS_fsm = ap_ST_fsm_state83;
        end
        ap_ST_fsm_state83 : begin
            ap_NS_fsm = ap_ST_fsm_state84;
        end
        ap_ST_fsm_state84 : begin
            ap_NS_fsm = ap_ST_fsm_state85;
        end
        ap_ST_fsm_state85 : begin
            ap_NS_fsm = ap_ST_fsm_state86;
        end
        ap_ST_fsm_state86 : begin
            ap_NS_fsm = ap_ST_fsm_state87;
        end
        ap_ST_fsm_state87 : begin
            ap_NS_fsm = ap_ST_fsm_state88;
        end
        ap_ST_fsm_state88 : begin
            ap_NS_fsm = ap_ST_fsm_state89;
        end
        ap_ST_fsm_state89 : begin
            ap_NS_fsm = ap_ST_fsm_state90;
        end
        ap_ST_fsm_state90 : begin
            ap_NS_fsm = ap_ST_fsm_state91;
        end
        ap_ST_fsm_state91 : begin
            ap_NS_fsm = ap_ST_fsm_state92;
        end
        ap_ST_fsm_state92 : begin
            ap_NS_fsm = ap_ST_fsm_state93;
        end
        ap_ST_fsm_state93 : begin
            ap_NS_fsm = ap_ST_fsm_state57;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_address0 = zext_ln8_fu_183_p1;

assign B_address0 = zext_ln8_fu_183_p1;

assign C_address0 = zext_ln8_fu_183_p1;

assign D_address0 = zext_ln8_reg_300;

assign D_d0 = xf_V_fu_215_p2;

assign X1_addr_1_gep_fu_154_p3 = zext_ln8_reg_300;

assign X1_addr_2_gep_fu_138_p3 = zext_ln8_reg_300;

assign X2_addr_1_gep_fu_162_p3 = zext_ln8_reg_300;

assign X2_addr_2_gep_fu_146_p3 = zext_ln8_reg_300;

assign add_ln32_fu_251_p2 = ($signed(temp_B_reg_334) + $signed(zext_ln840_fu_248_p1));

assign add_ln8_fu_196_p2 = (i_fu_54 + 4'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state56 = ap_CS_fsm[32'd55];

assign ap_CS_fsm_state57 = ap_CS_fsm[32'd56];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state92 = ap_CS_fsm[32'd91];

assign ap_CS_fsm_state93 = ap_CS_fsm[32'd92];

assign ap_local_block = 1'b0;

assign ap_local_deadlock = 1'b0;

assign grp_fu_243_p1 = temp_A_reg_343 << 32'd1;

assign icmp_ln21_fu_233_p2 = ((mul_ln13_reg_355 == shl_ln13_fu_210_p2) ? 1'b1 : 1'b0);

assign icmp_ln8_fu_190_p2 = ((i_fu_54 == 4'd8) ? 1'b1 : 1'b0);

assign shl_ln13_fu_210_p2 = mul_ln13_1_reg_361 << 32'd2;

assign shl_ln32_fu_261_p2 = temp_A_reg_343 << 32'd1;

assign sub_ln23_fu_286_p2 = (32'd0 - sdiv_ln23_reg_415);

assign sub_ln32_fu_276_p2 = (32'd0 - sdiv_ln32_reg_405);

assign sub_ln33_fu_256_p2 = ($signed(zext_ln840_fu_248_p1) - $signed(temp_B_reg_334));

assign tmp_fu_225_p3 = xf_V_fu_215_p2[32'd31];

assign trunc_ln13_fu_221_p1 = xf_V_fu_215_p2[30:0];

assign xf_V_fu_215_p2 = (mul_ln13_reg_355 - shl_ln13_fu_210_p2);

assign zext_ln840_fu_248_p1 = p_Val2_s_reg_384;

assign zext_ln8_fu_183_p1 = i_fu_54;

always @ (posedge ap_clk) begin
    zext_ln8_reg_300[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //kp_502_7