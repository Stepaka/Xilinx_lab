#include <stdio.h>
#include <iostream>
#include <sys/time.h>
#include <algorithm>
#include <vector>
#include "kp_502_15.h"
#include "kp_502_15.cpp"

void set_zero(dout_type in_arr[N]){
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
	auto *in_A = new din_type[N];
	auto *in_B = new din_type[N];
	auto *in_C = new din_type[N];
	auto *in_X = new din_type[N];
	dout_type actual_R[N];
	dout_type expted_R[N];
	
	struct timeval t0, t1;
	double acc_time = 0.0;
	vector<double> diff_arr;
	int NStarts = 32;
	
	for (int i = 0; i < NStarts; i++){
		
		set_zero(actual_R);
		set_zero(expted_R);
		
		for(int j = 0; j < N; j++){
		    in_A[j] = rand() % N;
			in_B[j] = rand() % N;
			in_C[j] = rand() % N;
			in_X[j] = rand() % N;
			expted_R[j] = in_A[j] * in_X[j] * in_X[j] + in_B[j] * in_X[j] + in_C[j];
		}
		
		gettimeofday(&t0, NULL);
		kp_502_15(actual_R, in_A, in_B, in_C, in_X);
		gettimeofday(&t1, NULL);

		for (int p = 0; p < N; p++){
		    if (actual_R[p] != expted_R[p]) {
			    pass=1;
		        cout << "ERROR: expted_R[" << p << "]=" << expted_R[p] << ", but actual_R[" << p << "]=" << actual_R[p] << "\n" << endl;
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
	system("pause");
	return pass;
}