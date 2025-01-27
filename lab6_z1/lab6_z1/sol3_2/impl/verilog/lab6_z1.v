// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="lab6_z1_lab6_z1,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12t-csg325-1Q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.302000,HLS_SYN_LAT=41,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=19,HLS_SYN_LUT=56,HLS_VERSION=2021_2}" *)

module lab6_z1 (
        ap_local_block,
        ap_local_deadlock,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_address0,
        a_ce0,
        a_we0,
        a_d0,
        a_address1,
        a_ce1,
        a_we1,
        a_d1,
        b_address0,
        b_ce0,
        b_q0,
        b_address1,
        b_ce1,
        b_q1,
        c_address0,
        c_ce0,
        c_q0,
        c_address1,
        c_ce1,
        c_q1
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

output   ap_local_block;
output   ap_local_deadlock;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] a_address0;
output   a_ce0;
output   a_we0;
output  [31:0] a_d0;
output  [3:0] a_address1;
output   a_ce1;
output   a_we1;
output  [31:0] a_d1;
output  [3:0] b_address0;
output   b_ce0;
input  [31:0] b_q0;
output  [3:0] b_address1;
output   b_ce1;
input  [31:0] b_q1;
output  [3:0] c_address0;
output   c_ce0;
input  [31:0] c_q0;
output  [3:0] c_address1;
output   c_ce1;
input  [31:0] c_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_ce0;
reg a_we0;
reg a_ce1;
reg a_we1;
reg b_ce0;
reg b_ce1;
reg c_ce0;
reg c_ce1;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] zext_ln5_fu_161_p1;
reg   [63:0] zext_ln5_reg_298;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_fu_143_p3;
wire   [63:0] zext_ln5_1_fu_173_p1;
reg   [63:0] zext_ln5_1_reg_313;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state6;
reg   [5:0] i_fu_56;
wire   [5:0] add_ln4_fu_179_p2;
wire   [3:0] lshr_ln5_fu_151_p4;
wire   [3:0] or_ln5_fu_167_p2;
wire  signed [15:0] grp_fu_267_p2;
wire  signed [15:0] grp_fu_260_p2;
wire  signed [15:0] grp_fu_281_p2;
wire  signed [15:0] grp_fu_274_p2;
wire  signed [15:0] grp_fu_260_p0;
wire  signed [15:0] grp_fu_260_p1;
wire  signed [15:0] grp_fu_267_p0;
wire  signed [15:0] grp_fu_267_p1;
wire  signed [15:0] grp_fu_274_p0;
wire  signed [15:0] grp_fu_274_p1;
wire  signed [15:0] grp_fu_281_p0;
wire  signed [15:0] grp_fu_281_p1;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
end

lab6_z1_mul_mul_16s_16s_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mul_mul_16s_16s_16_4_1_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_260_p0),
    .din1(grp_fu_260_p1),
    .ce(1'b1),
    .dout(grp_fu_260_p2)
);

lab6_z1_mul_mul_16s_16s_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mul_mul_16s_16s_16_4_1_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_267_p0),
    .din1(grp_fu_267_p1),
    .ce(1'b1),
    .dout(grp_fu_267_p2)
);

lab6_z1_mul_mul_16s_16s_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mul_mul_16s_16s_16_4_1_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_274_p0),
    .din1(grp_fu_274_p1),
    .ce(1'b1),
    .dout(grp_fu_274_p2)
);

lab6_z1_mul_mul_16s_16s_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mul_mul_16s_16s_16_4_1_U4(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_281_p0),
    .din1(grp_fu_281_p1),
    .ce(1'b1),
    .dout(grp_fu_281_p2)
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
        i_fu_56 <= 6'd0;
    end else if (((tmp_fu_143_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_fu_56 <= add_ln4_fu_179_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_143_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        zext_ln5_1_reg_313[3 : 1] <= zext_ln5_1_fu_173_p1[3 : 1];
        zext_ln5_reg_298[3 : 0] <= zext_ln5_fu_161_p1[3 : 0];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_ce1 = 1'b1;
    end else begin
        a_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_we0 = 1'b1;
    end else begin
        a_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_we1 = 1'b1;
    end else begin
        a_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

always @ (*) begin
    if (((tmp_fu_143_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((tmp_fu_143_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        b_ce0 = 1'b1;
    end else begin
        b_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        b_ce1 = 1'b1;
    end else begin
        b_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        c_ce0 = 1'b1;
    end else begin
        c_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        c_ce1 = 1'b1;
    end else begin
        c_ce1 = 1'b0;
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
            if (((tmp_fu_143_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address0 = zext_ln5_1_reg_313;

assign a_address1 = zext_ln5_reg_298;

assign a_d0 = {{grp_fu_281_p2}, {grp_fu_274_p2}};

assign a_d1 = {{grp_fu_267_p2}, {grp_fu_260_p2}};

assign add_ln4_fu_179_p2 = (i_fu_56 + 6'd4);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_local_block = 1'b0;

assign ap_local_deadlock = 1'b0;

assign b_address0 = zext_ln5_1_fu_173_p1;

assign b_address1 = zext_ln5_fu_161_p1;

assign c_address0 = zext_ln5_1_fu_173_p1;

assign c_address1 = zext_ln5_fu_161_p1;

assign grp_fu_260_p0 = c_q1[15:0];

assign grp_fu_260_p1 = b_q1[15:0];

assign grp_fu_267_p0 = {{c_q1[31:16]}};

assign grp_fu_267_p1 = {{b_q1[31:16]}};

assign grp_fu_274_p0 = c_q0[15:0];

assign grp_fu_274_p1 = b_q0[15:0];

assign grp_fu_281_p0 = {{c_q0[31:16]}};

assign grp_fu_281_p1 = {{b_q0[31:16]}};

assign lshr_ln5_fu_151_p4 = {{i_fu_56[4:1]}};

assign or_ln5_fu_167_p2 = (lshr_ln5_fu_151_p4 | 4'd1);

assign tmp_fu_143_p3 = i_fu_56[32'd5];

assign zext_ln5_1_fu_173_p1 = or_ln5_fu_167_p2;

assign zext_ln5_fu_161_p1 = lshr_ln5_fu_151_p4;

always @ (posedge ap_clk) begin
    zext_ln5_reg_298[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln5_1_reg_313[0] <= 1'b1;
    zext_ln5_1_reg_313[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //lab6_z1
