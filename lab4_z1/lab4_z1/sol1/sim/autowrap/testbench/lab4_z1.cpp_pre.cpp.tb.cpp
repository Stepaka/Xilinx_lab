// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Xilinx_trn/HLS2023/lab4_z1/source/lab4_z1.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Xilinx_trn/HLS2023/lab4_z1/source/lab4_z1.cpp"
# 1 "C:/Xilinx_trn/HLS2023/lab4_z1/source/lab4_z1.h" 1
typedef int data_sc;


void lab4_z1(data_sc in_a[4], data_sc in_b[4], data_sc res[4]);
# 2 "C:/Xilinx_trn/HLS2023/lab4_z1/source/lab4_z1.cpp" 2

void lab4_z1(data_sc in_a[4], data_sc in_b[4], data_sc res[4]){
    data_sc product = 0;
    data_sc temp_a = 0;
    L2:for (int j = 0; j < 4; j++){
        temp_a = in_a[j];
        product = 0;
        L1:for(int i = 0; i < 4; i++){
            product += temp_a * in_b[i];
        }
        res[j] = product;
    }
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_lab4_z1_ir(int *, int *, int *);
#ifdef __cplusplus
extern "C"
#endif
void lab4_z1_hw_stub(int *in_a, int *in_b, int *res){
lab4_z1(in_a, in_b, res);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void apatb_lab4_z1_sw(int *in_a, int *in_b, int *res){
apatb_lab4_z1_ir(in_a, in_b, res);
return ;
}
#endif
# 14 "C:/Xilinx_trn/HLS2023/lab4_z1/source/lab4_z1.cpp"

