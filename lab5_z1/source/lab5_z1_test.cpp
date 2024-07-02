#include <stdio.h>
#include <iostream>
#include "lab5_z1.h"

void set_zero(dout_type in_arr[N/4]){
	for (int i = 0; i < N/4; i++){
		in_arr[i] = 0;
	}
}

using namespace std;

int main()
{
	int pass=0;
	int size = N/4;
	din_type in_ar[N];
	dout_type actual_ar[size];
	dout_type expted_ar[size];
	
	for (int i = 0; i < 3; i++){
		
		set_zero(actual_ar);
		
		for(int j = 0; j < N; j++){
			in_ar[j] = rand() % 1000;
		}
		
		lab5_z1(in_ar, actual_ar);

		set_zero(expted_ar);

		for (int j = 0; j < size; j++){
			expted_ar[j] = in_ar[j] + in_ar[j + N/4] + in_ar[j + N/2] + in_ar[j + 3*N/4];
		}

		for (int p = 0; p < size; p++){
		    if (actual_ar[p] != expted_ar[p]) {
			    pass=1;
		        cout << "ERROR: expted_ar[" << p << "]=" << expted_ar[p] << ", but actual_ar[" << p << "]=" << actual_ar[p] << "\n" << endl;
		    }
		}

	}
	

	if (pass == 0)	
	    cout << "----------Pass!------------\n" << endl;
    else
    	cout << "----------Fail!------------\n" << endl;
		
	return pass;
}


