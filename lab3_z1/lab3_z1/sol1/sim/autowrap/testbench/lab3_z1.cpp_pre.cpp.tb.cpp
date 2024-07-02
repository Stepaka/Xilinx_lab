// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Xilinx_trn/HLS2023/lab3_z1/source/lab3_z1.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Xilinx_trn/HLS2023/lab3_z1/source/lab3_z1.cpp"
# 1 "C:/Xilinx_trn/HLS2023/lab3_z1/source/lab3_z1.h" 1
typedef int data_ret;
typedef short data_in;
typedef short pnt_in;
typedef int pnt_out;

data_ret lab3_z1 (data_in inA, data_in inB, pnt_in *inC, pnt_out *res);
# 2 "C:/Xilinx_trn/HLS2023/lab3_z1/source/lab3_z1.cpp" 2

data_ret lab3_z1 (data_in inA, data_in inB, pnt_in *inC, pnt_out *res) {
    data_ret temp;
    temp = inA * *inC;
    *res = temp + inB;
    return temp;
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
int apatb_lab3_z1_ir(short, short, short *, int *);
#ifdef __cplusplus
extern "C"
#endif
int lab3_z1_hw_stub(short inA, short inB, short *inC, int *res){
int _ret = lab3_z1(inA, inB, inC, res);
return _ret;
}
#ifdef __cplusplus
extern "C"
#endif
int apatb_lab3_z1_sw(short inA, short inB, short *inC, int *res){
int _ret = apatb_lab3_z1_ir(inA, inB, inC, res);
return _ret;
}
#endif
# 8 "C:/Xilinx_trn/HLS2023/lab3_z1/source/lab3_z1.cpp"

