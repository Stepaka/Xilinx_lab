// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module kp_502_7_sqrt_fixed_32_32_s (
        ap_clk,
        ap_rst,
        x,
        ap_return,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [30:0] x;
output  [15:0] ap_return;
input   ap_ce;

reg[15:0] ap_return;

wire   [34:0] x_l_I_V_32_fu_340_p3;
reg   [34:0] x_l_I_V_32_reg_1450;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
wire    ap_block_pp0_stage0_11001;
wire   [15:0] res_I_V_33_fu_348_p3;
reg   [15:0] res_I_V_33_reg_1456;
wire   [0:0] icmp_ln443_1_fu_388_p2;
reg   [0:0] icmp_ln443_1_reg_1462;
wire   [4:0] sub_ln219_1_fu_394_p2;
reg   [4:0] sub_ln219_1_reg_1468;
wire   [34:0] x_l_I_V_34_fu_497_p3;
reg   [34:0] x_l_I_V_34_reg_1473;
wire   [15:0] res_I_V_35_fu_505_p3;
reg   [15:0] res_I_V_35_reg_1479;
reg   [4:0] p_Result_9_reg_1485;
reg   [6:0] p_Result_59_reg_1490;
wire   [34:0] x_l_I_V_36_fu_654_p3;
reg   [34:0] x_l_I_V_36_reg_1496;
wire   [15:0] res_I_V_37_fu_662_p3;
reg   [15:0] res_I_V_37_reg_1502;
reg   [6:0] p_Result_16_reg_1508;
reg   [8:0] p_Result_65_reg_1513;
wire   [34:0] x_l_I_V_fu_731_p3;
reg   [34:0] x_l_I_V_reg_1519;
wire   [15:0] res_I_V_38_fu_738_p3;
reg   [15:0] res_I_V_38_reg_1525;
wire   [0:0] icmp_ln443_6_fu_777_p2;
reg   [0:0] icmp_ln443_6_reg_1531;
wire   [9:0] sub_ln219_6_fu_783_p2;
reg   [9:0] sub_ln219_6_reg_1537;
wire   [34:0] x_l_I_V_38_fu_886_p3;
reg   [34:0] x_l_I_V_38_reg_1542;
wire   [15:0] res_I_V_39_fu_894_p3;
reg   [15:0] res_I_V_39_reg_1548;
reg   [9:0] p_Result_25_reg_1554;
reg   [11:0] p_Result_74_reg_1559;
wire   [34:0] x_l_I_V_39_fu_963_p3;
reg   [34:0] x_l_I_V_39_reg_1565;
wire   [15:0] res_I_V_40_fu_970_p3;
reg   [15:0] res_I_V_40_reg_1571;
wire   [0:0] icmp_ln443_9_fu_1009_p2;
reg   [0:0] icmp_ln443_9_reg_1577;
wire   [12:0] sub_ln219_9_fu_1015_p2;
reg   [12:0] sub_ln219_9_reg_1583;
wire   [34:0] x_l_I_V_41_fu_1118_p3;
reg   [34:0] x_l_I_V_41_reg_1588;
wire   [15:0] res_I_V_42_fu_1126_p3;
reg   [15:0] res_I_V_42_reg_1594;
reg   [12:0] p_Result_34_reg_1600;
reg   [14:0] p_Result_83_reg_1605;
wire   [34:0] x_l_I_V_42_fu_1195_p3;
reg   [34:0] x_l_I_V_42_reg_1611;
wire   [15:0] res_I_V_43_fu_1202_p3;
reg   [15:0] res_I_V_43_reg_1617;
wire   [0:0] icmp_ln443_12_fu_1241_p2;
reg   [0:0] icmp_ln443_12_reg_1623;
wire   [15:0] sub_ln219_12_fu_1247_p2;
reg   [15:0] sub_ln219_12_reg_1629;
wire   [34:0] x_l_I_V_43_fu_1272_p3;
reg   [34:0] x_l_I_V_43_reg_1634;
wire   [15:0] res_I_V_44_fu_1278_p3;
reg   [15:0] res_I_V_44_reg_1640;
wire   [0:0] icmp_ln443_13_fu_1316_p2;
reg   [0:0] icmp_ln443_13_reg_1646;
wire   [16:0] sub_ln219_13_fu_1322_p2;
reg   [16:0] sub_ln219_13_reg_1652;
wire   [34:0] x_l_I_V_44_fu_1347_p3;
reg   [34:0] x_l_I_V_44_reg_1657;
wire   [15:0] res_I_V_45_fu_1353_p3;
reg   [15:0] res_I_V_45_reg_1663;
wire   [0:0] icmp_ln443_14_fu_1375_p2;
reg   [0:0] icmp_ln443_14_reg_1669;
wire   [17:0] sub_ln219_14_fu_1381_p2;
reg   [17:0] sub_ln219_14_reg_1675;
wire    ap_block_pp0_stage0;
wire   [0:0] tmp_fu_224_p3;
wire   [0:0] xor_ln219_fu_232_p2;
wire   [34:0] zext_ln666_fu_220_p1;
wire   [2:0] select_ln277_fu_238_p3;
wire   [34:0] p_Result_49_fu_246_p5;
wire   [15:0] res_I_V_32_fu_266_p3;
wire   [1:0] p_Result_s_fu_274_p4;
wire   [34:0] x_l_I_V_31_fu_258_p3;
wire   [2:0] tmp_1_fu_284_p3;
wire   [3:0] p_Result_50_fu_292_p4;
wire   [3:0] zext_ln443_fu_302_p1;
wire   [3:0] sub_ln219_fu_312_p2;
wire   [0:0] icmp_ln443_fu_306_p2;
wire   [34:0] p_Result_51_fu_318_p5;
wire   [15:0] p_Result_52_fu_330_p4;
wire   [2:0] p_Result_4_fu_356_p4;
wire   [3:0] tmp_2_fu_366_p3;
wire   [4:0] p_Result_53_fu_374_p4;
wire   [4:0] zext_ln443_1_fu_384_p1;
wire   [34:0] p_Result_54_fu_400_p5;
wire   [15:0] p_Result_55_fu_410_p4;
wire   [15:0] res_I_V_34_fu_425_p3;
wire   [3:0] p_Result_8_fu_431_p4;
wire   [34:0] x_l_I_V_33_fu_419_p3;
wire   [4:0] tmp_3_fu_441_p3;
wire   [5:0] p_Result_56_fu_449_p4;
wire   [5:0] zext_ln443_2_fu_459_p1;
wire   [5:0] sub_ln219_2_fu_469_p2;
wire   [0:0] icmp_ln443_2_fu_463_p2;
wire   [34:0] p_Result_57_fu_475_p5;
wire   [15:0] p_Result_58_fu_487_p4;
wire   [5:0] tmp_4_fu_533_p3;
wire   [6:0] zext_ln443_3_fu_540_p1;
wire   [6:0] sub_ln219_3_fu_549_p2;
wire   [0:0] icmp_ln443_3_fu_544_p2;
wire   [34:0] p_Result_60_fu_554_p5;
wire   [15:0] p_Result_61_fu_565_p4;
wire   [15:0] res_I_V_36_fu_581_p3;
wire   [5:0] p_Result_13_fu_588_p4;
wire   [34:0] x_l_I_V_35_fu_574_p3;
wire   [6:0] tmp_5_fu_598_p3;
wire   [7:0] p_Result_62_fu_606_p4;
wire   [7:0] zext_ln443_4_fu_616_p1;
wire   [7:0] sub_ln219_4_fu_626_p2;
wire   [0:0] icmp_ln443_4_fu_620_p2;
wire   [34:0] p_Result_63_fu_632_p5;
wire   [15:0] p_Result_64_fu_644_p4;
wire   [7:0] tmp_6_fu_690_p3;
wire   [8:0] zext_ln443_5_fu_697_p1;
wire   [8:0] sub_ln219_5_fu_706_p2;
wire   [0:0] icmp_ln443_5_fu_701_p2;
wire   [34:0] p_Result_66_fu_711_p5;
wire   [15:0] p_Result_67_fu_722_p4;
wire   [7:0] p_Result_19_fu_745_p4;
wire   [8:0] tmp_7_fu_755_p3;
wire   [9:0] p_Result_68_fu_763_p4;
wire   [9:0] zext_ln443_6_fu_773_p1;
wire   [34:0] p_Result_69_fu_789_p5;
wire   [15:0] p_Result_70_fu_799_p4;
wire   [15:0] res_I_V_fu_814_p3;
wire   [8:0] p_Result_22_fu_820_p4;
wire   [34:0] x_l_I_V_37_fu_808_p3;
wire   [9:0] tmp_8_fu_830_p3;
wire   [10:0] p_Result_71_fu_838_p4;
wire   [10:0] zext_ln443_7_fu_848_p1;
wire   [10:0] sub_ln219_7_fu_858_p2;
wire   [0:0] icmp_ln443_7_fu_852_p2;
wire   [34:0] p_Result_72_fu_864_p5;
wire   [15:0] p_Result_73_fu_876_p4;
wire   [10:0] tmp_9_fu_922_p3;
wire   [11:0] zext_ln443_8_fu_929_p1;
wire   [11:0] sub_ln219_8_fu_938_p2;
wire   [0:0] icmp_ln443_8_fu_933_p2;
wire   [34:0] p_Result_75_fu_943_p5;
wire   [15:0] p_Result_76_fu_954_p4;
wire   [10:0] p_Result_28_fu_977_p4;
wire   [11:0] tmp_s_fu_987_p3;
wire   [12:0] p_Result_77_fu_995_p4;
wire   [12:0] zext_ln443_9_fu_1005_p1;
wire   [34:0] p_Result_78_fu_1021_p5;
wire   [15:0] p_Result_79_fu_1031_p4;
wire   [15:0] res_I_V_41_fu_1046_p3;
wire   [11:0] p_Result_31_fu_1052_p4;
wire   [34:0] x_l_I_V_40_fu_1040_p3;
wire   [12:0] tmp_10_fu_1062_p3;
wire   [13:0] p_Result_80_fu_1070_p4;
wire   [13:0] zext_ln443_10_fu_1080_p1;
wire   [13:0] sub_ln219_10_fu_1090_p2;
wire   [0:0] icmp_ln443_10_fu_1084_p2;
wire   [34:0] p_Result_81_fu_1096_p5;
wire   [15:0] p_Result_82_fu_1108_p4;
wire   [13:0] tmp_11_fu_1154_p3;
wire   [14:0] zext_ln443_11_fu_1161_p1;
wire   [14:0] sub_ln219_11_fu_1170_p2;
wire   [0:0] icmp_ln443_11_fu_1165_p2;
wire   [34:0] p_Result_84_fu_1175_p5;
wire   [15:0] p_Result_85_fu_1186_p4;
wire   [13:0] p_Result_37_fu_1209_p4;
wire   [14:0] tmp_12_fu_1219_p3;
wire   [15:0] p_Result_86_fu_1227_p4;
wire   [15:0] zext_ln443_12_fu_1237_p1;
wire   [34:0] p_Result_87_fu_1253_p5;
wire   [15:0] p_Result_88_fu_1263_p4;
wire   [14:0] p_Result_40_fu_1284_p4;
wire   [15:0] tmp_13_fu_1294_p3;
wire   [16:0] p_Result_89_fu_1302_p4;
wire   [16:0] zext_ln443_13_fu_1312_p1;
wire   [34:0] p_Result_90_fu_1328_p5;
wire   [15:0] p_Result_91_fu_1338_p4;
wire   [16:0] tmp_14_fu_1359_p3;
wire   [17:0] p_Result_92_fu_1367_p1;
wire   [17:0] zext_ln443_14_fu_1371_p1;
wire   [34:0] p_Result_93_fu_1387_p5;
wire   [15:0] p_Result_94_fu_1397_p4;
wire   [15:0] res_I_V_46_fu_1412_p3;
wire   [32:0] mul_I_V_fu_1418_p3;
wire   [34:0] x_l_I_V_45_fu_1406_p3;
wire   [34:0] zext_ln671_fu_1426_p1;
wire   [0:0] p_Result_s_60_fu_1430_p2;
wire   [15:0] res_I_V_30_fu_1436_p2;
wire   [15:0] res_I_V_47_fu_1442_p3;
reg    ap_ce_reg;
reg   [30:0] x_int_reg;
reg   [15:0] ap_return_int_reg;

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_int_reg <= res_I_V_47_fu_1442_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        icmp_ln443_12_reg_1623 <= icmp_ln443_12_fu_1241_p2;
        icmp_ln443_13_reg_1646 <= icmp_ln443_13_fu_1316_p2;
        icmp_ln443_14_reg_1669 <= icmp_ln443_14_fu_1375_p2;
        icmp_ln443_1_reg_1462 <= icmp_ln443_1_fu_388_p2;
        icmp_ln443_6_reg_1531 <= icmp_ln443_6_fu_777_p2;
        icmp_ln443_9_reg_1577 <= icmp_ln443_9_fu_1009_p2;
        p_Result_16_reg_1508 <= {{res_I_V_37_fu_662_p3[15:9]}};
        p_Result_25_reg_1554 <= {{res_I_V_39_fu_894_p3[15:6]}};
        p_Result_34_reg_1600 <= {{res_I_V_42_fu_1126_p3[15:3]}};
        p_Result_59_reg_1490 <= {{x_l_I_V_34_fu_497_p3[28:22]}};
        p_Result_65_reg_1513 <= {{x_l_I_V_36_fu_654_p3[26:18]}};
        p_Result_74_reg_1559 <= {{x_l_I_V_38_fu_886_p3[23:12]}};
        p_Result_83_reg_1605 <= {{x_l_I_V_41_fu_1118_p3[20:6]}};
        p_Result_9_reg_1485 <= {{res_I_V_35_fu_505_p3[15:11]}};
        res_I_V_33_reg_1456 <= res_I_V_33_fu_348_p3;
        res_I_V_35_reg_1479 <= res_I_V_35_fu_505_p3;
        res_I_V_37_reg_1502 <= res_I_V_37_fu_662_p3;
        res_I_V_38_reg_1525 <= res_I_V_38_fu_738_p3;
        res_I_V_39_reg_1548 <= res_I_V_39_fu_894_p3;
        res_I_V_40_reg_1571 <= res_I_V_40_fu_970_p3;
        res_I_V_42_reg_1594 <= res_I_V_42_fu_1126_p3;
        res_I_V_43_reg_1617 <= res_I_V_43_fu_1202_p3;
        res_I_V_44_reg_1640 <= res_I_V_44_fu_1278_p3;
        res_I_V_45_reg_1663 <= res_I_V_45_fu_1353_p3;
        sub_ln219_12_reg_1629 <= sub_ln219_12_fu_1247_p2;
        sub_ln219_13_reg_1652 <= sub_ln219_13_fu_1322_p2;
        sub_ln219_14_reg_1675 <= sub_ln219_14_fu_1381_p2;
        sub_ln219_1_reg_1468 <= sub_ln219_1_fu_394_p2;
        sub_ln219_6_reg_1537 <= sub_ln219_6_fu_783_p2;
        sub_ln219_9_reg_1583 <= sub_ln219_9_fu_1015_p2;
        x_l_I_V_32_reg_1450 <= x_l_I_V_32_fu_340_p3;
        x_l_I_V_34_reg_1473 <= x_l_I_V_34_fu_497_p3;
        x_l_I_V_36_reg_1496 <= x_l_I_V_36_fu_654_p3;
        x_l_I_V_38_reg_1542 <= x_l_I_V_38_fu_886_p3;
        x_l_I_V_39_reg_1565 <= x_l_I_V_39_fu_963_p3;
        x_l_I_V_41_reg_1588 <= x_l_I_V_41_fu_1118_p3;
        x_l_I_V_42_reg_1611 <= x_l_I_V_42_fu_1195_p3;
        x_l_I_V_43_reg_1634 <= x_l_I_V_43_fu_1272_p3;
        x_l_I_V_44_reg_1657 <= x_l_I_V_44_fu_1347_p3;
        x_l_I_V_reg_1519 <= x_l_I_V_fu_731_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        x_int_reg <= x;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return = ap_return_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return = res_I_V_47_fu_1442_p3;
    end else begin
        ap_return = 'bx;
    end
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign icmp_ln443_10_fu_1084_p2 = ((p_Result_80_fu_1070_p4 < zext_ln443_10_fu_1080_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_11_fu_1165_p2 = ((p_Result_83_reg_1605 < zext_ln443_11_fu_1161_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_12_fu_1241_p2 = ((p_Result_86_fu_1227_p4 < zext_ln443_12_fu_1237_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_13_fu_1316_p2 = ((p_Result_89_fu_1302_p4 < zext_ln443_13_fu_1312_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_14_fu_1375_p2 = ((p_Result_92_fu_1367_p1 < zext_ln443_14_fu_1371_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_1_fu_388_p2 = ((p_Result_53_fu_374_p4 < zext_ln443_1_fu_384_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_2_fu_463_p2 = ((p_Result_56_fu_449_p4 < zext_ln443_2_fu_459_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_3_fu_544_p2 = ((p_Result_59_reg_1490 < zext_ln443_3_fu_540_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_4_fu_620_p2 = ((p_Result_62_fu_606_p4 < zext_ln443_4_fu_616_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_5_fu_701_p2 = ((p_Result_65_reg_1513 < zext_ln443_5_fu_697_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_6_fu_777_p2 = ((p_Result_68_fu_763_p4 < zext_ln443_6_fu_773_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_7_fu_852_p2 = ((p_Result_71_fu_838_p4 < zext_ln443_7_fu_848_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_8_fu_933_p2 = ((p_Result_74_reg_1559 < zext_ln443_8_fu_929_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_9_fu_1009_p2 = ((p_Result_77_fu_995_p4 < zext_ln443_9_fu_1005_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_fu_306_p2 = ((p_Result_50_fu_292_p4 < zext_ln443_fu_302_p1) ? 1'b1 : 1'b0);

assign mul_I_V_fu_1418_p3 = {{17'd0}, {res_I_V_46_fu_1412_p3}};

assign p_Result_13_fu_588_p4 = {{res_I_V_36_fu_581_p3[15:10]}};

assign p_Result_19_fu_745_p4 = {{res_I_V_38_fu_738_p3[15:8]}};

assign p_Result_22_fu_820_p4 = {{res_I_V_fu_814_p3[15:7]}};

assign p_Result_28_fu_977_p4 = {{res_I_V_40_fu_970_p3[15:5]}};

assign p_Result_31_fu_1052_p4 = {{res_I_V_41_fu_1046_p3[15:4]}};

assign p_Result_37_fu_1209_p4 = {{res_I_V_43_fu_1202_p3[15:2]}};

assign p_Result_40_fu_1284_p4 = {{res_I_V_44_fu_1278_p3[15:1]}};

assign p_Result_49_fu_246_p5 = {{zext_ln666_fu_220_p1[34:33]}, {select_ln277_fu_238_p3}, {zext_ln666_fu_220_p1[29:0]}};

assign p_Result_4_fu_356_p4 = {{res_I_V_33_fu_348_p3[15:13]}};

assign p_Result_50_fu_292_p4 = {{x_l_I_V_31_fu_258_p3[31:28]}};

assign p_Result_51_fu_318_p5 = {{x_l_I_V_31_fu_258_p3[34:32]}, {sub_ln219_fu_312_p2}, {x_l_I_V_31_fu_258_p3[27:0]}};

assign p_Result_52_fu_330_p4 = {res_I_V_32_fu_266_p3[16 - 1:15], |(1'd1), res_I_V_32_fu_266_p3[13:0]};

assign p_Result_53_fu_374_p4 = {{x_l_I_V_32_fu_340_p3[30:26]}};

assign p_Result_54_fu_400_p5 = {{x_l_I_V_32_reg_1450[34:31]}, {sub_ln219_1_reg_1468}, {x_l_I_V_32_reg_1450[25:0]}};

assign p_Result_55_fu_410_p4 = {res_I_V_33_reg_1456[16 - 1:14], |(1'd1), res_I_V_33_reg_1456[12:0]};

assign p_Result_56_fu_449_p4 = {{x_l_I_V_33_fu_419_p3[29:24]}};

assign p_Result_57_fu_475_p5 = {{x_l_I_V_33_fu_419_p3[34:30]}, {sub_ln219_2_fu_469_p2}, {x_l_I_V_33_fu_419_p3[23:0]}};

assign p_Result_58_fu_487_p4 = {res_I_V_34_fu_425_p3[16 - 1:13], |(1'd1), res_I_V_34_fu_425_p3[11:0]};

assign p_Result_60_fu_554_p5 = {{x_l_I_V_34_reg_1473[34:29]}, {sub_ln219_3_fu_549_p2}, {x_l_I_V_34_reg_1473[21:0]}};

assign p_Result_61_fu_565_p4 = {res_I_V_35_reg_1479[16 - 1:12], |(1'd1), res_I_V_35_reg_1479[10:0]};

assign p_Result_62_fu_606_p4 = {{x_l_I_V_35_fu_574_p3[27:20]}};

assign p_Result_63_fu_632_p5 = {{x_l_I_V_35_fu_574_p3[34:28]}, {sub_ln219_4_fu_626_p2}, {x_l_I_V_35_fu_574_p3[19:0]}};

assign p_Result_64_fu_644_p4 = {res_I_V_36_fu_581_p3[16 - 1:11], |(1'd1), res_I_V_36_fu_581_p3[9:0]};

assign p_Result_66_fu_711_p5 = {{x_l_I_V_36_reg_1496[34:27]}, {sub_ln219_5_fu_706_p2}, {x_l_I_V_36_reg_1496[17:0]}};

assign p_Result_67_fu_722_p4 = {res_I_V_37_reg_1502[16 - 1:10], |(1'd1), res_I_V_37_reg_1502[8:0]};

assign p_Result_68_fu_763_p4 = {{x_l_I_V_fu_731_p3[25:16]}};

assign p_Result_69_fu_789_p5 = {{x_l_I_V_reg_1519[34:26]}, {sub_ln219_6_reg_1537}, {x_l_I_V_reg_1519[15:0]}};

assign p_Result_70_fu_799_p4 = {res_I_V_38_reg_1525[16 - 1:9], |(1'd1), res_I_V_38_reg_1525[7:0]};

assign p_Result_71_fu_838_p4 = {{x_l_I_V_37_fu_808_p3[24:14]}};

assign p_Result_72_fu_864_p5 = {{x_l_I_V_37_fu_808_p3[34:25]}, {sub_ln219_7_fu_858_p2}, {x_l_I_V_37_fu_808_p3[13:0]}};

assign p_Result_73_fu_876_p4 = {res_I_V_fu_814_p3[16 - 1:8], |(1'd1), res_I_V_fu_814_p3[6:0]};

assign p_Result_75_fu_943_p5 = {{x_l_I_V_38_reg_1542[34:24]}, {sub_ln219_8_fu_938_p2}, {x_l_I_V_38_reg_1542[11:0]}};

assign p_Result_76_fu_954_p4 = {res_I_V_39_reg_1548[16 - 1:7], |(1'd1), res_I_V_39_reg_1548[5:0]};

assign p_Result_77_fu_995_p4 = {{x_l_I_V_39_fu_963_p3[22:10]}};

assign p_Result_78_fu_1021_p5 = {{x_l_I_V_39_reg_1565[34:23]}, {sub_ln219_9_reg_1583}, {x_l_I_V_39_reg_1565[9:0]}};

assign p_Result_79_fu_1031_p4 = {res_I_V_40_reg_1571[16 - 1:6], |(1'd1), res_I_V_40_reg_1571[4:0]};

assign p_Result_80_fu_1070_p4 = {{x_l_I_V_40_fu_1040_p3[21:8]}};

assign p_Result_81_fu_1096_p5 = {{x_l_I_V_40_fu_1040_p3[34:22]}, {sub_ln219_10_fu_1090_p2}, {x_l_I_V_40_fu_1040_p3[7:0]}};

assign p_Result_82_fu_1108_p4 = {res_I_V_41_fu_1046_p3[16 - 1:5], |(1'd1), res_I_V_41_fu_1046_p3[3:0]};

assign p_Result_84_fu_1175_p5 = {{x_l_I_V_41_reg_1588[34:21]}, {sub_ln219_11_fu_1170_p2}, {x_l_I_V_41_reg_1588[5:0]}};

assign p_Result_85_fu_1186_p4 = {res_I_V_42_reg_1594[16 - 1:4], |(1'd1), res_I_V_42_reg_1594[2:0]};

assign p_Result_86_fu_1227_p4 = {{x_l_I_V_42_fu_1195_p3[19:4]}};

assign p_Result_87_fu_1253_p5 = {{x_l_I_V_42_reg_1611[34:20]}, {sub_ln219_12_reg_1629}, {x_l_I_V_42_reg_1611[3:0]}};

assign p_Result_88_fu_1263_p4 = {res_I_V_43_reg_1617[16 - 1:3], |(1'd1), res_I_V_43_reg_1617[1:0]};

assign p_Result_89_fu_1302_p4 = {{x_l_I_V_43_fu_1272_p3[18:2]}};

assign p_Result_8_fu_431_p4 = {{res_I_V_34_fu_425_p3[15:12]}};

assign p_Result_90_fu_1328_p5 = {{x_l_I_V_43_reg_1634[34:19]}, {sub_ln219_13_reg_1652}, {x_l_I_V_43_reg_1634[1:0]}};

assign p_Result_91_fu_1338_p4 = {res_I_V_44_reg_1640[16 - 1:2], |(1'd1), res_I_V_44_reg_1640[0:0]};

assign p_Result_92_fu_1367_p1 = x_l_I_V_44_fu_1347_p3[17:0];

assign p_Result_93_fu_1387_p5 = {{x_l_I_V_44_reg_1657[34:18]}, {sub_ln219_14_reg_1675}};

assign p_Result_94_fu_1397_p4 = {res_I_V_45_reg_1663[16-1:1], |(1'd1)};

assign p_Result_s_60_fu_1430_p2 = ((x_l_I_V_45_fu_1406_p3 > zext_ln671_fu_1426_p1) ? 1'b1 : 1'b0);

assign p_Result_s_fu_274_p4 = {{res_I_V_32_fu_266_p3[15:14]}};

assign res_I_V_30_fu_1436_p2 = (res_I_V_46_fu_1412_p3 + 16'd1);

assign res_I_V_32_fu_266_p3 = ((tmp_fu_224_p3[0:0] == 1'b1) ? 16'd32768 : 16'd0);

assign res_I_V_33_fu_348_p3 = ((icmp_ln443_fu_306_p2[0:0] == 1'b1) ? res_I_V_32_fu_266_p3 : p_Result_52_fu_330_p4);

assign res_I_V_34_fu_425_p3 = ((icmp_ln443_1_reg_1462[0:0] == 1'b1) ? res_I_V_33_reg_1456 : p_Result_55_fu_410_p4);

assign res_I_V_35_fu_505_p3 = ((icmp_ln443_2_fu_463_p2[0:0] == 1'b1) ? res_I_V_34_fu_425_p3 : p_Result_58_fu_487_p4);

assign res_I_V_36_fu_581_p3 = ((icmp_ln443_3_fu_544_p2[0:0] == 1'b1) ? res_I_V_35_reg_1479 : p_Result_61_fu_565_p4);

assign res_I_V_37_fu_662_p3 = ((icmp_ln443_4_fu_620_p2[0:0] == 1'b1) ? res_I_V_36_fu_581_p3 : p_Result_64_fu_644_p4);

assign res_I_V_38_fu_738_p3 = ((icmp_ln443_5_fu_701_p2[0:0] == 1'b1) ? res_I_V_37_reg_1502 : p_Result_67_fu_722_p4);

assign res_I_V_39_fu_894_p3 = ((icmp_ln443_7_fu_852_p2[0:0] == 1'b1) ? res_I_V_fu_814_p3 : p_Result_73_fu_876_p4);

assign res_I_V_40_fu_970_p3 = ((icmp_ln443_8_fu_933_p2[0:0] == 1'b1) ? res_I_V_39_reg_1548 : p_Result_76_fu_954_p4);

assign res_I_V_41_fu_1046_p3 = ((icmp_ln443_9_reg_1577[0:0] == 1'b1) ? res_I_V_40_reg_1571 : p_Result_79_fu_1031_p4);

assign res_I_V_42_fu_1126_p3 = ((icmp_ln443_10_fu_1084_p2[0:0] == 1'b1) ? res_I_V_41_fu_1046_p3 : p_Result_82_fu_1108_p4);

assign res_I_V_43_fu_1202_p3 = ((icmp_ln443_11_fu_1165_p2[0:0] == 1'b1) ? res_I_V_42_reg_1594 : p_Result_85_fu_1186_p4);

assign res_I_V_44_fu_1278_p3 = ((icmp_ln443_12_reg_1623[0:0] == 1'b1) ? res_I_V_43_reg_1617 : p_Result_88_fu_1263_p4);

assign res_I_V_45_fu_1353_p3 = ((icmp_ln443_13_reg_1646[0:0] == 1'b1) ? res_I_V_44_reg_1640 : p_Result_91_fu_1338_p4);

assign res_I_V_46_fu_1412_p3 = ((icmp_ln443_14_reg_1669[0:0] == 1'b1) ? res_I_V_45_reg_1663 : p_Result_94_fu_1397_p4);

assign res_I_V_47_fu_1442_p3 = ((p_Result_s_60_fu_1430_p2[0:0] == 1'b1) ? res_I_V_30_fu_1436_p2 : res_I_V_46_fu_1412_p3);

assign res_I_V_fu_814_p3 = ((icmp_ln443_6_reg_1531[0:0] == 1'b1) ? res_I_V_38_reg_1525 : p_Result_70_fu_799_p4);

assign select_ln277_fu_238_p3 = ((xor_ln219_fu_232_p2[0:0] == 1'b1) ? 3'd7 : 3'd0);

assign sub_ln219_10_fu_1090_p2 = (p_Result_80_fu_1070_p4 - zext_ln443_10_fu_1080_p1);

assign sub_ln219_11_fu_1170_p2 = (p_Result_83_reg_1605 - zext_ln443_11_fu_1161_p1);

assign sub_ln219_12_fu_1247_p2 = (p_Result_86_fu_1227_p4 - zext_ln443_12_fu_1237_p1);

assign sub_ln219_13_fu_1322_p2 = (p_Result_89_fu_1302_p4 - zext_ln443_13_fu_1312_p1);

assign sub_ln219_14_fu_1381_p2 = (p_Result_92_fu_1367_p1 - zext_ln443_14_fu_1371_p1);

assign sub_ln219_1_fu_394_p2 = (p_Result_53_fu_374_p4 - zext_ln443_1_fu_384_p1);

assign sub_ln219_2_fu_469_p2 = (p_Result_56_fu_449_p4 - zext_ln443_2_fu_459_p1);

assign sub_ln219_3_fu_549_p2 = (p_Result_59_reg_1490 - zext_ln443_3_fu_540_p1);

assign sub_ln219_4_fu_626_p2 = (p_Result_62_fu_606_p4 - zext_ln443_4_fu_616_p1);

assign sub_ln219_5_fu_706_p2 = (p_Result_65_reg_1513 - zext_ln443_5_fu_697_p1);

assign sub_ln219_6_fu_783_p2 = (p_Result_68_fu_763_p4 - zext_ln443_6_fu_773_p1);

assign sub_ln219_7_fu_858_p2 = (p_Result_71_fu_838_p4 - zext_ln443_7_fu_848_p1);

assign sub_ln219_8_fu_938_p2 = (p_Result_74_reg_1559 - zext_ln443_8_fu_929_p1);

assign sub_ln219_9_fu_1015_p2 = (p_Result_77_fu_995_p4 - zext_ln443_9_fu_1005_p1);

assign sub_ln219_fu_312_p2 = (p_Result_50_fu_292_p4 - zext_ln443_fu_302_p1);

assign tmp_10_fu_1062_p3 = {{p_Result_31_fu_1052_p4}, {1'd1}};

assign tmp_11_fu_1154_p3 = {{p_Result_34_reg_1600}, {1'd1}};

assign tmp_12_fu_1219_p3 = {{p_Result_37_fu_1209_p4}, {1'd1}};

assign tmp_13_fu_1294_p3 = {{p_Result_40_fu_1284_p4}, {1'd1}};

assign tmp_14_fu_1359_p3 = {{res_I_V_45_fu_1353_p3}, {1'd1}};

assign tmp_1_fu_284_p3 = {{p_Result_s_fu_274_p4}, {1'd1}};

assign tmp_2_fu_366_p3 = {{p_Result_4_fu_356_p4}, {1'd1}};

assign tmp_3_fu_441_p3 = {{p_Result_8_fu_431_p4}, {1'd1}};

assign tmp_4_fu_533_p3 = {{p_Result_9_reg_1485}, {1'd1}};

assign tmp_5_fu_598_p3 = {{p_Result_13_fu_588_p4}, {1'd1}};

assign tmp_6_fu_690_p3 = {{p_Result_16_reg_1508}, {1'd1}};

assign tmp_7_fu_755_p3 = {{p_Result_19_fu_745_p4}, {1'd1}};

assign tmp_8_fu_830_p3 = {{p_Result_22_fu_820_p4}, {1'd1}};

assign tmp_9_fu_922_p3 = {{p_Result_25_reg_1554}, {1'd1}};

assign tmp_fu_224_p3 = x_int_reg[32'd30];

assign tmp_s_fu_987_p3 = {{p_Result_28_fu_977_p4}, {1'd1}};

assign x_l_I_V_31_fu_258_p3 = ((tmp_fu_224_p3[0:0] == 1'b1) ? p_Result_49_fu_246_p5 : zext_ln666_fu_220_p1);

assign x_l_I_V_32_fu_340_p3 = ((icmp_ln443_fu_306_p2[0:0] == 1'b1) ? x_l_I_V_31_fu_258_p3 : p_Result_51_fu_318_p5);

assign x_l_I_V_33_fu_419_p3 = ((icmp_ln443_1_reg_1462[0:0] == 1'b1) ? x_l_I_V_32_reg_1450 : p_Result_54_fu_400_p5);

assign x_l_I_V_34_fu_497_p3 = ((icmp_ln443_2_fu_463_p2[0:0] == 1'b1) ? x_l_I_V_33_fu_419_p3 : p_Result_57_fu_475_p5);

assign x_l_I_V_35_fu_574_p3 = ((icmp_ln443_3_fu_544_p2[0:0] == 1'b1) ? x_l_I_V_34_reg_1473 : p_Result_60_fu_554_p5);

assign x_l_I_V_36_fu_654_p3 = ((icmp_ln443_4_fu_620_p2[0:0] == 1'b1) ? x_l_I_V_35_fu_574_p3 : p_Result_63_fu_632_p5);

assign x_l_I_V_37_fu_808_p3 = ((icmp_ln443_6_reg_1531[0:0] == 1'b1) ? x_l_I_V_reg_1519 : p_Result_69_fu_789_p5);

assign x_l_I_V_38_fu_886_p3 = ((icmp_ln443_7_fu_852_p2[0:0] == 1'b1) ? x_l_I_V_37_fu_808_p3 : p_Result_72_fu_864_p5);

assign x_l_I_V_39_fu_963_p3 = ((icmp_ln443_8_fu_933_p2[0:0] == 1'b1) ? x_l_I_V_38_reg_1542 : p_Result_75_fu_943_p5);

assign x_l_I_V_40_fu_1040_p3 = ((icmp_ln443_9_reg_1577[0:0] == 1'b1) ? x_l_I_V_39_reg_1565 : p_Result_78_fu_1021_p5);

assign x_l_I_V_41_fu_1118_p3 = ((icmp_ln443_10_fu_1084_p2[0:0] == 1'b1) ? x_l_I_V_40_fu_1040_p3 : p_Result_81_fu_1096_p5);

assign x_l_I_V_42_fu_1195_p3 = ((icmp_ln443_11_fu_1165_p2[0:0] == 1'b1) ? x_l_I_V_41_reg_1588 : p_Result_84_fu_1175_p5);

assign x_l_I_V_43_fu_1272_p3 = ((icmp_ln443_12_reg_1623[0:0] == 1'b1) ? x_l_I_V_42_reg_1611 : p_Result_87_fu_1253_p5);

assign x_l_I_V_44_fu_1347_p3 = ((icmp_ln443_13_reg_1646[0:0] == 1'b1) ? x_l_I_V_43_reg_1634 : p_Result_90_fu_1328_p5);

assign x_l_I_V_45_fu_1406_p3 = ((icmp_ln443_14_reg_1669[0:0] == 1'b1) ? x_l_I_V_44_reg_1657 : p_Result_93_fu_1387_p5);

assign x_l_I_V_fu_731_p3 = ((icmp_ln443_5_fu_701_p2[0:0] == 1'b1) ? x_l_I_V_36_reg_1496 : p_Result_66_fu_711_p5);

assign xor_ln219_fu_232_p2 = (tmp_fu_224_p3 ^ 1'd1);

assign zext_ln443_10_fu_1080_p1 = tmp_10_fu_1062_p3;

assign zext_ln443_11_fu_1161_p1 = tmp_11_fu_1154_p3;

assign zext_ln443_12_fu_1237_p1 = tmp_12_fu_1219_p3;

assign zext_ln443_13_fu_1312_p1 = tmp_13_fu_1294_p3;

assign zext_ln443_14_fu_1371_p1 = tmp_14_fu_1359_p3;

assign zext_ln443_1_fu_384_p1 = tmp_2_fu_366_p3;

assign zext_ln443_2_fu_459_p1 = tmp_3_fu_441_p3;

assign zext_ln443_3_fu_540_p1 = tmp_4_fu_533_p3;

assign zext_ln443_4_fu_616_p1 = tmp_5_fu_598_p3;

assign zext_ln443_5_fu_697_p1 = tmp_6_fu_690_p3;

assign zext_ln443_6_fu_773_p1 = tmp_7_fu_755_p3;

assign zext_ln443_7_fu_848_p1 = tmp_8_fu_830_p3;

assign zext_ln443_8_fu_929_p1 = tmp_9_fu_922_p3;

assign zext_ln443_9_fu_1005_p1 = tmp_s_fu_987_p3;

assign zext_ln443_fu_302_p1 = tmp_1_fu_284_p3;

assign zext_ln666_fu_220_p1 = x_int_reg;

assign zext_ln671_fu_1426_p1 = mul_I_V_fu_1418_p3;

endmodule //kp_502_7_sqrt_fixed_32_32_s
