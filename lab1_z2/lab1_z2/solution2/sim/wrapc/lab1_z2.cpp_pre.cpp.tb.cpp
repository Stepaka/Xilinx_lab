// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "G:/Xilinx_lab/lab1_z2/source/lab1_z2.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "G:/Xilinx_lab/lab1_z2/source/lab1_z2.cpp"
# 1 "G:/Xilinx_lab/lab1_z2/source/lab1_z2.h" 1


void lab1_z2( short inArr[3], short a, short b, short c, int outArr[3]);
# 2 "G:/Xilinx_lab/lab1_z2/source/lab1_z2.cpp" 2

void lab1_z2(short inArr[3], short a, short b, short c, int outArr[3])
{
 short x;
 int y;
 for(int i = 0; i < 3; i++)
 {
#pragma HLS PIPELINE off
  x = inArr[i];
  y = x + a + b + c;
  outArr[i] = y;
 }
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_lab1_z2_ir(short *, short, short, short, int *);
#ifdef __cplusplus
extern "C"
#endif
void lab1_z2_hw_stub(short *inArr, short a, short b, short c, int *outArr){
lab1_z2(inArr, a, b, c, outArr);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void apatb_lab1_z2_sw(short *inArr, short a, short b, short c, int *outArr){
apatb_lab1_z2_ir(inArr, a, b, c, outArr);
return ;
}
#endif
# 14 "G:/Xilinx_lab/lab1_z2/source/lab1_z2.cpp"

