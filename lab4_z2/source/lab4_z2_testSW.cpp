#include <stdio.h>
#include <iostream>
#include <sys/time.h>
#include <algorithm>
#include <vector>
#include "lab4_z2.h"
#include "lab4_z2.cpp"

void set_zero(int in_arr[N]){
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
	int scale;
	int in_ar[N];
	int actual_ar1[N];
	int actual_ar2[N];
	int expted_ar1[N];
	int expted_ar2[N];
	
	struct timeval t0, t1;
	double acc_time = 0.0;
	vector<double> diff_arr;
	int NStarts = 32;
	
	for (int i = 0; i < NStarts; i++){
		
		set_zero(actual_ar1);
		set_zero(actual_ar2);
		
		scale = rand() % 100;
		for(int j = 0; j < N; j++){
			in_ar[j] = rand() % 1000;
		}
		
		gettimeofday(&t0, NULL);
		lab4_z2(in_ar, scale, actual_ar1, actual_ar2);
		gettimeofday(&t1, NULL);

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


