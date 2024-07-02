#include <stdio.h>
#include <iostream>

#include "lab1_z1.h"

using namespace std;

int main()
{
	short inA, inB, inC, inD;
	int actual_res, expected_res;
	int pass = 0;
	int i;

	// Call the function for 3 transactions
	for (i=0; i<3; i++)
	{
	//input data settings
		inA = rand() % 100;
		inB = rand() % 100;
		inC = rand() % 100;
		inD = rand() % 100;
	//function invocation
		actual_res = lab1_z1(inA, inB, inC, inD);
	//expected results evaluation
		expected_res = inA + inB + inC - inD;
	// Test the actual results against the expected results
		if (actual_res != expected_res)
		{
			pass = 1;
			cout << "ERROR: expected=" << expected_res << " actual=" << actual_res
		    << "  for inputs: inA=" << inA << " inB=" << inB << " inC=" << inC << "inD=" << inD << endl;
		}
	}
	if (!pass)
		cout << "----------Pass!------------\n" << endl;
	else
		cout << "----------Fail!------------\n" << endl;
	return pass;
}

