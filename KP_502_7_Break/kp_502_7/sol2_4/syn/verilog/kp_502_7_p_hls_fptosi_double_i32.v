// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module kp_502_7_p_hls_fptosi_double_i32 (
        ap_ready,
        x,
        ap_return
);


output   ap_ready;
input  [63:0] x;
output  [31:0] ap_return;

wire   [63:0] data_V_fu_44_p1;
wire   [51:0] tmp_31_fu_66_p1;
wire   [53:0] mantissa_fu_70_p4;
wire   [10:0] tmp_30_fu_56_p4;
wire   [11:0] zext_ln513_fu_84_p1;
wire   [11:0] add_ln513_fu_88_p2;
wire   [10:0] sub_ln1364_fu_102_p2;
wire   [0:0] isNeg_fu_94_p3;
wire  signed [11:0] sext_ln1364_fu_108_p1;
wire   [11:0] ush_fu_112_p3;
wire  signed [31:0] sext_ln1340_fu_120_p1;
wire   [136:0] zext_ln15_fu_80_p1;
wire   [136:0] zext_ln1340_fu_124_p1;
wire   [136:0] r_V_fu_128_p2;
wire   [0:0] tmp_fu_140_p3;
wire   [136:0] r_V_1_fu_134_p2;
wire   [31:0] zext_ln671_fu_148_p1;
wire   [31:0] tmp_s_fu_152_p4;
wire   [31:0] val_fu_162_p3;
wire   [0:0] p_Result_s_fu_48_p3;
wire   [31:0] result_V_2_fu_170_p2;

assign add_ln513_fu_88_p2 = ($signed(zext_ln513_fu_84_p1) + $signed(12'd3073));

assign ap_ready = 1'b1;

assign ap_return = ((p_Result_s_fu_48_p3[0:0] == 1'b1) ? result_V_2_fu_170_p2 : val_fu_162_p3);

assign data_V_fu_44_p1 = x;

assign isNeg_fu_94_p3 = add_ln513_fu_88_p2[32'd11];

assign mantissa_fu_70_p4 = {{{{1'd1}, {tmp_31_fu_66_p1}}}, {1'd0}};

assign p_Result_s_fu_48_p3 = data_V_fu_44_p1[32'd63];

assign r_V_1_fu_134_p2 = zext_ln15_fu_80_p1 << zext_ln1340_fu_124_p1;

assign r_V_fu_128_p2 = zext_ln15_fu_80_p1 >> zext_ln1340_fu_124_p1;

assign result_V_2_fu_170_p2 = (32'd0 - val_fu_162_p3);

assign sext_ln1340_fu_120_p1 = $signed(ush_fu_112_p3);

assign sext_ln1364_fu_108_p1 = $signed(sub_ln1364_fu_102_p2);

assign sub_ln1364_fu_102_p2 = (11'd1023 - tmp_30_fu_56_p4);

assign tmp_30_fu_56_p4 = {{data_V_fu_44_p1[62:52]}};

assign tmp_31_fu_66_p1 = data_V_fu_44_p1[51:0];

assign tmp_fu_140_p3 = r_V_fu_128_p2[32'd53];

assign tmp_s_fu_152_p4 = {{r_V_1_fu_134_p2[84:53]}};

assign ush_fu_112_p3 = ((isNeg_fu_94_p3[0:0] == 1'b1) ? sext_ln1364_fu_108_p1 : add_ln513_fu_88_p2);

assign val_fu_162_p3 = ((isNeg_fu_94_p3[0:0] == 1'b1) ? zext_ln671_fu_148_p1 : tmp_s_fu_152_p4);

assign zext_ln1340_fu_124_p1 = $unsigned(sext_ln1340_fu_120_p1);

assign zext_ln15_fu_80_p1 = mantissa_fu_70_p4;

assign zext_ln513_fu_84_p1 = tmp_30_fu_56_p4;

assign zext_ln671_fu_148_p1 = tmp_fu_140_p3;

endmodule //kp_502_7_p_hls_fptosi_double_i32