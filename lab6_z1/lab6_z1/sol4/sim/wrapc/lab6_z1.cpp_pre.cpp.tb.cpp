// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Xilinx_trn/HLS2023/lab6_z1/source/lab6_z1.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Xilinx_trn/HLS2023/lab6_z1/source/lab6_z1.cpp"
# 1 "C:/Xilinx_trn/HLS2023/lab6_z1/source/lab6_z1.h" 1

typedef short din_type;
typedef short dout_type;

void lab6_z1(dout_type a[32], din_type b[32], din_type c[32]);
# 2 "C:/Xilinx_trn/HLS2023/lab6_z1/source/lab6_z1.cpp" 2

void lab6_z1(dout_type a[32], din_type b[32], din_type c[32]){
 Mult:for (int i = 0; i < 32; i++){
  a[i] = b[i] * c[i];
 }
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_lab6_z1_ir(short *, short *, short *);
#ifdef __cplusplus
extern "C"
#endif
void lab6_z1_hw_stub(short *a, short *b, short *c){
lab6_z1(a, b, c);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void apatb_lab6_z1_sw(short *a, short *b, short *c){
apatb_lab6_z1_ir(a, b, c);
return ;
}
#endif
# 7 "C:/Xilinx_trn/HLS2023/lab6_z1/source/lab6_z1.cpp"

