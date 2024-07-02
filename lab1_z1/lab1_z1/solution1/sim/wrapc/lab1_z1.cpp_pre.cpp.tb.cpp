// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "G:/Xilinx_lab/lab1_z1/source/lab1_z1.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "G:/Xilinx_lab/lab1_z1/source/lab1_z1.cpp"
# 1 "G:/Xilinx_lab/lab1_z1/source/lab1_z1.h" 1
int lab1_z1(short a, short b, short c, short d);
# 2 "G:/Xilinx_lab/lab1_z1/source/lab1_z1.cpp" 2

int lab1_z1(short a, short b, short c, short d)
{
 int y;
 y = a + b + c - d;
 return y;
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
int apatb_lab1_z1_ir(short, short, short, short);
#ifdef __cplusplus
extern "C"
#endif
int lab1_z1_hw_stub(short a, short b, short c, short d){
int _ret = lab1_z1(a, b, c, d);
return _ret;
}
#ifdef __cplusplus
extern "C"
#endif
int apatb_lab1_z1_sw(short a, short b, short c, short d){
int _ret = apatb_lab1_z1_ir(a, b, c, d);
return _ret;
}
#endif
# 8 "G:/Xilinx_lab/lab1_z1/source/lab1_z1.cpp"

