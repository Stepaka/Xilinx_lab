#include <stdio.h>
#include <iostream>
#include "lab3_z2.h"

void set_zero(data_sc in_arr[M]){
	for (int i = 0; i < M; i++){
		in_arr[i] = 0;	
	}
}

using namespace std;

int main()
{
	int pass=0;

	// Call the function for 3 transactions
	data_sc inA_ar[N];
	data_sc actual_ar[M];
	data_sc expted_ar[M];
	
	for (int i = 0; i < 3; i++){
		
		set_zero(actual_ar);

		for(int j = 0; j < N; j++){
			inA_ar[j] = rand() % M;
		}
		
		lab3_z2(inA_ar, actual_ar);


		set_zero(expted_ar);

		for (int k = 0; k < N; k++){
			expted_ar[inA_ar[k]]++;
		}

		for (int p = 0; p < M; p++){
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


