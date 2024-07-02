#include <stdio.h>
#include <iostream>
#include <sys/time.h>
#include <algorithm>
#include <vector>
#include "lab4_z1.h"
#include "lab4_z1.cpp"

void set_zero(data_sc in_arr[N]){
	for (int i = 0; i < N; i++){
		in_arr[i] = 0;
	}
}

bool comp (double a, double b) {
  return a < b;
}

using namespace std;

int main()
{
	int pass=0;
	data_sc inA_ar[N];
	data_sc inB_ar[N];
	data_sc actual_ar[N];
	data_sc expted_ar[N];
	
	struct timeval t0, t1;
	double acc_time = 0.0;
	vector<double> diff_arr;
	int NStarts = 32;
	
	for (int i = 0; i < NStarts; i++){
		
		set_zero(actual_ar);

		for(int j = 0; j < N; j++){
			inA_ar[j] = rand() % 100;
			inB_ar[j] = rand() % 100;
		}
		
		gettimeofday(&t0, NULL);
		lab4_z1(inA_ar, inB_ar, actual_ar);
		gettimeofday(&t1, NULL);

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
		
		double diff_time = (((double) (t1.tv_sec - t0.tv_sec)) * 1000000000.0) + ((double)(t1.tv_usec - t0.tv_usec) * 1000.0);
		acc_time += diff_time;
		double temp_avg_time = acc_time / (i + 1);
		cout << "Elapsed time: " << temp_avg_time << " nanoseconds" << endl;
		diff_arr.push_back(temp_avg_time);

	}
	

	if (pass == 0)	
	    cout << "----------Pass!------------\n" << endl;
    else
    	cout << "----------Fail!------------\n" << endl;
		
	sort(diff_arr.begin(), diff_arr.end(), comp);
	
	cout << "Min time: " << diff_arr[0] << " nanoseconds" << endl;
	cout << "Max time: " << diff_arr[NStarts - 1] << " nanoseconds" << endl;
	cout << "Median time: " << (diff_arr.at(NStarts / 2) + diff_arr.at((NStarts + 1) / 2)) / 2 << " nanoseconds" << endl;
	return pass;
}


