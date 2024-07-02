#include "lab4_z2.h"

void lab4_z2(int data_in[N], int scale, int data_out1[N], int data_out2[N]) {
	int tempA1[N], tempA2[N], res;
	Loop1: for(int i = 0; i < N; i++) {
        #pragma HLS PIPELINE off
		res = data_in[i] * scale;
		tempA1[i] = res;
		tempA2[i] = res;
	}
	Loop2: for(int j = 0; j < N; j++) {
        #pragma HLS PIPELINE off
		data_out1[j] = tempA1[j] * 22;
	}
	Loop3: for(int k = 0; k < N; k++) {
		#pragma HLS PIPELINE off
		data_out2[k] = tempA2[k] * 33;
	}
}
