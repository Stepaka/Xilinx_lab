# 1 "C:/Xilinx_trn/HLS2023/lab3_z2/source/lab3_z2.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Xilinx_trn/HLS2023/lab3_z2/source/lab3_z2.cpp"
# 1 "C:/Xilinx_trn/HLS2023/lab3_z2/source/lab3_z2.h" 1
typedef short data_sc;



void lab3_z2(data_sc inA_ar[16], data_sc out_ar[8]);
# 2 "C:/Xilinx_trn/HLS2023/lab3_z2/source/lab3_z2.cpp" 2

void lab3_z2(data_sc inA_ar[16], data_sc out_ar[8])
{
 int i;
 data_sc temp;

 for(i = 0;i < 16; i++){
#pragma HLS PIPELINE off
  temp = inA_ar[i];
  out_ar[temp] = out_ar[temp] + 1;
 }
}
