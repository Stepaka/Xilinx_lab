// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Xilinx_trn/HLS2023/lab4_z2/source/lab4_z2.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Xilinx_trn/HLS2023/lab4_z2/source/lab4_z2.cpp"
# 1 "C:/Xilinx_trn/HLS2023/lab4_z2/source/lab4_z2.h" 1


void lab4_z2(int data_in[16], int scale, int data_out1[16], int data_out2[16]);
# 2 "C:/Xilinx_trn/HLS2023/lab4_z2/source/lab4_z2.cpp" 2

void lab4_z2(int data_in[16], int scale, int data_out1[16], int data_out2[16]) {
 int tempA1[16], tempA2[16], res;
 Loop1: for(int i = 0; i < 16; i++) {
#pragma HLS PIPELINE off
  res = data_in[i] * scale;
  tempA1[i] = res;
  tempA2[i] = res;
 }
 Loop2: for(int j = 0; j < 16; j++) {
#pragma HLS PIPELINE off
  data_out1[j] = tempA1[j] * 22;
 }
 Loop3: for(int k = 0; k < 16; k++) {
#pragma HLS PIPELINE off
  data_out2[k] = tempA2[k] * 33;
 }
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_lab4_z2_ir(int *, int, int *, int *);
#ifdef __cplusplus
extern "C"
#endif
void lab4_z2_hw_stub(int *data_in, int scale, int *data_out1, int *data_out2){
lab4_z2(data_in, scale, data_out1, data_out2);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void apatb_lab4_z2_sw(int *data_in, int scale, int *data_out1, int *data_out2){
apatb_lab4_z2_ir(data_in, scale, data_out1, data_out2);
return ;
}
#endif
# 19 "C:/Xilinx_trn/HLS2023/lab4_z2/source/lab4_z2.cpp"

