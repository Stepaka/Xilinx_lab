#include "kp_502_7.h"
#include <omp.h>

void kp_502_7(din_type A[N], din_type B[N], din_type C[N], din_type X1[N], din_type X2[N], din_type D[N])
{
    #pragma omp parallel num_threads(6)
    {
        din_type temp_B;
        din_type temp_A;
        din_type temp_D;
        #pragma omp for
        for (int i = 0; i < N; ++i) {
            temp_B = B[i];
            temp_A = A[i];	
            
			// Вычисляем дискриминант D
			D[i] = temp_B * temp_B - 4 * temp_A * C[i];
			
			// Вычисляем квадратный корень дискриминанта
            temp_D = std::sqrt(D[i]);

            // Вычисляем корни X1 и X2
            {
                X1[i] = (-temp_B - temp_D) / (2 * temp_A);
                X2[i] = (-temp_B + temp_D) / (2 * temp_A);
            }
        }
    }
}

