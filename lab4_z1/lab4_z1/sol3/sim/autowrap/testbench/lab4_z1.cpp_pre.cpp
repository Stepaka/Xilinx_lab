# 1 "C:/Xilinx_trn/HLS2023/lab4_z1/source/lab4_z1.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Xilinx_trn/HLS2023/lab4_z1/source/lab4_z1.cpp"
# 1 "C:/Xilinx_trn/HLS2023/lab4_z1/source/lab4_z1.h" 1
typedef int data_sc;


void lab4_z1(data_sc in_a[4], data_sc in_b[4], data_sc res[4]);
# 2 "C:/Xilinx_trn/HLS2023/lab4_z1/source/lab4_z1.cpp" 2

void lab4_z1(data_sc in_a[4], data_sc in_b[4], data_sc res[4]){
    data_sc product = 0;
    data_sc temp_a = 0;
    L2:for (int j = 0; j < 4; j++){
        temp_a = in_a[j];
        product = 0;
        L1:for(int i = 0; i < 4; i++){
            product += temp_a * in_b[i];
        }
        res[j] = product;
    }
}
