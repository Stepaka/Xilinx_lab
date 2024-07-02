# 1 "C:/Xilinx_trn/HLS2023/lab7_z3/source/lab7_z3.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Xilinx_trn/HLS2023/lab7_z3/source/lab7_z3.cpp"
# 1 "C:/Xilinx_trn/HLS2023/lab7_z3/source/lab7_z3.h" 1

typedef double din_type;
typedef double dout_type;

void lab7_z3(dout_type a[128], din_type b[128], din_type c[128]);
# 2 "C:/Xilinx_trn/HLS2023/lab7_z3/source/lab7_z3.cpp" 2


void lab7_z3(dout_type a[128], din_type b[128], din_type c[128])
{
 dout_type temp_mult;

 Mult:for (int i = 0; i < 128; i++)
 {
  temp_mult = b[i] * c[i] ;
  a[i] = temp_mult;
 }
}
