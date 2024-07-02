#include "lab4_z1.h"

void lab4_z1(data_sc in_a[N], data_sc in_b[N], data_sc res[N]){
    data_sc product = 0;
    data_sc temp_a = 0;
    L2:for (int j = 0; j < N; j++){
        temp_a = in_a[j];
        product = 0;
        L1:for(int i = 0; i < N; i++){
            product += temp_a * in_b[i];
        }
        res[j] = product;
    }
}
