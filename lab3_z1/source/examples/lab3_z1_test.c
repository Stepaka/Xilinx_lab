#include <stdio.h>
#include <stdlib.h>
#include "lab3_z1.h"

int main() {
	din_type inA, inB;
    pntin_type inC;
    pntrout_type act_res, exp_res;
	rtrn_type exp_rtrn, act_rtrn;
 
    int pass = 0;
    // Calling the function for 3 times and the results comparing
    for (int i = 3; i >=0; i--)
    {
        // initial settings
       	inA = rand() % 8192;
        inB = rand() % 8192;
        inC = rand() % 8192;

    	//function invocation and getting actual results
        act_rtrn = lab3_z1 (inA, inB, &inC, &act_res);
        
    	//expected results evaluation
        exp_res = inA  * inC + inB;
        exp_rtrn= inA  * inC;
    
        // Compare the actual results against the expected results
        if ((act_rtrn != exp_rtrn) || (act_res != exp_res))
        {
            pass = 1;
            fprintf(stdout, "ERROR: ina=%d ina=%d ina=%d exp_res=%d  act_res=%d exp_rtrn=%d  act_rtrn=%d  \n", 
                                    inA,   inB,   inC,   exp_res,    act_res,   exp_rtrn,    act_rtrn);
        }
       // else
       //     fprintf(stdout, "ina=%d  expected=%d  actual=%d  \n", inA, expected, actual);
     }

    if (!pass)
        fprintf(stdout, "----------Pass!------------ \n");
    else
        fprintf(stderr, "----------Fail!------------ \n");

    return pass;
};

