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
