#include <stdio.h>
#include <iostream>
#include "kp_502_7.h"
using namespace std;

// ������� ��� ��������� ���������� ����� � �������� ���������
din_type generate_random_number(din_type min, din_type max) {
    return min + static_cast <din_type> (rand()) / (static_cast <din_type> (RAND_MAX / (max - min)));
}

// ������� ��� ��������� ���������� ��������� � ����� ��������������� �������
void generate_quadratic_equations_with_two_real_roots(din_type A[N], din_type B[N], din_type C[N]) {
    srand(time(NULL)); // ������������� ���������� ��������� �����

    for (int i = 0; i < N; ++i) {
        A[i] = generate_random_number(1.0, 10.0); // ��������� ���������� �������� ��� ������������ A
        C[i] = generate_random_number(1.0, 10.0); // ��������� ���������� �������� ��� ������������ C

        // ����� ������������ B ����� �������, ����� ������������ ��� �������������
        // ��� ����� ����� ������� ��������� ����� � ��������� (sqrt(4AC), 10)
        B[i] = generate_random_number(std::sqrt(4 * A[i] * C[i]), 500.0);

    }
}


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
	
	// ��������� ���������� ��������� � ����� ��������������� �������
    generate_quadratic_equations_with_two_real_roots(A, B, C);
	
    for (int k = 0; k < 3; k++){
        set_zero(actual_X1);
        set_zero(actual_X2);
        set_zero(actual_D);
        set_zero(expted_X1);
        set_zero(expted_X2);
        set_zero(expted_D);

        for (int i = 0; i < N; ++i) {
            // ��������� ������������ D
            expted_D[i] = B[i] * B[i] - 4 * A[i] * C[i];
            // �������� ������� �������������� ������
            if (expted_D[i] < 0) {
            // ���� ������������ �������������, ����������� ������ �������� NaN
            	expted_X1[i] = std::numeric_limits<din_type>::quiet_NaN();
            	expted_X2[i] = std::numeric_limits<din_type>::quiet_NaN();
            	continue;
            } else if (expted_D[i] == 0) {
            // ���� ������������ ����� ����, ������� ���� �������������� ������
            	expted_X1[i] = -B[i] / (2 * A[i]);
            	expted_X2[i] = expted_X1[i]; // ��� ����� �����
            	continue;
            }
            // ��������� ����� X1 � X2
            expted_X1[i] = (-B[i] - hls::sqrt(expted_D[i])) / (2 * A[i]);
            expted_X2[i] = (-B[i] + hls::sqrt(expted_D[i])) / (2 * A[i]);
        }

        kp_502_7(A, B, C, actual_X1, actual_X2, actual_D);

        for (int j = 0; j < N; ++j) {
            if (actual_D[j]!=expted_D[j] || actual_X1[j]!=expted_X1[j] || actual_X2[j]!=expted_X2[j]){
                pass=1;
                std::cout << "ERROR " << actual_D[j] << " - actual_D != "  << expted_D[j] << "- expted_D\n";
				std::cout << "ERROR " << actual_X1[j] << " - actual_X1 != "  << expted_X1[j] << "- expted_X1\n";
				std::cout << "ERROR " << actual_X2[j] << " - actual_X2 != "  << expted_X2[j] << "- expted_X2\n";
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
