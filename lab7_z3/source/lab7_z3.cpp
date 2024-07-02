#include "lab7_z3.h"
//#include <omp.h>

void lab7_z3(dout_type a[N], din_type b[N], din_type c[N])
{
	dout_type temp_mult;
	//#pragma omp parallel for private(temp_mult) num_threads(8)
	Mult:for (int i = 0; i < N; i++)
	{
		temp_mult = b[i] * c[i] ;
		a[i] = temp_mult;
	}
}
