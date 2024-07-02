#include <stdio.h>
#include <iostream>
#include "kp_502_15.h"

void set_zero(dout_type in_arr[N]){
	for (int i = 0; i < N; i++){
		in_arr[i] = 0;
	}
}

using namespace std;

int main()
{
	int pass=0;
	din_type in_A[N], in_B[N], in_C[N], in_X[N];
	dout_type actual_R[N];
	dout_type expted_R[N];
	
	for (int i = 0; i < 3; i++){
		
		set_zero(actual_R);
		set_zero(expted_R);
		
		for(int j = 0; j < N; j++){
		    in_A[j] = rand() % N;
			in_B[j] = rand() % N;
			in_C[j] = rand() % N;
			in_X[j] = rand() % N;
			expted_R[j] = in_A[j] * in_X[j] * in_X[j] + in_B[j] * in_X[j] + in_C[j] + 1;
		}
		
		kp_502_15(actual_R, in_A, in_B, in_C, in_X);

		for (int p = 0; p < N; p++){
		    if (actual_R[p] != expted_R[p]) {
			    pass=1;
		        cout << "ERROR: expted_R[" << p << "]=" << expted_R[p] 
				<< ", but actual_R[" << p << "]=" << actual_R[p] << "\n" << endl;
		    }
		}
	}
	
	if (pass == 0)	
	    cout << "----------Pass!------------\n" << endl;
    else
    	cout << "----------Fail!------------\n" << endl;
		
	return pass;
}
