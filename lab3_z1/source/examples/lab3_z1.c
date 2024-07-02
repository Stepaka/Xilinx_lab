# include "lab3_z1.h"

rtrn_type lab3_z1 (din_type inA, din_type inB, pntin_type *inC, pntrout_type *res) {
	rtrn_type temp;
    temp = inA  * *inC;
    *res = temp + inB;
    return temp;
}

