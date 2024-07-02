#include <stdio.h>
#include <iostream>
#include "kp_502_7.h"
using namespace std;

void set_zero(din_type in_arr[N]){
	for (int i = 0; i < N; i++){
		in_arr[i] = 0;
	}
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
    static din_type sum;
    static din_type product;

    for (int k = 0; k < 3; k++){

        set_zero(actual_X1);
        set_zero(actual_X2);
        set_zero(actual_D);
        set_zero(expted_X1);
        set_zero(expted_X2);
        set_zero(expted_D);

        for (int i = 0; i < N; ++i) {
            A[i] = std::rand() % 10+1;
            B[i] = std::rand() % 100+1;
            C[i] = std::rand() % 10+1;

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

        kp_502_7(A, B, C, actual_X1, actual_X2, actual_D);

        for (int j = 0; j < N; ++j) {
            if (actual_D[j]!=expted_D[j] && actual_X1[j]!=expted_X1[j] && actual_X2[j]!=expted_X2[j]){
                pass=1;
                std::cout << "ERROR " << actual_D[j] << " - actual_D != "  << expted_D[j] << "- expted_D\n";
            }
        }
    }

    if (pass == 0){
        cout << "_________Pass_________!\n" << endl;
    }
    else{
        cout << "_________Fail!_________\n" << endl;
    }


	return pass;

}
