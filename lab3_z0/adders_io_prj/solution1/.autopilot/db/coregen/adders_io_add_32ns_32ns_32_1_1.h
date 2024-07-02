// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __adders_io_add_32ns_32ns_32_1_1__HH__
#define __adders_io_add_32ns_32ns_32_1_1__HH__
#include "adders_io_add_32ns_32ns_32_1_1_AddSub_DSP_0.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(adders_io_add_32ns_32ns_32_1_1) {
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    adders_io_add_32ns_32ns_32_1_1_AddSub_DSP_0 adders_io_add_32ns_32ns_32_1_1_AddSub_DSP_0_U;

    SC_CTOR(adders_io_add_32ns_32ns_32_1_1):  adders_io_add_32ns_32ns_32_1_1_AddSub_DSP_0_U ("adders_io_add_32ns_32ns_32_1_1_AddSub_DSP_0_U") {
        adders_io_add_32ns_32ns_32_1_1_AddSub_DSP_0_U.a(din0);
        adders_io_add_32ns_32ns_32_1_1_AddSub_DSP_0_U.b(din1);
        adders_io_add_32ns_32ns_32_1_1_AddSub_DSP_0_U.s(dout);

    }

};

#endif //
