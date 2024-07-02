#include "lab7_z2.h"

void lab7_z2(dout_type a[N], din_type b[N], din_type c[N])
{
	dout_type temp_mult;
	Mult:for (int i = 0; i < N; i++)
	{
		temp_mult = b[i] * c[i] ;
		a[i] = temp_mult;
	}
}

