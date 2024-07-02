#include <stdio.h>
#include <iostream>

#include "lab1_z2.h"

using namespace std;

//function for comparing expected and actual results in arrays
int arentEqual(int expectedArr[ROWS], int actualArr[ROWS])
{
    // Linearly compare elements
    for (int i = 0; i < ROWS; i++)
        if (expectedArr[i] != actualArr[i])
        {
        	cout <<  "ERROR: expected=" << expectedArr[i] << " actual=" << actualArr[i] << " for ROW: " << i << " \n" << endl;
            return 1;
        }
    // If all elements were the same.
    return 0;
}

int main() {
	short inA, inB, inC;
	short inArr[ROWS];
	int expectedArr[ROWS], actualArr[ROWS];

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
    	cout << "----------Pass!------------\n" << endl;
    else
    	cout << "----------Fail!------------\n" << endl;

    return pass;
};
