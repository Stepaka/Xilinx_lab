#include "lab5_z1.h"

void lab5_z1(din_type d_in[N], dout_type d_out[N/4]){
	int i;
	int temp, temp_4, temp_24, temp_34;
	foo_label0:for(i = 0; i < N/4; i++){
		temp = d_in[i];
		temp_4 = d_in[i+N/4];
		temp_24 = d_in[i+N/2];
		temp_34	= d_in[i+3*N/4];
		d_out[i] = (temp + temp_4) + (temp_24 + temp_34);
	}
}
