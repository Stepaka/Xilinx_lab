#include <stdio.h>
#include <iostream>
#include "lab4_z2.h"

void set_zero(int in_arr[N]){
	for (int i = 0; i < N; i++){
		in_arr[i] = 0;
	}
}

using namespace std;

int main()
{
	int pass=0;
	int scale;
	int in_ar[N];
	int actual_ar1[N];
	int actual_ar2[N];
	int expted_ar1[N];
	int expted_ar2[N];
	
	for (int i = 0; i < 3; i++){
		
		set_zero(actual_ar1);
		set_zero(actual_ar2);
		
		scale = rand() % 100;
		for(int j = 0; j < N; j++){
			in_ar[j] = rand() % 1000;
		}
		
		lab4_z2(in_ar, scale, actual_ar1, actual_ar2);

		set_zero(expted_ar1);
		set_zero(expted_ar2);

		for (int j = 0; j < N; j++){
			expted_ar1[j] = in_ar[j] * scale * 22;
			expted_ar2[j] = in_ar[j] * scale * 33;
		}

		for (int p = 0; p < N; p++){
		    if (actual_ar1[p] != expted_ar1[p] || actual_ar2[p] != expted_ar2[p]) {
			    pass=1;
		        cout << "ERROR: expted_ar1[" << p << "]=" << expted_ar1[p] << ", expted_ar2["<< p << "]=" << expted_ar2[p] 
				<< ", but actual_ar1[" << p << "]=" << actual_ar1[p] << ", actual_ar2[" << p << "]=" << actual_ar2[p] << "\n" << endl;
		    }
		}

	}
	

	if (pass == 0)	
	    cout << "----------Pass!------------\n" << endl;
    else
    	cout << "----------Fail!------------\n" << endl;
		
	return pass;
}


