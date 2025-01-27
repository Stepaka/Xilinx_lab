// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="adders_io_adders_io,hls_ip_2021_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu7ev-ffvc1156-2-e,HLS_INPUT_CLOCK=0.500000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.731000,HLS_SYN_LAT=2,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=68,HLS_SYN_LUT=80,HLS_VERSION=2021_2}" *)

module adders_io (
        ap_local_block,
        ap_local_deadlock,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in1,
        in1_ap_vld,
        in2,
        in2_ap_ack,
        in_out1_i,
        in_out1_i_ap_vld,
        in_out1_i_ap_ack,
        in_out1_o,
        in_out1_o_ap_vld,
        in_out1_o_ap_ack
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

output   ap_local_block;
output   ap_local_deadlock;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] in1;
input   in1_ap_vld;
input  [31:0] in2;
output   in2_ap_ack;
input  [31:0] in_out1_i;
input   in_out1_i_ap_vld;
output   in_out1_i_ap_ack;
output  [31:0] in_out1_o;
output   in_out1_o_ap_vld;
input   in_out1_o_ap_ack;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in2_ap_ack;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] in1_preg;
reg   [31:0] in1_in_sig;
reg    in1_ap_vld_preg;
reg    in1_ap_vld_in_sig;
reg    in1_blk_n;
reg    in_out1_i_blk_n;
wire    ap_CS_fsm_state2;
reg    in_out1_o_blk_n;
wire    ap_CS_fsm_state3;
wire   [31:0] add_ln50_fu_57_p2;
reg   [31:0] add_ln50_reg_69;
wire   [31:0] add_ln50_1_fu_63_p2;
reg    ap_block_state1;
reg    ap_block_state2;
wire    regslice_forward_in_out1_o_U_apdone_blk;
reg    ap_block_state3;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    regslice_forward_in_out1_i_U_apdone_blk;
wire   [31:0] in_out1_i_int_regslice;
wire    in_out1_i_ap_vld_int_regslice;
reg    in_out1_i_ap_ack_int_regslice;
wire    regslice_forward_in_out1_i_U_ack_in;
reg    in_out1_o_ap_vld_int_regslice;
wire    in_out1_o_ap_ack_int_regslice;
wire    regslice_forward_in_out1_o_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 in1_preg = 32'd0;
#0 in1_ap_vld_preg = 1'b0;
end

adders_io_add_32ns_32ns_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
add_32ns_32ns_32_1_1_U1(
    .din0(in2),
    .din1(in1_in_sig),
    .dout(add_ln50_fu_57_p2)
);

adders_io_add_32ns_32ns_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
add_32ns_32ns_32_1_1_U2(
    .din0(add_ln50_reg_69),
    .din1(in_out1_i_int_regslice),
    .dout(add_ln50_1_fu_63_p2)
);

adders_io_regslice_forward #(
    .DataWidth( 32 ))
regslice_forward_in_out1_i_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(in_out1_i),
    .vld_in(in_out1_i_ap_vld),
    .ack_in(regslice_forward_in_out1_i_U_ack_in),
    .data_out(in_out1_i_int_regslice),
    .vld_out(in_out1_i_ap_vld_int_regslice),
    .ack_out(in_out1_i_ap_ack_int_regslice),
    .apdone_blk(regslice_forward_in_out1_i_U_apdone_blk)
);

adders_io_regslice_forward #(
    .DataWidth( 32 ))
regslice_forward_in_out1_o_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(add_ln50_1_fu_63_p2),
    .vld_in(in_out1_o_ap_vld_int_regslice),
    .ack_in(in_out1_o_ap_ack_int_regslice),
    .data_out(in_out1_o),
    .vld_out(regslice_forward_in_out1_o_U_vld_out),
    .ack_out(in_out1_o_ap_ack),
    .apdone_blk(regslice_forward_in_out1_o_U_apdone_blk)
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
        in1_ap_vld_preg <= 1'b0;
    end else begin
        if ((~((regslice_forward_in_out1_o_U_apdone_blk == 1'b1) | (in_out1_o_ap_ack_int_regslice == 1'b0)) & (1'b1 == ap_CS_fsm_state3))) begin
            in1_ap_vld_preg <= 1'b0;
        end else if ((~((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) & (in1_ap_vld == 1'b1))) begin
            in1_ap_vld_preg <= in1_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        in1_preg <= 32'd0;
    end else begin
        if ((~((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) & (in1_ap_vld == 1'b1))) begin
            in1_preg <= in1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        add_ln50_reg_69 <= add_ln50_fu_57_p2;
    end
end

always @ (*) begin
    if (((in1_ap_vld_in_sig == 1'b0) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((in_out1_o_ap_ack_int_regslice == 1'b0) | (in_out1_i_ap_vld_int_regslice == 1'b0))) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

always @ (*) begin
    if (((regslice_forward_in_out1_o_U_apdone_blk == 1'b1) | (in_out1_o_ap_ack_int_regslice == 1'b0))) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((regslice_forward_in_out1_o_U_apdone_blk == 1'b1) | (in_out1_o_ap_ack_int_regslice == 1'b0)) & (1'b1 == ap_CS_fsm_state3))) begin
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
    if ((~((regslice_forward_in_out1_o_U_apdone_blk == 1'b1) | (in_out1_o_ap_ack_int_regslice == 1'b0)) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((in1_ap_vld == 1'b1)) begin
        in1_ap_vld_in_sig = in1_ap_vld;
    end else begin
        in1_ap_vld_in_sig = in1_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        in1_blk_n = in1_ap_vld;
    end else begin
        in1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((in1_ap_vld == 1'b1)) begin
        in1_in_sig = in1;
    end else begin
        in1_in_sig = in1_preg;
    end
end

always @ (*) begin
    if ((~((in1_ap_vld_in_sig == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        in2_ap_ack = 1'b1;
    end else begin
        in2_ap_ack = 1'b0;
    end
end

always @ (*) begin
    if ((~((in_out1_o_ap_ack_int_regslice == 1'b0) | (in_out1_i_ap_vld_int_regslice == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        in_out1_i_ap_ack_int_regslice = 1'b1;
    end else begin
        in_out1_i_ap_ack_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        in_out1_i_blk_n = in_out1_i_ap_vld_int_regslice;
    end else begin
        in_out1_i_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((in_out1_o_ap_ack_int_regslice == 1'b0) | (in_out1_i_ap_vld_int_regslice == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        in_out1_o_ap_vld_int_regslice = 1'b1;
    end else begin
        in_out1_o_ap_vld_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        in_out1_o_blk_n = in_out1_o_ap_ack_int_regslice;
    end else begin
        in_out1_o_blk_n = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((in1_ap_vld_in_sig == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((in_out1_o_ap_ack_int_regslice == 1'b0) | (in_out1_i_ap_vld_int_regslice == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if ((~((regslice_forward_in_out1_o_U_apdone_blk == 1'b1) | (in_out1_o_ap_ack_int_regslice == 1'b0)) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((in1_ap_vld_in_sig == 1'b0) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state2 = ((in_out1_o_ap_ack_int_regslice == 1'b0) | (in_out1_i_ap_vld_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state3 = ((regslice_forward_in_out1_o_U_apdone_blk == 1'b1) | (in_out1_o_ap_ack_int_regslice == 1'b0));
end

assign ap_local_block = 1'b0;

assign ap_local_deadlock = 1'b0;

assign in_out1_i_ap_ack = regslice_forward_in_out1_i_U_ack_in;

assign in_out1_o_ap_vld = regslice_forward_in_out1_o_U_vld_out;

endmodule //adders_io
