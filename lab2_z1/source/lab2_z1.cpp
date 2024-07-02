#include "lab2_z1.h"

dout_type lab2_z1 (din_type n)
{
	dout_type fact = 1;
	for(int i = 1; i <= n; i++)
	{
		#pragma HLS PIPELINE off
		fact = fact * i;
	}
    return fact;
}