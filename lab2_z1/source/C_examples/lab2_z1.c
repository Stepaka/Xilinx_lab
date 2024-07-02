#include "lab2_z1.h"

dout_type lab2_z1 (din_type in_a)
{
	dout_type tmp;
	din_type tmp_in;
	if (in_a <= 12)
		tmp_in = in_a;
	else
		tmp_in = 12;
    tmp = 1;
	lab2_z1_label0:for(int j = 1; j <= tmp_in; j++)
	{
//		#pragma HLS LOOP_TRIPCOUNT max=12
		#pragma HLS PIPELINE off
		tmp 	= tmp * j;
	}
    return tmp;
}

