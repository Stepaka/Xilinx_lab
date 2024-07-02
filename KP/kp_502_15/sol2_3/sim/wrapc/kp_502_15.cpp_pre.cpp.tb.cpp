// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Xilinx_trn/HLS2023/KP_502_15/source/kp_502_15.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Xilinx_trn/HLS2023/KP_502_15/source/kp_502_15.cpp"
# 1 "C:/Xilinx_trn/HLS2023/KP_502_15/source/kp_502_15.h" 1

typedef int din_type;
typedef int dout_type;

void kp_502_15(dout_type r[8], din_type a[8], din_type b[8], din_type c[8], din_type x[8]);
# 2 "C:/Xilinx_trn/HLS2023/KP_502_15/source/kp_502_15.cpp" 2


void kp_502_15(dout_type r[8], din_type a[8], din_type b[8], din_type c[8], din_type x[8])
{
 din_type temp_x;

 Loop:for (int i = 0; i < 8; i++)
 {
  temp_x = x[i];
  r[i] = a[i] * temp_x * temp_x + b[i] * temp_x + c[i];
 }
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_kp_502_15_ir(int *, int *, int *, int *, int *);
#ifdef __cplusplus
extern "C"
#endif
void kp_502_15_hw_stub(int *r, int *a, int *b, int *c, int *x){
kp_502_15(r, a, b, c, x);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void apatb_kp_502_15_sw(int *r, int *a, int *b, int *c, int *x){
apatb_kp_502_15_ir(r, a, b, c, x);
return ;
}
#endif
# 13 "C:/Xilinx_trn/HLS2023/KP_502_15/source/kp_502_15.cpp"

