#include "kp_502_15.h"

void kp_502_15(dout_type r[N], din_type a[N], din_type b[N], din_type c[N], din_type x[N])
{
	din_type temp_x;
	Loop:for (int i = 0; i < N; i++)
	{
		temp_x = x[i];
		r[i] = a[i] * temp_x * temp_x  + b[i] * temp_x + c[i];
	}
}
