#include "lab1_z2.h"

void lab1_z2(short inArr[ROWS], short a, short b, short c, int outArr[ROWS])
{
	short 	x;
	int 	y;
	for(int i = 0; i < ROWS; i++)
	{
		#pragma HLS PIPELINE off
		x = inArr[i];
		y = x + a + b + c;
		outArr[i] = y;
	}
}
