// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Xilinx_trn/HLS2023/lab2_z1/source/lab2_z1.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Xilinx_trn/HLS2023/lab2_z1/source/lab2_z1.cpp"
# 1 "C:/Xilinx_trn/HLS2023/lab2_z1/source/lab2_z1.h" 1
typedef unsigned char din_type;
typedef unsigned int dout_type;

dout_type lab2_z1 (din_type n);
# 2 "C:/Xilinx_trn/HLS2023/lab2_z1/source/lab2_z1.cpp" 2

dout_type lab2_z1 (din_type n)
{
 dout_type fact = 1;
 for(int i = 1; i <= n; i++)
 {
#pragma HLS PIPELINE off
  fact = fact * i;
 }
    return fact;
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
unsigned int apatb_lab2_z1_ir(unsigned char);
#ifdef __cplusplus
extern "C"
#endif
unsigned int lab2_z1_hw_stub(unsigned char n){
unsigned int _ret = lab2_z1(n);
return _ret;
}
#ifdef __cplusplus
extern "C"
#endif
unsigned int apatb_lab2_z1_sw(unsigned char n){
unsigned int _ret = apatb_lab2_z1_ir(n);
return _ret;
}
#endif
# 12 "C:/Xilinx_trn/HLS2023/lab2_z1/source/lab2_z1.cpp"

