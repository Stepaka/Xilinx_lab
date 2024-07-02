#include <stdio.h>
#include <stdlib.h>
#include "lab2_z1.h"

//function for comparing expected and actual results in arrays

int main() {
	din_type inA;
	dout_type expected, actual;

    int pass = 0;
    // Calling the function for 3 times and the results comparing
    for (int i = 12; i >= 0; i--)
    {
        // initial settings
       	inA = i ;

    	//function invocation and getting actual results
        actual = lab2_z1(inA);
        expected = 1;
    	//expected results evaluation
        for (din_type k=1; k<=inA; k++)
        	expected = expected * k;

        // Compare the actual results against the expected results
        if (expected != actual)
        {
            pass = 1;
            fprintf(stdout, "ERROR: ina=%d expected=%d actual=%d  \n", inA, expected, actual);
        }
        else
            fprintf(stdout, "       ina=%d expected=%d actual=%d  \n", inA, expected, actual);
     }

    if (!pass)
        fprintf(stdout, "----------Pass!------------ \n");
    else
        fprintf(stderr, "----------Fail!------------ \n");

    return pass;
};

