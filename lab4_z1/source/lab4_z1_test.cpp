#include <stdio.h>
#include <iostream>
#include "lab4_z1.h"

void set_zero(data_sc in_arr[N]){
	for (int i = 0; i < N; i++){
		in_arr[i] = 0;
	}
}

using namespace std;

int main()
{
	int pass=0;
	data_sc inA_ar[N];
	data_sc inB_ar[N];
	data_sc actual_ar[N];
	data_sc expted_ar[N];
	
	for (int i = 0; i < 3; i++){
		
		set_zero(actual_ar);

		for(int j = 0; j < N; j++){
			inA_ar[j] = rand() % 100;
			inB_ar[j] = rand() % 100;
		}
		
		lab4_z1(inA_ar, inB_ar, actual_ar);

		set_zero(expted_ar);

		for (int j = 0; j < N; j++){
			for (int k = 0; k < N; k++){
				expted_ar[j] += inA_ar[j] * inB_ar[k];
			}
		}

		for (int p = 0; p < N; p++){
		    if (actual_ar[p] != expted_ar[p]) {
			    pass=1;
		        cout << "ERROR: expted_ar[" << p << "]=" << expted_ar[p] << " actual_ar[" << p << "]=" << actual_ar[p] << "\n" << endl;
		    }
		}

	}
	

	if (pass == 0)	
	    cout << "----------Pass!------------\n" << endl;
    else
    	cout << "----------Fail!------------\n" << endl;
		
	return pass;
}


