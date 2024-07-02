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
