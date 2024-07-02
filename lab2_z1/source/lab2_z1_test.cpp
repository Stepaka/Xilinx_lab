#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include "lab2_z1.h"

using namespace std;

dout_type factorial (din_type n)
{
	dout_type fact = 1;
	if (n == 0) {
		fact = 1;
	} else {
		fact = n * factorial(n-1);
	}
    return fact;
}


int main() {
	din_type inN;
	dout_type expected, actual;
    int pass = 0;

    for (int i = 0; i < 3; i++)
    {
       	inN = (rand() % 9) + 5;

        actual = lab2_z1(inN);
        expected = factorial(inN);
		
        if (expected != actual)
        {
            pass = 1;
			cout << "ERROR: inN=" << inN << " expected=" << expected << " actual=" << actual << "\n" << endl;
        }
     }

    if (!pass)
    	cout << "----------Pass!------------\n" << endl;
    else
    	cout << "----------Fail!------------\n" << endl;

    return pass;
};

