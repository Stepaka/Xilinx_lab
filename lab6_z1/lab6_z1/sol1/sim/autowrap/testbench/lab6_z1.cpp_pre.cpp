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
