#include "lab6_z1.h"

void lab6_z1(dout_type a[N], din_type b[N], din_type c[N])
{
	dout_type temp_mult;
#pragma HLS BIND_OP variable=temp_mult op=mul impl=dsp latency=3
	Mult:for (int i = 0; i < N; i++)
	{
		temp_mult = b[i] * c[i] ;
		a[i] = temp_mult;
	}
}

