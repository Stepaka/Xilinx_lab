#include <stdio.h>
#include "lab1_z1.h"

int main()
{
	din_type 	inA, inB, inC, inD;
	dout_type 	actual_res, expected_res;
	int pass = 0;
	int i;
    // initial settings
    	//srand(time(NULL));
	// Call the function for 3 transactions
	for (i=0; i<3; i++)
	{
	//input data settings	
		inA = rand() % 100;
		inB = rand() % 100;
		inC = rand() % 100;
		inD = rand() % 100;
	//function invocation
		actual_res 		= lab1_z1(inA, inB, inC, inD);
	//expected results evaluation
		expected_res 	= inA + inB + inC - inD;
	// Test the actual results against the expected results 
		if (actual_res != expected_res)
		{
			pass = 1;
			fprintf(stdout, " ERROR: expected=%d  actual=%d  for inputs: inA=%d inB=%d inC=%d inD=%d\n"
				,                expected_res, actual_res,             inA,  inB,   inC,   inD);
		}
	}
	if (!pass)
		fprintf(stdout, "----------Pass!------------\n");
	else
		fprintf(stdout, "----------Fail!------------\n");
	return pass;
}

