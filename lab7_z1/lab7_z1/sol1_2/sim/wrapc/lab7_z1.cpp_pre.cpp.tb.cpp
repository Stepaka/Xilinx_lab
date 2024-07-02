// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Xilinx_trn/HLS2023/lab7_z1/source/lab7_z1.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Xilinx_trn/HLS2023/lab7_z1/source/lab7_z1.cpp"
# 1 "C:/Xilinx_trn/HLS2023/lab7_z1/source/lab7_z1.h" 1

typedef int din_type;
typedef int dout_type;

void lab7_z1(dout_type a[128], din_type b[128], din_type c[128]);
# 2 "C:/Xilinx_trn/HLS2023/lab7_z1/source/lab7_z1.cpp" 2

void lab7_z1(dout_type a[128], din_type b[128], din_type c[128])
{
 dout_type temp_mult;
 Mult:for (int i = 0; i < 128; i++)
 {
  temp_mult = b[i] * c[i] ;
  a[i] = temp_mult;
 }
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_lab7_z1_ir(int *, int *, int *);
#ifdef __cplusplus
extern "C"
#endif
void lab7_z1_hw_stub(int *a, int *b, int *c){
lab7_z1(a, b, c);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void apatb_lab7_z1_sw(int *a, int *b, int *c){
apatb_lab7_z1_ir(a, b, c);
return ;
}
#endif
# 11 "C:/Xilinx_trn/HLS2023/lab7_z1/source/lab7_z1.cpp"

