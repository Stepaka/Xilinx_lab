#include "kp_502_7.h"

void kp_502_7(din_type A[N], din_type B[N], din_type C[N], din_type X1[N], din_type X2[N], din_type D[N])
{
	din_type temp_B, temp_A, temp_D;
	Loop:for (int i = 0; i < N; ++i) {
        temp_B=B[i];
        temp_A=A[i];

        // Вычисляем дискриминант D
        D[i] = temp_B * temp_B - 4 * temp_A * C[i];
        temp_D=D[i];
        // Проверка наличия действительных корней
        if (temp_D < 0) {
            continue;
        }

        // Вычисляем корни X1 и X2
        X1[i] = (temp_B - std::sqrt(temp_D)) / (2 * temp_A);
        X2[i] = (temp_B + std::sqrt(temp_D)) / (2 * temp_A);
    }
}
