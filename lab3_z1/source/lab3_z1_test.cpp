#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include "lab3_z1.h"

using namespace std;

int main() {
	data_in inA, inB;
    pnt_in inC;
    pnt_out act_res, exp_res;
	data_ret exp_rtrn, act_rtrn;
 
    int pass = 0;
    // Calling the function for 3 times and the results comparing
    for (int i = 0; i < 3; i++)
    {
    	act_res = 0;
        // initial settings
       	inA = rand() % 8192;
        inB = rand() % 8192;
        inC = rand() % 8192;

    	//function invocation and getting actual results
        act_rtrn = lab3_z1(inA, inB, &inC, &act_res);
        
    	//expected results evaluation
        exp_res = inA  * inC + inB;
        exp_rtrn= inA  * inC;
    
        // Compare the actual results against the expected results
        if ((act_rtrn != exp_rtrn) || (act_res != exp_res))
        {
            pass = 1;
		    cout << "ERROR: inA=" << inA << "inB=" << inB << "inC=" << inC << " exp_res=" << exp_res << 
			" act_res=" << act_res << " exp_rtrn=" << exp_rtrn << " act_rtrn=" << act_rtrn << "\n" << endl;
        }
     }

    if (!pass)
    	cout << "----------Pass!------------\n" << endl;
    else
    	cout << "----------Fail!------------\n" << endl;

    return pass;
};

