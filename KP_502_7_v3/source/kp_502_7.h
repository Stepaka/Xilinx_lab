#include <cmath>
#include <hls_math.h>
#include "ap_int.h"
typedef int din_type; //ap_int<256> ap_int<64> double float long long
#define N 8
//8192
//16384
//32768
//65536


void kp_502_7(din_type a[N], din_type b[N], din_type c[N], din_type X1[N], din_type X2[N], din_type D[N]);

