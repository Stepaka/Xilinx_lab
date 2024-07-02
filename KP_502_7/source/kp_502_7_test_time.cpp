#include <stdio.h>
#include <iostream>

#include "kp_502_7.h"
using namespace std;

void set_zero(din_type in_arr[N]){
	for (int i = 0; i < N; i++){
		in_arr[i] = 0;
	}
}

bool comp (double a, double b) {
  return a < b;
}

int main() {
    int pass=0;
	static din_type A[N], B[N], C[N];
	static din_type actual_X1[N];
	static din_type actual_X2[N];
	static din_type actual_D[N];
	static din_type expted_X1[N];
	static din_type expted_X2[N];
	static din_type expted_D[N];
	din_type sum;
	din_type product;
	
	struct timeval t0, t1;
	double acc_time = 0.0;
	vector<double> diff_arr;
	int NStarts = 32;
	

    for (int k = 0; k < NStarts; k++){

        set_zero(actual_X1);
        set_zero(actual_X2);
        set_zero(actual_D);
        set_zero(expted_X1);
        set_zero(expted_X2);
        set_zero(expted_D);

        for (int i = 0; i < N; ++i) {
            A[i] = std::rand() % N+1;
            B[i] = std::rand() % N+1;
            C[i] = std::rand() % N+1;

            // ¬ычисл€ем дискриминант D
            expted_D[i] = B[i] * B[i] - 4 * A[i] * C[i];
            // ѕроверка наличи€ действительных корней
            if (expted_D[i] < 0) {
            // ≈сли дискриминант отрицательный, присваиваем корн€м значение NaN
            	expted_X1[i] = std::numeric_limits<din_type>::quiet_NaN();
            	expted_X2[i] = std::numeric_limits<din_type>::quiet_NaN();
            	continue;
            } else if (expted_D[i] == 0) {
            // ≈сли дискриминант равен нулю, имеетс€ один действительный корень
            	expted_X1[i] = -B[i] / (2 * A[i]);
            	expted_X2[i] = expted_X1[i]; // ќба корн€ равны
            	continue;
            }
            // ¬ычисл€ем корни X1 и X2
            expted_X1[i] = (-B[i] - std::sqrt(expted_D[i])) / (2 * A[i]);
            expted_X2[i] = (-B[i] + std::sqrt(expted_D[i])) / (2 * A[i]);
        }
		gettimeofday(&t0, NULL);
        kp_502_7(A, B, C, actual_X1, actual_X2, actual_D);
		gettimeofday(&t1, NULL);
        for (int j = 0; j < N; ++j) {
            if (actual_D[j]!=expted_D[j] && actual_X1[j]!=expted_X1[j] && actual_X2[j]!=expted_X2[j]){
                pass=1;
                std::cout << "ERROR " << actual_D[j] << " - actual_D != "  << expted_D[j] << "- expted_D\n";
            }
        }
		double diff_time = (((double) (t1.tv_sec - t0.tv_sec)) * 1000000000.0) + ((double)(t1.tv_usec - t0.tv_usec) * 1000.0);
		acc_time += diff_time;
		double temp_avg_time = acc_time / (k + 1);
		cout << "Elapsed time: " << temp_avg_time << " nanoseconds" << endl;
		diff_arr.push_back(temp_avg_time);
	}

    if (pass == 0){
        cout << "_________Pass_________!\n" << endl;
    }
    else{
        cout << "_________Fail!_________\n" << endl;
    }

	sort(diff_arr.begin(), diff_arr.end(), comp);
	
	cout << "Min time: " << diff_arr[0] << " nanoseconds" << endl;
	cout << "Max time: " << diff_arr[NStarts - 1] << " nanoseconds" << endl;
	cout << "Median time: " << (diff_arr.at(NStarts / 2) + diff_arr.at((NStarts + 1) / 2)) / 2 << " nanoseconds" << endl;
	system("pause");
	
	return pass;

}
