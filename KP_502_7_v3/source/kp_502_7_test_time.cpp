#include <stdio.h>
#include <iostream>
#include <sys/time.h>
#include <algorithm>
#include <vector>
#include <iomanip>
#include "kp_502_7.h"
using namespace std;

// Функция для генерации случайного числа в заданном диапазоне
din_type generate_random_number(din_type min, din_type max) {
    return min + static_cast <din_type> (rand()) / (static_cast <din_type> (RAND_MAX / (max - min)));
}

// Функция для генерации квадратных уравнений с двумя действительными корнями
void generate_quadratic_equations_with_two_real_roots(din_type A[N], din_type B[N], din_type C[N]) {
    srand(time(NULL)); // Инициализация генератора случайных чисел

    for (int i = 0; i < N; ++i) {
        A[i] = generate_random_number(1.0, 10.0); // Генерация случайного значения для коэффициента A
        C[i] = generate_random_number(1.0, 10.0); // Генерация случайного значения для коэффициента C

        // Выбор коэффициента B таким образом, чтобы дискриминант был положительным
        // Для этого можно выбрать случайное число в интервале (sqrt(4AC), 10)
        B[i] = generate_random_number(std::sqrt(4 * A[i] * C[i])+1, 200.0);

    }
}

void set_zero(din_type in_arr[N]){
	for (int i = 0; i < N; i++){
		in_arr[i] = 0;
	}
}

bool comp (double a, double b) {
  return a < b;
}


bool areEqual(din_type a, din_type b, double epsilon) {
    return (fabs(a - b) <= epsilon);
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
	static din_type temp_D;
	din_type sum;
	din_type product;
	double eps = 0.00001;
	
	struct timeval t0, t1;
	double acc_time = 0.0;
	vector<double> diff_arr;
	int NStarts = 200;
	
	// Генерация квадратных уравнений с двумя действительными корнями
    generate_quadratic_equations_with_two_real_roots(A, B, C);

    for (int k = 0; k < NStarts; k++){
        set_zero(actual_X1);
        set_zero(actual_X2);
        set_zero(actual_D);
        set_zero(expted_X1);
        set_zero(expted_X2);
        set_zero(expted_D);
		
        for (int i = 0; i < N; ++i) {
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
			temp_D = std::sqrt(expted_D[i]);
            // ¬ычисл€ем корни X1 и X2
            expted_X1[i] = (-B[i] - temp_D) / (2 * A[i]);
            expted_X2[i] = (-B[i] + temp_D) / (2 * A[i]);
        }
		gettimeofday(&t0, NULL);
        kp_502_7(A, B, C, actual_X1, actual_X2, actual_D);
		gettimeofday(&t1, NULL);
        for (int j = 0; j < N; ++j) {
            if (!areEqual(actual_D[j],expted_D[j],eps) || !areEqual(actual_X1[j],expted_X1[j],eps) || !areEqual(actual_X2[j],expted_X2[j],eps)){
                pass=1;
                std::cout << "ERROR " << actual_D[j]-expted_D[j] << " - actual_D != "  << expted_D[j] << "- expted_D\n";
				std::cout << "ERROR " << actual_X1[j]-expted_X1[j] << " - actual_X1 != "  << expted_X1[j] << "- expted_X1\n";
				std::cout << "ERROR " << actual_X2[j]-expted_X2[j] << " - actual_X2 != "  << expted_X2[j] << "- expted_X2\n";
				std::cout << "ERROR " << A[j] << " - A \n"  ;
				std::cout << "ERROR " << B[j] << " - B \n"  ;
				std::cout << "ERROR " << C[j] << " - C \n"  ;
				
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
	
	cout << std::fixed << std::setprecision(0)  <<"Min time: " << diff_arr[0] << " nanoseconds" << endl;
	cout << std::fixed << std::setprecision(0)  <<"Max time: " << diff_arr[NStarts - 1] << " nanoseconds" << endl;
	cout << std::fixed << std::setprecision(0)  << "Median time: " << (diff_arr.at(NStarts / 2) + diff_arr.at((NStarts + 1) / 2)) / 2 << " nanoseconds" << endl;
	system("pause");
	
	return pass;

}
