#include <stdio.h>
#include <iostream>
#include "lab7_z3.h"

void set_zero(dout_type in_arr[N]){
	for (int i = 0; i < N; i++){
		in_arr[i] = 0;
	}
}

using namespace std;

int main()
{
	int pass=0;
	din_type in_B[N], in_C[N];
	dout_type actual_A[N];
	dout_type expted_A[N];
	
	for (int i = 0; i < 3; i++){
		
		set_zero(actual_A);
		set_zero(expted_A);
		
		for(int j = 0; j < N; j++){
			in_B[j] = j;
			in_C[j] = j + N;
			expted_A[j] = in_B[j] * in_C[j];
		}
		
		lab7_z3(actual_A, in_B, in_C);

		for (int p = 0; p < N; p++){
		    if (actual_A[p] != expted_A[p]) {
			    pass=1;
		        cout << "ERROR: expted_A[" << p << "]=" << expted_A[p] << ", but actual_A[" << p << "]=" << actual_A[p] << "\n" << endl;
		    }
		}
	}
	
	if (pass == 0)	
	    cout << "----------Pass!------------\n" << endl;
    else
    	cout << "----------Fail!------------\n" << endl;
		
	return pass;
}
