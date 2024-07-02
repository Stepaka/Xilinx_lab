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
