// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Xilinx_trn/HLS2023/lab5_z1/source/lab5_z1.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Xilinx_trn/HLS2023/lab5_z1/source/lab5_z1.cpp"
# 1 "C:/Xilinx_trn/HLS2023/lab5_z1/source/lab5_z1.h" 1
typedef short din_type;
typedef short dout_type;


void lab5_z1 (din_type d_in[512], dout_type d_out[512/4]);
# 2 "C:/Xilinx_trn/HLS2023/lab5_z1/source/lab5_z1.cpp" 2

void lab5_z1(din_type d_in[512], dout_type d_out[512/4]){
 int i;
 int temp, temp_4, temp_24, temp_34;
 foo_label0:for(i = 0; i < 512/4; i++){
  temp = d_in[i];
  temp_4 = d_in[i+512/4];
  temp_24 = d_in[i+512/2];
  temp_34 = d_in[i+3*512/4];
  d_out[i] = (temp + temp_4) + (temp_24 + temp_34);
 }
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_lab5_z1_ir(short *, short *);
#ifdef __cplusplus
extern "C"
#endif
void lab5_z1_hw_stub(short *d_in, short *d_out){
lab5_z1(d_in, d_out);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void apatb_lab5_z1_sw(short *d_in, short *d_out){
apatb_lab5_z1_ir(d_in, d_out);
return ;
}
#endif
# 13 "C:/Xilinx_trn/HLS2023/lab5_z1/source/lab5_z1.cpp"

