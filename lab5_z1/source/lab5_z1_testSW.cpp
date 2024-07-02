#include <stdio.h>
#include <iostream>
#include <sys/time.h>
#include <algorithm>
#include <vector>
#include "lab5_z1.h"
#include "lab5_z1.cpp"

void set_zero(dout_type in_arr[N/4]){
	for (int i = 0; i < N/4; i++){
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
	int size = N/4;
	din_type in_ar[N];
	dout_type actual_ar[size];
	dout_type expted_ar[size];
	
	struct timeval t0, t1;
	double acc_time = 0.0;
	vector<double> diff_arr;
	int NStarts = 32;
	
	for (int i = 0; i < NStarts; i++){
		
		set_zero(actual_ar);
		
		for(int j = 0; j < N; j++){
			in_ar[j] = rand() % 1000;
		}
		
		gettimeofday(&t0, NULL);
		lab5_z1(in_ar, actual_ar);
		gettimeofday(&t1, NULL);

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


