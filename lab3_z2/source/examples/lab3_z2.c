#include "lab3_z2.h"

void lab3_z2(din_type inA_ar[N], dio_type io_ar[M])
{
	din_type io_i;
	dio_type io_temp;
	lab3_z2_label0:for(int i = 0;i < N; ++i){

		io_i 			= inA_ar[i];
		io_temp 		= io_ar[io_i]+1;
		io_ar[io_i] 	= io_temp;
	}
	
}
