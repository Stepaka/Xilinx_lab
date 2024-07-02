#include <stdio.h>
#include <iostream>
#include "kp_502_7.h"
using namespace std;

void set_zero(dout_type in_arr[N]){
	for (int i = 0; i < N; i++){
		in_arr[i] = 0;
	}
}

int main() {
    int pass=0;
	din_type A[N], B[N], C[N];
	dout_type actual_X1[N];
    dout_type actual_X2[N];
    dout_type actual_D[N];
	dout_type expted_X1[N];
    dout_type expted_X2[N];
    dout_type expted_D[N];

    for (int i = 0; i < 3; i++){

        set_zero(actual_X1);
        set_zero(actual_X2);
        set_zero(actual_D);
        set_zero(expted_X1);
        set_zero(expted_X2);
        set_zero(expted_D);

        for (int i = 0; i < N; ++i) {
            A[i] = std::rand() % N + 1;
            B[i] = std::rand() % N + 1;
            C[i] = std::rand() % N + 1;

            // Вычисляем дискриминант D
            expted_D[i] = B[i] * B[i] - 4 * A[i] * C[i];
            // Проверка наличия действительных корней
            if (expted_D[i] < 0) {
                continue;
            }
            // Вычисляем корни X1 и X2
            expted_X1[i] = (-B[i] - std::sqrt(expted_D[i])) / (2 * A[i]);
            expted_X2[i] = (-B[i] + std::sqrt(expted_D[i])) / (2 * A[i]);
        }

        kp_502_7(A, B, C, actual_X1, actual_X2, actual_D);

        // Выводим результаты
        std::cout << "\nResults:\n";
        for (int i = 0; i < N; ++i) {
            if (actual_D[i]!=expted_D[i]){
                pass=1;
                std::cout << "ERROR " << actual_D[i] << "- actual_D != "  << expted_D[i] << "- actual_D\n";
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
