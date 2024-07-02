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
