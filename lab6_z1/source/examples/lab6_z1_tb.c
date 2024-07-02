#include <stdio.h>
#include "lab6_z1.h"

int main()
{
	dout_type a[N], a_exp[N];
	din_type b[N],c[N];
	for (int k = 0; k< 3; k++) 
	{
		for(int i = 0; i < N; i++)
		{
			b[i] = i;
			c[i] = i + N ;
			a_exp[i] = b[i] * c[i];
		}

		lab6_z1(a,b,c);

		for(int j = 0; j < N;j++)
		{
			if(a_exp[j] != a[j])
			{
				printf("Exp a[%d] = %d\t Actual a[%d] = %d\n",j,a_exp[j],j,a[j]);
				printf("=======FAIL=======\n");
				return -1;
			}
		}
	}
	printf("=======PASS=======");
	return 0;
}
