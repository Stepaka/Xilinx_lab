#include <stdio.h>
#include "lab1_z2.h"

//function for comparing expected and actual results in arrays
int arentEqual(dout_type expectedArr[ROWS], dout_type actualArr[ROWS])
{
    // Linearly compare elements 
    for (int i = 0; i < ROWS; i++)
        if (expectedArr[i] != actualArr[i])
        {
        	fprintf(stdout, " ERROR: expected=%d  actual=%d  for ROW: %d  \n",
            expectedArr[i], actualArr[i], i);
            return 1;
        }
    // If all elements were the same.
    return 0;
}

int main() {
	din_type inA, inB, inC;
	din_type inArr[ROWS];
	dout_type expectedArr[ROWS], actualArr[ROWS];

    int pass = 0;
    // Calling the function for 3 times and the results comparing
    for (int i = 0; i < 3; i++)
    {
        // initial settings
    	inA = rand() % 100;
        inB = rand() % 100;
        inC = rand() % 100;
    	for (int j=0; j<ROWS; j++)
        {
        	inArr [j] 		= rand() % 1000;
        	actualArr[j] 	= 0;
        }

    	//function invocation and getting actual results
    	lab1_z2(inArr, inA, inB, inC, actualArr);

    	//expected results evaluation
        for (int i=0; i<ROWS; i++)
        	expectedArr[i] 	= inArr [i] + inA  + inB + inC;

        // Compare the actual results against the expected results
        if (arentEqual(expectedArr, actualArr))
        	pass = 1;
     }

    if (!pass)
        fprintf(stdout, "----------Pass!------------ \n");
    else
        fprintf(stderr, "----------Fail!------------ \n");

    return pass;
};
