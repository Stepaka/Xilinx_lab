#include <stdio.h>
#include "lab3_z2.h"

void set_zero(dio_type in_arr[M]){
	for (int i = 0; i < M; i++){
		in_arr[i] = 0;	
	}
}

int main()
{
	int pass=0;

	// Call the function for 2 transactions
	din_type inA_ar[N];
	dio_type actual_ar[M];
	dio_type expted_ar[M];
	
	for (int i = 0; i < 3; i++){
		set_zero(actual_ar);

		for(int j = 0; j < N; j++){
			inA_ar[j] = rand() %M;
		}
		
		lab3_z2(inA_ar, actual_ar);

	
		set_zero(expted_ar);

		for (int k = 0; k < N; k++){
			expted_ar[inA_ar[k]]++;	
		}

		for (int p = 0; p < M; p++){
		if (actual_ar[p] != expted_ar[p])
			pass=1;
		}

	}
	

	if (pass == 0)	
		fprintf(stdout, "----------Pass!------------\n");
	else 	
		fprintf(stderr, "----------Fail!------------\n");
		
	return pass;
}


