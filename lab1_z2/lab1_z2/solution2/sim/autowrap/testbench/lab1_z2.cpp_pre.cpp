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
