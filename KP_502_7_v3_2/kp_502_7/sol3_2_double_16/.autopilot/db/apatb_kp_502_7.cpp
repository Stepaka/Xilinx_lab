#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_A_0 "../tv/cdatafile/c.kp_502_7.autotvin_A_0.dat"
#define AUTOTB_TVOUT_A_0 "../tv/cdatafile/c.kp_502_7.autotvout_A_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_1 "../tv/cdatafile/c.kp_502_7.autotvin_A_1.dat"
#define AUTOTB_TVOUT_A_1 "../tv/cdatafile/c.kp_502_7.autotvout_A_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_2 "../tv/cdatafile/c.kp_502_7.autotvin_A_2.dat"
#define AUTOTB_TVOUT_A_2 "../tv/cdatafile/c.kp_502_7.autotvout_A_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_3 "../tv/cdatafile/c.kp_502_7.autotvin_A_3.dat"
#define AUTOTB_TVOUT_A_3 "../tv/cdatafile/c.kp_502_7.autotvout_A_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_4 "../tv/cdatafile/c.kp_502_7.autotvin_A_4.dat"
#define AUTOTB_TVOUT_A_4 "../tv/cdatafile/c.kp_502_7.autotvout_A_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_5 "../tv/cdatafile/c.kp_502_7.autotvin_A_5.dat"
#define AUTOTB_TVOUT_A_5 "../tv/cdatafile/c.kp_502_7.autotvout_A_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_6 "../tv/cdatafile/c.kp_502_7.autotvin_A_6.dat"
#define AUTOTB_TVOUT_A_6 "../tv/cdatafile/c.kp_502_7.autotvout_A_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_7 "../tv/cdatafile/c.kp_502_7.autotvin_A_7.dat"
#define AUTOTB_TVOUT_A_7 "../tv/cdatafile/c.kp_502_7.autotvout_A_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_8 "../tv/cdatafile/c.kp_502_7.autotvin_A_8.dat"
#define AUTOTB_TVOUT_A_8 "../tv/cdatafile/c.kp_502_7.autotvout_A_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_9 "../tv/cdatafile/c.kp_502_7.autotvin_A_9.dat"
#define AUTOTB_TVOUT_A_9 "../tv/cdatafile/c.kp_502_7.autotvout_A_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_10 "../tv/cdatafile/c.kp_502_7.autotvin_A_10.dat"
#define AUTOTB_TVOUT_A_10 "../tv/cdatafile/c.kp_502_7.autotvout_A_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_11 "../tv/cdatafile/c.kp_502_7.autotvin_A_11.dat"
#define AUTOTB_TVOUT_A_11 "../tv/cdatafile/c.kp_502_7.autotvout_A_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_12 "../tv/cdatafile/c.kp_502_7.autotvin_A_12.dat"
#define AUTOTB_TVOUT_A_12 "../tv/cdatafile/c.kp_502_7.autotvout_A_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_13 "../tv/cdatafile/c.kp_502_7.autotvin_A_13.dat"
#define AUTOTB_TVOUT_A_13 "../tv/cdatafile/c.kp_502_7.autotvout_A_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_14 "../tv/cdatafile/c.kp_502_7.autotvin_A_14.dat"
#define AUTOTB_TVOUT_A_14 "../tv/cdatafile/c.kp_502_7.autotvout_A_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_15 "../tv/cdatafile/c.kp_502_7.autotvin_A_15.dat"
#define AUTOTB_TVOUT_A_15 "../tv/cdatafile/c.kp_502_7.autotvout_A_15.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_0 "../tv/cdatafile/c.kp_502_7.autotvin_B_0.dat"
#define AUTOTB_TVOUT_B_0 "../tv/cdatafile/c.kp_502_7.autotvout_B_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_1 "../tv/cdatafile/c.kp_502_7.autotvin_B_1.dat"
#define AUTOTB_TVOUT_B_1 "../tv/cdatafile/c.kp_502_7.autotvout_B_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_2 "../tv/cdatafile/c.kp_502_7.autotvin_B_2.dat"
#define AUTOTB_TVOUT_B_2 "../tv/cdatafile/c.kp_502_7.autotvout_B_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_3 "../tv/cdatafile/c.kp_502_7.autotvin_B_3.dat"
#define AUTOTB_TVOUT_B_3 "../tv/cdatafile/c.kp_502_7.autotvout_B_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_4 "../tv/cdatafile/c.kp_502_7.autotvin_B_4.dat"
#define AUTOTB_TVOUT_B_4 "../tv/cdatafile/c.kp_502_7.autotvout_B_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_5 "../tv/cdatafile/c.kp_502_7.autotvin_B_5.dat"
#define AUTOTB_TVOUT_B_5 "../tv/cdatafile/c.kp_502_7.autotvout_B_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_6 "../tv/cdatafile/c.kp_502_7.autotvin_B_6.dat"
#define AUTOTB_TVOUT_B_6 "../tv/cdatafile/c.kp_502_7.autotvout_B_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_7 "../tv/cdatafile/c.kp_502_7.autotvin_B_7.dat"
#define AUTOTB_TVOUT_B_7 "../tv/cdatafile/c.kp_502_7.autotvout_B_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_8 "../tv/cdatafile/c.kp_502_7.autotvin_B_8.dat"
#define AUTOTB_TVOUT_B_8 "../tv/cdatafile/c.kp_502_7.autotvout_B_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_9 "../tv/cdatafile/c.kp_502_7.autotvin_B_9.dat"
#define AUTOTB_TVOUT_B_9 "../tv/cdatafile/c.kp_502_7.autotvout_B_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_10 "../tv/cdatafile/c.kp_502_7.autotvin_B_10.dat"
#define AUTOTB_TVOUT_B_10 "../tv/cdatafile/c.kp_502_7.autotvout_B_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_11 "../tv/cdatafile/c.kp_502_7.autotvin_B_11.dat"
#define AUTOTB_TVOUT_B_11 "../tv/cdatafile/c.kp_502_7.autotvout_B_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_12 "../tv/cdatafile/c.kp_502_7.autotvin_B_12.dat"
#define AUTOTB_TVOUT_B_12 "../tv/cdatafile/c.kp_502_7.autotvout_B_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_13 "../tv/cdatafile/c.kp_502_7.autotvin_B_13.dat"
#define AUTOTB_TVOUT_B_13 "../tv/cdatafile/c.kp_502_7.autotvout_B_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_14 "../tv/cdatafile/c.kp_502_7.autotvin_B_14.dat"
#define AUTOTB_TVOUT_B_14 "../tv/cdatafile/c.kp_502_7.autotvout_B_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_15 "../tv/cdatafile/c.kp_502_7.autotvin_B_15.dat"
#define AUTOTB_TVOUT_B_15 "../tv/cdatafile/c.kp_502_7.autotvout_B_15.dat"
// wrapc file define:
#define AUTOTB_TVIN_C_0 "../tv/cdatafile/c.kp_502_7.autotvin_C_0.dat"
#define AUTOTB_TVOUT_C_0 "../tv/cdatafile/c.kp_502_7.autotvout_C_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_C_1 "../tv/cdatafile/c.kp_502_7.autotvin_C_1.dat"
#define AUTOTB_TVOUT_C_1 "../tv/cdatafile/c.kp_502_7.autotvout_C_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_C_2 "../tv/cdatafile/c.kp_502_7.autotvin_C_2.dat"
#define AUTOTB_TVOUT_C_2 "../tv/cdatafile/c.kp_502_7.autotvout_C_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_C_3 "../tv/cdatafile/c.kp_502_7.autotvin_C_3.dat"
#define AUTOTB_TVOUT_C_3 "../tv/cdatafile/c.kp_502_7.autotvout_C_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_C_4 "../tv/cdatafile/c.kp_502_7.autotvin_C_4.dat"
#define AUTOTB_TVOUT_C_4 "../tv/cdatafile/c.kp_502_7.autotvout_C_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_C_5 "../tv/cdatafile/c.kp_502_7.autotvin_C_5.dat"
#define AUTOTB_TVOUT_C_5 "../tv/cdatafile/c.kp_502_7.autotvout_C_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_C_6 "../tv/cdatafile/c.kp_502_7.autotvin_C_6.dat"
#define AUTOTB_TVOUT_C_6 "../tv/cdatafile/c.kp_502_7.autotvout_C_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_C_7 "../tv/cdatafile/c.kp_502_7.autotvin_C_7.dat"
#define AUTOTB_TVOUT_C_7 "../tv/cdatafile/c.kp_502_7.autotvout_C_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_C_8 "../tv/cdatafile/c.kp_502_7.autotvin_C_8.dat"
#define AUTOTB_TVOUT_C_8 "../tv/cdatafile/c.kp_502_7.autotvout_C_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_C_9 "../tv/cdatafile/c.kp_502_7.autotvin_C_9.dat"
#define AUTOTB_TVOUT_C_9 "../tv/cdatafile/c.kp_502_7.autotvout_C_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_C_10 "../tv/cdatafile/c.kp_502_7.autotvin_C_10.dat"
#define AUTOTB_TVOUT_C_10 "../tv/cdatafile/c.kp_502_7.autotvout_C_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_C_11 "../tv/cdatafile/c.kp_502_7.autotvin_C_11.dat"
#define AUTOTB_TVOUT_C_11 "../tv/cdatafile/c.kp_502_7.autotvout_C_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_C_12 "../tv/cdatafile/c.kp_502_7.autotvin_C_12.dat"
#define AUTOTB_TVOUT_C_12 "../tv/cdatafile/c.kp_502_7.autotvout_C_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_C_13 "../tv/cdatafile/c.kp_502_7.autotvin_C_13.dat"
#define AUTOTB_TVOUT_C_13 "../tv/cdatafile/c.kp_502_7.autotvout_C_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_C_14 "../tv/cdatafile/c.kp_502_7.autotvin_C_14.dat"
#define AUTOTB_TVOUT_C_14 "../tv/cdatafile/c.kp_502_7.autotvout_C_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_C_15 "../tv/cdatafile/c.kp_502_7.autotvin_C_15.dat"
#define AUTOTB_TVOUT_C_15 "../tv/cdatafile/c.kp_502_7.autotvout_C_15.dat"
// wrapc file define:
#define AUTOTB_TVIN_X1_0 "../tv/cdatafile/c.kp_502_7.autotvin_X1_0.dat"
#define AUTOTB_TVOUT_X1_0 "../tv/cdatafile/c.kp_502_7.autotvout_X1_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_X1_1 "../tv/cdatafile/c.kp_502_7.autotvin_X1_1.dat"
#define AUTOTB_TVOUT_X1_1 "../tv/cdatafile/c.kp_502_7.autotvout_X1_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_X1_2 "../tv/cdatafile/c.kp_502_7.autotvin_X1_2.dat"
#define AUTOTB_TVOUT_X1_2 "../tv/cdatafile/c.kp_502_7.autotvout_X1_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_X1_3 "../tv/cdatafile/c.kp_502_7.autotvin_X1_3.dat"
#define AUTOTB_TVOUT_X1_3 "../tv/cdatafile/c.kp_502_7.autotvout_X1_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_X1_4 "../tv/cdatafile/c.kp_502_7.autotvin_X1_4.dat"
#define AUTOTB_TVOUT_X1_4 "../tv/cdatafile/c.kp_502_7.autotvout_X1_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_X1_5 "../tv/cdatafile/c.kp_502_7.autotvin_X1_5.dat"
#define AUTOTB_TVOUT_X1_5 "../tv/cdatafile/c.kp_502_7.autotvout_X1_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_X1_6 "../tv/cdatafile/c.kp_502_7.autotvin_X1_6.dat"
#define AUTOTB_TVOUT_X1_6 "../tv/cdatafile/c.kp_502_7.autotvout_X1_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_X1_7 "../tv/cdatafile/c.kp_502_7.autotvin_X1_7.dat"
#define AUTOTB_TVOUT_X1_7 "../tv/cdatafile/c.kp_502_7.autotvout_X1_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_X1_8 "../tv/cdatafile/c.kp_502_7.autotvin_X1_8.dat"
#define AUTOTB_TVOUT_X1_8 "../tv/cdatafile/c.kp_502_7.autotvout_X1_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_X1_9 "../tv/cdatafile/c.kp_502_7.autotvin_X1_9.dat"
#define AUTOTB_TVOUT_X1_9 "../tv/cdatafile/c.kp_502_7.autotvout_X1_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_X1_10 "../tv/cdatafile/c.kp_502_7.autotvin_X1_10.dat"
#define AUTOTB_TVOUT_X1_10 "../tv/cdatafile/c.kp_502_7.autotvout_X1_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_X1_11 "../tv/cdatafile/c.kp_502_7.autotvin_X1_11.dat"
#define AUTOTB_TVOUT_X1_11 "../tv/cdatafile/c.kp_502_7.autotvout_X1_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_X1_12 "../tv/cdatafile/c.kp_502_7.autotvin_X1_12.dat"
#define AUTOTB_TVOUT_X1_12 "../tv/cdatafile/c.kp_502_7.autotvout_X1_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_X1_13 "../tv/cdatafile/c.kp_502_7.autotvin_X1_13.dat"
#define AUTOTB_TVOUT_X1_13 "../tv/cdatafile/c.kp_502_7.autotvout_X1_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_X1_14 "../tv/cdatafile/c.kp_502_7.autotvin_X1_14.dat"
#define AUTOTB_TVOUT_X1_14 "../tv/cdatafile/c.kp_502_7.autotvout_X1_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_X1_15 "../tv/cdatafile/c.kp_502_7.autotvin_X1_15.dat"
#define AUTOTB_TVOUT_X1_15 "../tv/cdatafile/c.kp_502_7.autotvout_X1_15.dat"
// wrapc file define:
#define AUTOTB_TVIN_X2_0 "../tv/cdatafile/c.kp_502_7.autotvin_X2_0.dat"
#define AUTOTB_TVOUT_X2_0 "../tv/cdatafile/c.kp_502_7.autotvout_X2_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_X2_1 "../tv/cdatafile/c.kp_502_7.autotvin_X2_1.dat"
#define AUTOTB_TVOUT_X2_1 "../tv/cdatafile/c.kp_502_7.autotvout_X2_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_X2_2 "../tv/cdatafile/c.kp_502_7.autotvin_X2_2.dat"
#define AUTOTB_TVOUT_X2_2 "../tv/cdatafile/c.kp_502_7.autotvout_X2_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_X2_3 "../tv/cdatafile/c.kp_502_7.autotvin_X2_3.dat"
#define AUTOTB_TVOUT_X2_3 "../tv/cdatafile/c.kp_502_7.autotvout_X2_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_X2_4 "../tv/cdatafile/c.kp_502_7.autotvin_X2_4.dat"
#define AUTOTB_TVOUT_X2_4 "../tv/cdatafile/c.kp_502_7.autotvout_X2_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_X2_5 "../tv/cdatafile/c.kp_502_7.autotvin_X2_5.dat"
#define AUTOTB_TVOUT_X2_5 "../tv/cdatafile/c.kp_502_7.autotvout_X2_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_X2_6 "../tv/cdatafile/c.kp_502_7.autotvin_X2_6.dat"
#define AUTOTB_TVOUT_X2_6 "../tv/cdatafile/c.kp_502_7.autotvout_X2_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_X2_7 "../tv/cdatafile/c.kp_502_7.autotvin_X2_7.dat"
#define AUTOTB_TVOUT_X2_7 "../tv/cdatafile/c.kp_502_7.autotvout_X2_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_X2_8 "../tv/cdatafile/c.kp_502_7.autotvin_X2_8.dat"
#define AUTOTB_TVOUT_X2_8 "../tv/cdatafile/c.kp_502_7.autotvout_X2_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_X2_9 "../tv/cdatafile/c.kp_502_7.autotvin_X2_9.dat"
#define AUTOTB_TVOUT_X2_9 "../tv/cdatafile/c.kp_502_7.autotvout_X2_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_X2_10 "../tv/cdatafile/c.kp_502_7.autotvin_X2_10.dat"
#define AUTOTB_TVOUT_X2_10 "../tv/cdatafile/c.kp_502_7.autotvout_X2_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_X2_11 "../tv/cdatafile/c.kp_502_7.autotvin_X2_11.dat"
#define AUTOTB_TVOUT_X2_11 "../tv/cdatafile/c.kp_502_7.autotvout_X2_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_X2_12 "../tv/cdatafile/c.kp_502_7.autotvin_X2_12.dat"
#define AUTOTB_TVOUT_X2_12 "../tv/cdatafile/c.kp_502_7.autotvout_X2_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_X2_13 "../tv/cdatafile/c.kp_502_7.autotvin_X2_13.dat"
#define AUTOTB_TVOUT_X2_13 "../tv/cdatafile/c.kp_502_7.autotvout_X2_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_X2_14 "../tv/cdatafile/c.kp_502_7.autotvin_X2_14.dat"
#define AUTOTB_TVOUT_X2_14 "../tv/cdatafile/c.kp_502_7.autotvout_X2_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_X2_15 "../tv/cdatafile/c.kp_502_7.autotvin_X2_15.dat"
#define AUTOTB_TVOUT_X2_15 "../tv/cdatafile/c.kp_502_7.autotvout_X2_15.dat"
// wrapc file define:
#define AUTOTB_TVIN_D_0 "../tv/cdatafile/c.kp_502_7.autotvin_D_0.dat"
#define AUTOTB_TVOUT_D_0 "../tv/cdatafile/c.kp_502_7.autotvout_D_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_D_1 "../tv/cdatafile/c.kp_502_7.autotvin_D_1.dat"
#define AUTOTB_TVOUT_D_1 "../tv/cdatafile/c.kp_502_7.autotvout_D_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_D_2 "../tv/cdatafile/c.kp_502_7.autotvin_D_2.dat"
#define AUTOTB_TVOUT_D_2 "../tv/cdatafile/c.kp_502_7.autotvout_D_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_D_3 "../tv/cdatafile/c.kp_502_7.autotvin_D_3.dat"
#define AUTOTB_TVOUT_D_3 "../tv/cdatafile/c.kp_502_7.autotvout_D_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_D_4 "../tv/cdatafile/c.kp_502_7.autotvin_D_4.dat"
#define AUTOTB_TVOUT_D_4 "../tv/cdatafile/c.kp_502_7.autotvout_D_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_D_5 "../tv/cdatafile/c.kp_502_7.autotvin_D_5.dat"
#define AUTOTB_TVOUT_D_5 "../tv/cdatafile/c.kp_502_7.autotvout_D_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_D_6 "../tv/cdatafile/c.kp_502_7.autotvin_D_6.dat"
#define AUTOTB_TVOUT_D_6 "../tv/cdatafile/c.kp_502_7.autotvout_D_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_D_7 "../tv/cdatafile/c.kp_502_7.autotvin_D_7.dat"
#define AUTOTB_TVOUT_D_7 "../tv/cdatafile/c.kp_502_7.autotvout_D_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_D_8 "../tv/cdatafile/c.kp_502_7.autotvin_D_8.dat"
#define AUTOTB_TVOUT_D_8 "../tv/cdatafile/c.kp_502_7.autotvout_D_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_D_9 "../tv/cdatafile/c.kp_502_7.autotvin_D_9.dat"
#define AUTOTB_TVOUT_D_9 "../tv/cdatafile/c.kp_502_7.autotvout_D_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_D_10 "../tv/cdatafile/c.kp_502_7.autotvin_D_10.dat"
#define AUTOTB_TVOUT_D_10 "../tv/cdatafile/c.kp_502_7.autotvout_D_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_D_11 "../tv/cdatafile/c.kp_502_7.autotvin_D_11.dat"
#define AUTOTB_TVOUT_D_11 "../tv/cdatafile/c.kp_502_7.autotvout_D_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_D_12 "../tv/cdatafile/c.kp_502_7.autotvin_D_12.dat"
#define AUTOTB_TVOUT_D_12 "../tv/cdatafile/c.kp_502_7.autotvout_D_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_D_13 "../tv/cdatafile/c.kp_502_7.autotvin_D_13.dat"
#define AUTOTB_TVOUT_D_13 "../tv/cdatafile/c.kp_502_7.autotvout_D_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_D_14 "../tv/cdatafile/c.kp_502_7.autotvin_D_14.dat"
#define AUTOTB_TVOUT_D_14 "../tv/cdatafile/c.kp_502_7.autotvout_D_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_D_15 "../tv/cdatafile/c.kp_502_7.autotvin_D_15.dat"
#define AUTOTB_TVOUT_D_15 "../tv/cdatafile/c.kp_502_7.autotvout_D_15.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_A_0 "../tv/rtldatafile/rtl.kp_502_7.autotvout_A_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_1 "../tv/rtldatafile/rtl.kp_502_7.autotvout_A_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_2 "../tv/rtldatafile/rtl.kp_502_7.autotvout_A_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_3 "../tv/rtldatafile/rtl.kp_502_7.autotvout_A_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_4 "../tv/rtldatafile/rtl.kp_502_7.autotvout_A_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_5 "../tv/rtldatafile/rtl.kp_502_7.autotvout_A_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_6 "../tv/rtldatafile/rtl.kp_502_7.autotvout_A_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_7 "../tv/rtldatafile/rtl.kp_502_7.autotvout_A_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_8 "../tv/rtldatafile/rtl.kp_502_7.autotvout_A_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_9 "../tv/rtldatafile/rtl.kp_502_7.autotvout_A_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_10 "../tv/rtldatafile/rtl.kp_502_7.autotvout_A_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_11 "../tv/rtldatafile/rtl.kp_502_7.autotvout_A_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_12 "../tv/rtldatafile/rtl.kp_502_7.autotvout_A_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_13 "../tv/rtldatafile/rtl.kp_502_7.autotvout_A_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_14 "../tv/rtldatafile/rtl.kp_502_7.autotvout_A_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_15 "../tv/rtldatafile/rtl.kp_502_7.autotvout_A_15.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_0 "../tv/rtldatafile/rtl.kp_502_7.autotvout_B_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_1 "../tv/rtldatafile/rtl.kp_502_7.autotvout_B_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_2 "../tv/rtldatafile/rtl.kp_502_7.autotvout_B_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_3 "../tv/rtldatafile/rtl.kp_502_7.autotvout_B_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_4 "../tv/rtldatafile/rtl.kp_502_7.autotvout_B_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_5 "../tv/rtldatafile/rtl.kp_502_7.autotvout_B_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_6 "../tv/rtldatafile/rtl.kp_502_7.autotvout_B_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_7 "../tv/rtldatafile/rtl.kp_502_7.autotvout_B_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_8 "../tv/rtldatafile/rtl.kp_502_7.autotvout_B_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_9 "../tv/rtldatafile/rtl.kp_502_7.autotvout_B_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_10 "../tv/rtldatafile/rtl.kp_502_7.autotvout_B_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_11 "../tv/rtldatafile/rtl.kp_502_7.autotvout_B_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_12 "../tv/rtldatafile/rtl.kp_502_7.autotvout_B_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_13 "../tv/rtldatafile/rtl.kp_502_7.autotvout_B_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_14 "../tv/rtldatafile/rtl.kp_502_7.autotvout_B_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_15 "../tv/rtldatafile/rtl.kp_502_7.autotvout_B_15.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C_0 "../tv/rtldatafile/rtl.kp_502_7.autotvout_C_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C_1 "../tv/rtldatafile/rtl.kp_502_7.autotvout_C_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C_2 "../tv/rtldatafile/rtl.kp_502_7.autotvout_C_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C_3 "../tv/rtldatafile/rtl.kp_502_7.autotvout_C_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C_4 "../tv/rtldatafile/rtl.kp_502_7.autotvout_C_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C_5 "../tv/rtldatafile/rtl.kp_502_7.autotvout_C_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C_6 "../tv/rtldatafile/rtl.kp_502_7.autotvout_C_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C_7 "../tv/rtldatafile/rtl.kp_502_7.autotvout_C_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C_8 "../tv/rtldatafile/rtl.kp_502_7.autotvout_C_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C_9 "../tv/rtldatafile/rtl.kp_502_7.autotvout_C_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C_10 "../tv/rtldatafile/rtl.kp_502_7.autotvout_C_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C_11 "../tv/rtldatafile/rtl.kp_502_7.autotvout_C_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C_12 "../tv/rtldatafile/rtl.kp_502_7.autotvout_C_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C_13 "../tv/rtldatafile/rtl.kp_502_7.autotvout_C_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C_14 "../tv/rtldatafile/rtl.kp_502_7.autotvout_C_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C_15 "../tv/rtldatafile/rtl.kp_502_7.autotvout_C_15.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X1_0 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X1_1 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X1_2 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X1_3 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X1_4 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X1_5 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X1_6 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X1_7 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X1_8 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X1_9 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X1_10 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X1_11 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X1_12 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X1_13 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X1_14 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X1_15 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_15.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X2_0 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X2_1 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X2_2 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X2_3 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X2_4 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X2_5 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X2_6 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X2_7 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X2_8 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X2_9 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X2_10 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X2_11 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X2_12 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X2_13 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X2_14 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X2_15 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_15.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D_0 "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D_1 "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D_2 "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D_3 "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D_4 "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D_5 "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D_6 "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D_7 "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D_8 "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D_9 "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D_10 "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D_11 "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D_12 "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D_13 "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D_14 "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D_15 "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_15.dat"


inline void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    vp = (p_dat) (p+dbytes);
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};
      

inline const std::string begin_str(int num)
{
  return std::string("[[transaction]] ")
         .append(std::to_string(num))
         .append("\n");
}

inline const std::string end_str()
{
  return std::string("[[/transaction]] \n");
}
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  A_0_depth = 0;
  A_1_depth = 0;
  A_2_depth = 0;
  A_3_depth = 0;
  A_4_depth = 0;
  A_5_depth = 0;
  A_6_depth = 0;
  A_7_depth = 0;
  A_8_depth = 0;
  A_9_depth = 0;
  A_10_depth = 0;
  A_11_depth = 0;
  A_12_depth = 0;
  A_13_depth = 0;
  A_14_depth = 0;
  A_15_depth = 0;
  B_0_depth = 0;
  B_1_depth = 0;
  B_2_depth = 0;
  B_3_depth = 0;
  B_4_depth = 0;
  B_5_depth = 0;
  B_6_depth = 0;
  B_7_depth = 0;
  B_8_depth = 0;
  B_9_depth = 0;
  B_10_depth = 0;
  B_11_depth = 0;
  B_12_depth = 0;
  B_13_depth = 0;
  B_14_depth = 0;
  B_15_depth = 0;
  C_0_depth = 0;
  C_1_depth = 0;
  C_2_depth = 0;
  C_3_depth = 0;
  C_4_depth = 0;
  C_5_depth = 0;
  C_6_depth = 0;
  C_7_depth = 0;
  C_8_depth = 0;
  C_9_depth = 0;
  C_10_depth = 0;
  C_11_depth = 0;
  C_12_depth = 0;
  C_13_depth = 0;
  C_14_depth = 0;
  C_15_depth = 0;
  X1_0_depth = 0;
  X1_1_depth = 0;
  X1_2_depth = 0;
  X1_3_depth = 0;
  X1_4_depth = 0;
  X1_5_depth = 0;
  X1_6_depth = 0;
  X1_7_depth = 0;
  X1_8_depth = 0;
  X1_9_depth = 0;
  X1_10_depth = 0;
  X1_11_depth = 0;
  X1_12_depth = 0;
  X1_13_depth = 0;
  X1_14_depth = 0;
  X1_15_depth = 0;
  X2_0_depth = 0;
  X2_1_depth = 0;
  X2_2_depth = 0;
  X2_3_depth = 0;
  X2_4_depth = 0;
  X2_5_depth = 0;
  X2_6_depth = 0;
  X2_7_depth = 0;
  X2_8_depth = 0;
  X2_9_depth = 0;
  X2_10_depth = 0;
  X2_11_depth = 0;
  X2_12_depth = 0;
  X2_13_depth = 0;
  X2_14_depth = 0;
  X2_15_depth = 0;
  D_0_depth = 0;
  D_1_depth = 0;
  D_2_depth = 0;
  D_3_depth = 0;
  D_4_depth = 0;
  D_5_depth = 0;
  D_6_depth = 0;
  D_7_depth = 0;
  D_8_depth = 0;
  D_9_depth = 0;
  D_10_depth = 0;
  D_11_depth = 0;
  D_12_depth = 0;
  D_13_depth = 0;
  D_14_depth = 0;
  D_15_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{A_0 " << A_0_depth << "}\n";
  total_list << "{A_1 " << A_1_depth << "}\n";
  total_list << "{A_2 " << A_2_depth << "}\n";
  total_list << "{A_3 " << A_3_depth << "}\n";
  total_list << "{A_4 " << A_4_depth << "}\n";
  total_list << "{A_5 " << A_5_depth << "}\n";
  total_list << "{A_6 " << A_6_depth << "}\n";
  total_list << "{A_7 " << A_7_depth << "}\n";
  total_list << "{A_8 " << A_8_depth << "}\n";
  total_list << "{A_9 " << A_9_depth << "}\n";
  total_list << "{A_10 " << A_10_depth << "}\n";
  total_list << "{A_11 " << A_11_depth << "}\n";
  total_list << "{A_12 " << A_12_depth << "}\n";
  total_list << "{A_13 " << A_13_depth << "}\n";
  total_list << "{A_14 " << A_14_depth << "}\n";
  total_list << "{A_15 " << A_15_depth << "}\n";
  total_list << "{B_0 " << B_0_depth << "}\n";
  total_list << "{B_1 " << B_1_depth << "}\n";
  total_list << "{B_2 " << B_2_depth << "}\n";
  total_list << "{B_3 " << B_3_depth << "}\n";
  total_list << "{B_4 " << B_4_depth << "}\n";
  total_list << "{B_5 " << B_5_depth << "}\n";
  total_list << "{B_6 " << B_6_depth << "}\n";
  total_list << "{B_7 " << B_7_depth << "}\n";
  total_list << "{B_8 " << B_8_depth << "}\n";
  total_list << "{B_9 " << B_9_depth << "}\n";
  total_list << "{B_10 " << B_10_depth << "}\n";
  total_list << "{B_11 " << B_11_depth << "}\n";
  total_list << "{B_12 " << B_12_depth << "}\n";
  total_list << "{B_13 " << B_13_depth << "}\n";
  total_list << "{B_14 " << B_14_depth << "}\n";
  total_list << "{B_15 " << B_15_depth << "}\n";
  total_list << "{C_0 " << C_0_depth << "}\n";
  total_list << "{C_1 " << C_1_depth << "}\n";
  total_list << "{C_2 " << C_2_depth << "}\n";
  total_list << "{C_3 " << C_3_depth << "}\n";
  total_list << "{C_4 " << C_4_depth << "}\n";
  total_list << "{C_5 " << C_5_depth << "}\n";
  total_list << "{C_6 " << C_6_depth << "}\n";
  total_list << "{C_7 " << C_7_depth << "}\n";
  total_list << "{C_8 " << C_8_depth << "}\n";
  total_list << "{C_9 " << C_9_depth << "}\n";
  total_list << "{C_10 " << C_10_depth << "}\n";
  total_list << "{C_11 " << C_11_depth << "}\n";
  total_list << "{C_12 " << C_12_depth << "}\n";
  total_list << "{C_13 " << C_13_depth << "}\n";
  total_list << "{C_14 " << C_14_depth << "}\n";
  total_list << "{C_15 " << C_15_depth << "}\n";
  total_list << "{X1_0 " << X1_0_depth << "}\n";
  total_list << "{X1_1 " << X1_1_depth << "}\n";
  total_list << "{X1_2 " << X1_2_depth << "}\n";
  total_list << "{X1_3 " << X1_3_depth << "}\n";
  total_list << "{X1_4 " << X1_4_depth << "}\n";
  total_list << "{X1_5 " << X1_5_depth << "}\n";
  total_list << "{X1_6 " << X1_6_depth << "}\n";
  total_list << "{X1_7 " << X1_7_depth << "}\n";
  total_list << "{X1_8 " << X1_8_depth << "}\n";
  total_list << "{X1_9 " << X1_9_depth << "}\n";
  total_list << "{X1_10 " << X1_10_depth << "}\n";
  total_list << "{X1_11 " << X1_11_depth << "}\n";
  total_list << "{X1_12 " << X1_12_depth << "}\n";
  total_list << "{X1_13 " << X1_13_depth << "}\n";
  total_list << "{X1_14 " << X1_14_depth << "}\n";
  total_list << "{X1_15 " << X1_15_depth << "}\n";
  total_list << "{X2_0 " << X2_0_depth << "}\n";
  total_list << "{X2_1 " << X2_1_depth << "}\n";
  total_list << "{X2_2 " << X2_2_depth << "}\n";
  total_list << "{X2_3 " << X2_3_depth << "}\n";
  total_list << "{X2_4 " << X2_4_depth << "}\n";
  total_list << "{X2_5 " << X2_5_depth << "}\n";
  total_list << "{X2_6 " << X2_6_depth << "}\n";
  total_list << "{X2_7 " << X2_7_depth << "}\n";
  total_list << "{X2_8 " << X2_8_depth << "}\n";
  total_list << "{X2_9 " << X2_9_depth << "}\n";
  total_list << "{X2_10 " << X2_10_depth << "}\n";
  total_list << "{X2_11 " << X2_11_depth << "}\n";
  total_list << "{X2_12 " << X2_12_depth << "}\n";
  total_list << "{X2_13 " << X2_13_depth << "}\n";
  total_list << "{X2_14 " << X2_14_depth << "}\n";
  total_list << "{X2_15 " << X2_15_depth << "}\n";
  total_list << "{D_0 " << D_0_depth << "}\n";
  total_list << "{D_1 " << D_1_depth << "}\n";
  total_list << "{D_2 " << D_2_depth << "}\n";
  total_list << "{D_3 " << D_3_depth << "}\n";
  total_list << "{D_4 " << D_4_depth << "}\n";
  total_list << "{D_5 " << D_5_depth << "}\n";
  total_list << "{D_6 " << D_6_depth << "}\n";
  total_list << "{D_7 " << D_7_depth << "}\n";
  total_list << "{D_8 " << D_8_depth << "}\n";
  total_list << "{D_9 " << D_9_depth << "}\n";
  total_list << "{D_10 " << D_10_depth << "}\n";
  total_list << "{D_11 " << D_11_depth << "}\n";
  total_list << "{D_12 " << D_12_depth << "}\n";
  total_list << "{D_13 " << D_13_depth << "}\n";
  total_list << "{D_14 " << D_14_depth << "}\n";
  total_list << "{D_15 " << D_15_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int A_0_depth;
    int A_1_depth;
    int A_2_depth;
    int A_3_depth;
    int A_4_depth;
    int A_5_depth;
    int A_6_depth;
    int A_7_depth;
    int A_8_depth;
    int A_9_depth;
    int A_10_depth;
    int A_11_depth;
    int A_12_depth;
    int A_13_depth;
    int A_14_depth;
    int A_15_depth;
    int B_0_depth;
    int B_1_depth;
    int B_2_depth;
    int B_3_depth;
    int B_4_depth;
    int B_5_depth;
    int B_6_depth;
    int B_7_depth;
    int B_8_depth;
    int B_9_depth;
    int B_10_depth;
    int B_11_depth;
    int B_12_depth;
    int B_13_depth;
    int B_14_depth;
    int B_15_depth;
    int C_0_depth;
    int C_1_depth;
    int C_2_depth;
    int C_3_depth;
    int C_4_depth;
    int C_5_depth;
    int C_6_depth;
    int C_7_depth;
    int C_8_depth;
    int C_9_depth;
    int C_10_depth;
    int C_11_depth;
    int C_12_depth;
    int C_13_depth;
    int C_14_depth;
    int C_15_depth;
    int X1_0_depth;
    int X1_1_depth;
    int X1_2_depth;
    int X1_3_depth;
    int X1_4_depth;
    int X1_5_depth;
    int X1_6_depth;
    int X1_7_depth;
    int X1_8_depth;
    int X1_9_depth;
    int X1_10_depth;
    int X1_11_depth;
    int X1_12_depth;
    int X1_13_depth;
    int X1_14_depth;
    int X1_15_depth;
    int X2_0_depth;
    int X2_1_depth;
    int X2_2_depth;
    int X2_3_depth;
    int X2_4_depth;
    int X2_5_depth;
    int X2_6_depth;
    int X2_7_depth;
    int X2_8_depth;
    int X2_9_depth;
    int X2_10_depth;
    int X2_11_depth;
    int X2_12_depth;
    int X2_13_depth;
    int X2_14_depth;
    int X2_15_depth;
    int D_0_depth;
    int D_1_depth;
    int D_2_depth;
    int D_3_depth;
    int D_4_depth;
    int D_5_depth;
    int D_6_depth;
    int D_7_depth;
    int D_8_depth;
    int D_9_depth;
    int D_10_depth;
    int D_11_depth;
    int D_12_depth;
    int D_13_depth;
    int D_14_depth;
    int D_15_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static bool RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool err = false;
  size_t x_found;

  // search and replace 'X' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('X', 0)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  // search and replace 'x' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('x', 2)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  return err;}
extern "C" void kp_502_7_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_kp_502_7_hw(volatile void * __xlx_apatb_param_A_0, volatile void * __xlx_apatb_param_A_1, volatile void * __xlx_apatb_param_A_2, volatile void * __xlx_apatb_param_A_3, volatile void * __xlx_apatb_param_A_4, volatile void * __xlx_apatb_param_A_5, volatile void * __xlx_apatb_param_A_6, volatile void * __xlx_apatb_param_A_7, volatile void * __xlx_apatb_param_A_8, volatile void * __xlx_apatb_param_A_9, volatile void * __xlx_apatb_param_A_10, volatile void * __xlx_apatb_param_A_11, volatile void * __xlx_apatb_param_A_12, volatile void * __xlx_apatb_param_A_13, volatile void * __xlx_apatb_param_A_14, volatile void * __xlx_apatb_param_A_15, volatile void * __xlx_apatb_param_B_0, volatile void * __xlx_apatb_param_B_1, volatile void * __xlx_apatb_param_B_2, volatile void * __xlx_apatb_param_B_3, volatile void * __xlx_apatb_param_B_4, volatile void * __xlx_apatb_param_B_5, volatile void * __xlx_apatb_param_B_6, volatile void * __xlx_apatb_param_B_7, volatile void * __xlx_apatb_param_B_8, volatile void * __xlx_apatb_param_B_9, volatile void * __xlx_apatb_param_B_10, volatile void * __xlx_apatb_param_B_11, volatile void * __xlx_apatb_param_B_12, volatile void * __xlx_apatb_param_B_13, volatile void * __xlx_apatb_param_B_14, volatile void * __xlx_apatb_param_B_15, volatile void * __xlx_apatb_param_C_0, volatile void * __xlx_apatb_param_C_1, volatile void * __xlx_apatb_param_C_2, volatile void * __xlx_apatb_param_C_3, volatile void * __xlx_apatb_param_C_4, volatile void * __xlx_apatb_param_C_5, volatile void * __xlx_apatb_param_C_6, volatile void * __xlx_apatb_param_C_7, volatile void * __xlx_apatb_param_C_8, volatile void * __xlx_apatb_param_C_9, volatile void * __xlx_apatb_param_C_10, volatile void * __xlx_apatb_param_C_11, volatile void * __xlx_apatb_param_C_12, volatile void * __xlx_apatb_param_C_13, volatile void * __xlx_apatb_param_C_14, volatile void * __xlx_apatb_param_C_15, volatile void * __xlx_apatb_param_X1_0, volatile void * __xlx_apatb_param_X1_1, volatile void * __xlx_apatb_param_X1_2, volatile void * __xlx_apatb_param_X1_3, volatile void * __xlx_apatb_param_X1_4, volatile void * __xlx_apatb_param_X1_5, volatile void * __xlx_apatb_param_X1_6, volatile void * __xlx_apatb_param_X1_7, volatile void * __xlx_apatb_param_X1_8, volatile void * __xlx_apatb_param_X1_9, volatile void * __xlx_apatb_param_X1_10, volatile void * __xlx_apatb_param_X1_11, volatile void * __xlx_apatb_param_X1_12, volatile void * __xlx_apatb_param_X1_13, volatile void * __xlx_apatb_param_X1_14, volatile void * __xlx_apatb_param_X1_15, volatile void * __xlx_apatb_param_X2_0, volatile void * __xlx_apatb_param_X2_1, volatile void * __xlx_apatb_param_X2_2, volatile void * __xlx_apatb_param_X2_3, volatile void * __xlx_apatb_param_X2_4, volatile void * __xlx_apatb_param_X2_5, volatile void * __xlx_apatb_param_X2_6, volatile void * __xlx_apatb_param_X2_7, volatile void * __xlx_apatb_param_X2_8, volatile void * __xlx_apatb_param_X2_9, volatile void * __xlx_apatb_param_X2_10, volatile void * __xlx_apatb_param_X2_11, volatile void * __xlx_apatb_param_X2_12, volatile void * __xlx_apatb_param_X2_13, volatile void * __xlx_apatb_param_X2_14, volatile void * __xlx_apatb_param_X2_15, volatile void * __xlx_apatb_param_D_0, volatile void * __xlx_apatb_param_D_1, volatile void * __xlx_apatb_param_D_2, volatile void * __xlx_apatb_param_D_3, volatile void * __xlx_apatb_param_D_4, volatile void * __xlx_apatb_param_D_5, volatile void * __xlx_apatb_param_D_6, volatile void * __xlx_apatb_param_D_7, volatile void * __xlx_apatb_param_D_8, volatile void * __xlx_apatb_param_D_9, volatile void * __xlx_apatb_param_D_10, volatile void * __xlx_apatb_param_D_11, volatile void * __xlx_apatb_param_D_12, volatile void * __xlx_apatb_param_D_13, volatile void * __xlx_apatb_param_D_14, volatile void * __xlx_apatb_param_D_15) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X1_0, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X1_0, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X1_0);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X1_0_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X1_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X1_0_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X1_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X1_0)[j*8+0] = X1_0_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X1_0)[j*8+1] = X1_0_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X1_0)[j*8+2] = X1_0_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X1_0)[j*8+3] = X1_0_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X1_0)[j*8+4] = X1_0_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X1_0)[j*8+5] = X1_0_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X1_0)[j*8+6] = X1_0_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X1_0)[j*8+7] = X1_0_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X1_1, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X1_1, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X1_1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X1_1_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X1_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X1_1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X1_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X1_1)[j*8+0] = X1_1_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X1_1)[j*8+1] = X1_1_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X1_1)[j*8+2] = X1_1_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X1_1)[j*8+3] = X1_1_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X1_1)[j*8+4] = X1_1_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X1_1)[j*8+5] = X1_1_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X1_1)[j*8+6] = X1_1_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X1_1)[j*8+7] = X1_1_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X1_2, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X1_2, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X1_2);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X1_2_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X1_2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X1_2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X1_2" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X1_2)[j*8+0] = X1_2_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X1_2)[j*8+1] = X1_2_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X1_2)[j*8+2] = X1_2_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X1_2)[j*8+3] = X1_2_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X1_2)[j*8+4] = X1_2_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X1_2)[j*8+5] = X1_2_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X1_2)[j*8+6] = X1_2_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X1_2)[j*8+7] = X1_2_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X1_3, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X1_3, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X1_3);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X1_3_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X1_3");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X1_3_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X1_3" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X1_3)[j*8+0] = X1_3_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X1_3)[j*8+1] = X1_3_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X1_3)[j*8+2] = X1_3_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X1_3)[j*8+3] = X1_3_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X1_3)[j*8+4] = X1_3_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X1_3)[j*8+5] = X1_3_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X1_3)[j*8+6] = X1_3_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X1_3)[j*8+7] = X1_3_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X1_4, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X1_4, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X1_4);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X1_4_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X1_4");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X1_4_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X1_4" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X1_4)[j*8+0] = X1_4_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X1_4)[j*8+1] = X1_4_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X1_4)[j*8+2] = X1_4_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X1_4)[j*8+3] = X1_4_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X1_4)[j*8+4] = X1_4_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X1_4)[j*8+5] = X1_4_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X1_4)[j*8+6] = X1_4_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X1_4)[j*8+7] = X1_4_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X1_5, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X1_5, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X1_5);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X1_5_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X1_5");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X1_5_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X1_5" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X1_5)[j*8+0] = X1_5_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X1_5)[j*8+1] = X1_5_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X1_5)[j*8+2] = X1_5_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X1_5)[j*8+3] = X1_5_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X1_5)[j*8+4] = X1_5_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X1_5)[j*8+5] = X1_5_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X1_5)[j*8+6] = X1_5_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X1_5)[j*8+7] = X1_5_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X1_6, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X1_6, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X1_6);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X1_6_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X1_6");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X1_6_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X1_6" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X1_6)[j*8+0] = X1_6_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X1_6)[j*8+1] = X1_6_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X1_6)[j*8+2] = X1_6_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X1_6)[j*8+3] = X1_6_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X1_6)[j*8+4] = X1_6_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X1_6)[j*8+5] = X1_6_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X1_6)[j*8+6] = X1_6_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X1_6)[j*8+7] = X1_6_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X1_7, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X1_7, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X1_7);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X1_7_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X1_7");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X1_7_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X1_7" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X1_7)[j*8+0] = X1_7_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X1_7)[j*8+1] = X1_7_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X1_7)[j*8+2] = X1_7_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X1_7)[j*8+3] = X1_7_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X1_7)[j*8+4] = X1_7_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X1_7)[j*8+5] = X1_7_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X1_7)[j*8+6] = X1_7_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X1_7)[j*8+7] = X1_7_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X1_8, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X1_8, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X1_8);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X1_8_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X1_8");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X1_8_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X1_8" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X1_8)[j*8+0] = X1_8_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X1_8)[j*8+1] = X1_8_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X1_8)[j*8+2] = X1_8_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X1_8)[j*8+3] = X1_8_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X1_8)[j*8+4] = X1_8_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X1_8)[j*8+5] = X1_8_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X1_8)[j*8+6] = X1_8_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X1_8)[j*8+7] = X1_8_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X1_9, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X1_9, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X1_9);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X1_9_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X1_9");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X1_9_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X1_9" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X1_9)[j*8+0] = X1_9_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X1_9)[j*8+1] = X1_9_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X1_9)[j*8+2] = X1_9_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X1_9)[j*8+3] = X1_9_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X1_9)[j*8+4] = X1_9_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X1_9)[j*8+5] = X1_9_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X1_9)[j*8+6] = X1_9_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X1_9)[j*8+7] = X1_9_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X1_10, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X1_10, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X1_10);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X1_10_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X1_10");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X1_10_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X1_10" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X1_10)[j*8+0] = X1_10_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X1_10)[j*8+1] = X1_10_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X1_10)[j*8+2] = X1_10_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X1_10)[j*8+3] = X1_10_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X1_10)[j*8+4] = X1_10_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X1_10)[j*8+5] = X1_10_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X1_10)[j*8+6] = X1_10_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X1_10)[j*8+7] = X1_10_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X1_11, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X1_11, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X1_11);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X1_11_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X1_11");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X1_11_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X1_11" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X1_11)[j*8+0] = X1_11_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X1_11)[j*8+1] = X1_11_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X1_11)[j*8+2] = X1_11_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X1_11)[j*8+3] = X1_11_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X1_11)[j*8+4] = X1_11_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X1_11)[j*8+5] = X1_11_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X1_11)[j*8+6] = X1_11_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X1_11)[j*8+7] = X1_11_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X1_12, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X1_12, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X1_12);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X1_12_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X1_12");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X1_12_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X1_12" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X1_12)[j*8+0] = X1_12_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X1_12)[j*8+1] = X1_12_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X1_12)[j*8+2] = X1_12_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X1_12)[j*8+3] = X1_12_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X1_12)[j*8+4] = X1_12_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X1_12)[j*8+5] = X1_12_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X1_12)[j*8+6] = X1_12_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X1_12)[j*8+7] = X1_12_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X1_13, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X1_13, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X1_13);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X1_13_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X1_13");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X1_13_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X1_13" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X1_13)[j*8+0] = X1_13_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X1_13)[j*8+1] = X1_13_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X1_13)[j*8+2] = X1_13_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X1_13)[j*8+3] = X1_13_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X1_13)[j*8+4] = X1_13_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X1_13)[j*8+5] = X1_13_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X1_13)[j*8+6] = X1_13_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X1_13)[j*8+7] = X1_13_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X1_14, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X1_14, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X1_14);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X1_14_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X1_14");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X1_14_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X1_14" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X1_14)[j*8+0] = X1_14_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X1_14)[j*8+1] = X1_14_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X1_14)[j*8+2] = X1_14_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X1_14)[j*8+3] = X1_14_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X1_14)[j*8+4] = X1_14_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X1_14)[j*8+5] = X1_14_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X1_14)[j*8+6] = X1_14_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X1_14)[j*8+7] = X1_14_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X1_15, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X1_15, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X1_15);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X1_15_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X1_15");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X1_15_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X1_15" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X1_15)[j*8+0] = X1_15_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X1_15)[j*8+1] = X1_15_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X1_15)[j*8+2] = X1_15_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X1_15)[j*8+3] = X1_15_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X1_15)[j*8+4] = X1_15_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X1_15)[j*8+5] = X1_15_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X1_15)[j*8+6] = X1_15_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X1_15)[j*8+7] = X1_15_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X2_0, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X2_0, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X2_0);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X2_0_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X2_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X2_0_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X2_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X2_0)[j*8+0] = X2_0_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X2_0)[j*8+1] = X2_0_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X2_0)[j*8+2] = X2_0_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X2_0)[j*8+3] = X2_0_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X2_0)[j*8+4] = X2_0_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X2_0)[j*8+5] = X2_0_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X2_0)[j*8+6] = X2_0_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X2_0)[j*8+7] = X2_0_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X2_1, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X2_1, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X2_1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X2_1_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X2_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X2_1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X2_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X2_1)[j*8+0] = X2_1_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X2_1)[j*8+1] = X2_1_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X2_1)[j*8+2] = X2_1_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X2_1)[j*8+3] = X2_1_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X2_1)[j*8+4] = X2_1_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X2_1)[j*8+5] = X2_1_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X2_1)[j*8+6] = X2_1_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X2_1)[j*8+7] = X2_1_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X2_2, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X2_2, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X2_2);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X2_2_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X2_2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X2_2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X2_2" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X2_2)[j*8+0] = X2_2_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X2_2)[j*8+1] = X2_2_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X2_2)[j*8+2] = X2_2_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X2_2)[j*8+3] = X2_2_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X2_2)[j*8+4] = X2_2_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X2_2)[j*8+5] = X2_2_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X2_2)[j*8+6] = X2_2_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X2_2)[j*8+7] = X2_2_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X2_3, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X2_3, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X2_3);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X2_3_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X2_3");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X2_3_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X2_3" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X2_3)[j*8+0] = X2_3_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X2_3)[j*8+1] = X2_3_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X2_3)[j*8+2] = X2_3_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X2_3)[j*8+3] = X2_3_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X2_3)[j*8+4] = X2_3_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X2_3)[j*8+5] = X2_3_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X2_3)[j*8+6] = X2_3_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X2_3)[j*8+7] = X2_3_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X2_4, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X2_4, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X2_4);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X2_4_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X2_4");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X2_4_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X2_4" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X2_4)[j*8+0] = X2_4_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X2_4)[j*8+1] = X2_4_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X2_4)[j*8+2] = X2_4_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X2_4)[j*8+3] = X2_4_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X2_4)[j*8+4] = X2_4_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X2_4)[j*8+5] = X2_4_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X2_4)[j*8+6] = X2_4_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X2_4)[j*8+7] = X2_4_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X2_5, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X2_5, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X2_5);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X2_5_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X2_5");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X2_5_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X2_5" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X2_5)[j*8+0] = X2_5_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X2_5)[j*8+1] = X2_5_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X2_5)[j*8+2] = X2_5_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X2_5)[j*8+3] = X2_5_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X2_5)[j*8+4] = X2_5_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X2_5)[j*8+5] = X2_5_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X2_5)[j*8+6] = X2_5_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X2_5)[j*8+7] = X2_5_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X2_6, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X2_6, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X2_6);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X2_6_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X2_6");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X2_6_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X2_6" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X2_6)[j*8+0] = X2_6_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X2_6)[j*8+1] = X2_6_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X2_6)[j*8+2] = X2_6_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X2_6)[j*8+3] = X2_6_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X2_6)[j*8+4] = X2_6_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X2_6)[j*8+5] = X2_6_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X2_6)[j*8+6] = X2_6_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X2_6)[j*8+7] = X2_6_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X2_7, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X2_7, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X2_7);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X2_7_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X2_7");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X2_7_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X2_7" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X2_7)[j*8+0] = X2_7_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X2_7)[j*8+1] = X2_7_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X2_7)[j*8+2] = X2_7_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X2_7)[j*8+3] = X2_7_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X2_7)[j*8+4] = X2_7_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X2_7)[j*8+5] = X2_7_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X2_7)[j*8+6] = X2_7_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X2_7)[j*8+7] = X2_7_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X2_8, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X2_8, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X2_8);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X2_8_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X2_8");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X2_8_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X2_8" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X2_8)[j*8+0] = X2_8_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X2_8)[j*8+1] = X2_8_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X2_8)[j*8+2] = X2_8_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X2_8)[j*8+3] = X2_8_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X2_8)[j*8+4] = X2_8_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X2_8)[j*8+5] = X2_8_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X2_8)[j*8+6] = X2_8_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X2_8)[j*8+7] = X2_8_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X2_9, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X2_9, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X2_9);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X2_9_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X2_9");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X2_9_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X2_9" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X2_9)[j*8+0] = X2_9_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X2_9)[j*8+1] = X2_9_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X2_9)[j*8+2] = X2_9_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X2_9)[j*8+3] = X2_9_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X2_9)[j*8+4] = X2_9_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X2_9)[j*8+5] = X2_9_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X2_9)[j*8+6] = X2_9_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X2_9)[j*8+7] = X2_9_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X2_10, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X2_10, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X2_10);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X2_10_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X2_10");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X2_10_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X2_10" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X2_10)[j*8+0] = X2_10_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X2_10)[j*8+1] = X2_10_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X2_10)[j*8+2] = X2_10_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X2_10)[j*8+3] = X2_10_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X2_10)[j*8+4] = X2_10_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X2_10)[j*8+5] = X2_10_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X2_10)[j*8+6] = X2_10_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X2_10)[j*8+7] = X2_10_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X2_11, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X2_11, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X2_11);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X2_11_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X2_11");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X2_11_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X2_11" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X2_11)[j*8+0] = X2_11_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X2_11)[j*8+1] = X2_11_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X2_11)[j*8+2] = X2_11_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X2_11)[j*8+3] = X2_11_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X2_11)[j*8+4] = X2_11_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X2_11)[j*8+5] = X2_11_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X2_11)[j*8+6] = X2_11_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X2_11)[j*8+7] = X2_11_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X2_12, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X2_12, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X2_12);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X2_12_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X2_12");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X2_12_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X2_12" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X2_12)[j*8+0] = X2_12_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X2_12)[j*8+1] = X2_12_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X2_12)[j*8+2] = X2_12_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X2_12)[j*8+3] = X2_12_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X2_12)[j*8+4] = X2_12_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X2_12)[j*8+5] = X2_12_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X2_12)[j*8+6] = X2_12_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X2_12)[j*8+7] = X2_12_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X2_13, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X2_13, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X2_13);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X2_13_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X2_13");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X2_13_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X2_13" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X2_13)[j*8+0] = X2_13_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X2_13)[j*8+1] = X2_13_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X2_13)[j*8+2] = X2_13_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X2_13)[j*8+3] = X2_13_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X2_13)[j*8+4] = X2_13_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X2_13)[j*8+5] = X2_13_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X2_13)[j*8+6] = X2_13_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X2_13)[j*8+7] = X2_13_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X2_14, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X2_14, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X2_14);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X2_14_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X2_14");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X2_14_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X2_14" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X2_14)[j*8+0] = X2_14_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X2_14)[j*8+1] = X2_14_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X2_14)[j*8+2] = X2_14_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X2_14)[j*8+3] = X2_14_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X2_14)[j*8+4] = X2_14_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X2_14)[j*8+5] = X2_14_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X2_14)[j*8+6] = X2_14_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X2_14)[j*8+7] = X2_14_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_X2_15, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X2_15, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X2_15);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > X2_15_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X2_15");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X2_15_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X2_15" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X2_15)[j*8+0] = X2_15_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X2_15)[j*8+1] = X2_15_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X2_15)[j*8+2] = X2_15_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X2_15)[j*8+3] = X2_15_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X2_15)[j*8+4] = X2_15_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X2_15)[j*8+5] = X2_15_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X2_15)[j*8+6] = X2_15_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X2_15)[j*8+7] = X2_15_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_D_0, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_D_0, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_D_0);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > D_0_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "D_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              D_0_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "D_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_D_0)[j*8+0] = D_0_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_D_0)[j*8+1] = D_0_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_D_0)[j*8+2] = D_0_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_D_0)[j*8+3] = D_0_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_D_0)[j*8+4] = D_0_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_D_0)[j*8+5] = D_0_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_D_0)[j*8+6] = D_0_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_D_0)[j*8+7] = D_0_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_D_1, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_D_1, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_D_1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > D_1_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "D_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              D_1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "D_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_D_1)[j*8+0] = D_1_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_D_1)[j*8+1] = D_1_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_D_1)[j*8+2] = D_1_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_D_1)[j*8+3] = D_1_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_D_1)[j*8+4] = D_1_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_D_1)[j*8+5] = D_1_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_D_1)[j*8+6] = D_1_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_D_1)[j*8+7] = D_1_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_D_2, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_D_2, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_D_2);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > D_2_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "D_2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              D_2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "D_2" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_D_2)[j*8+0] = D_2_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_D_2)[j*8+1] = D_2_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_D_2)[j*8+2] = D_2_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_D_2)[j*8+3] = D_2_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_D_2)[j*8+4] = D_2_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_D_2)[j*8+5] = D_2_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_D_2)[j*8+6] = D_2_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_D_2)[j*8+7] = D_2_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_D_3, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_D_3, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_D_3);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > D_3_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "D_3");
  
            // push token into output port buffer
            if (AESL_token != "") {
              D_3_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "D_3" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_D_3)[j*8+0] = D_3_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_D_3)[j*8+1] = D_3_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_D_3)[j*8+2] = D_3_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_D_3)[j*8+3] = D_3_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_D_3)[j*8+4] = D_3_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_D_3)[j*8+5] = D_3_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_D_3)[j*8+6] = D_3_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_D_3)[j*8+7] = D_3_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_D_4, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_D_4, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_D_4);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > D_4_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "D_4");
  
            // push token into output port buffer
            if (AESL_token != "") {
              D_4_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "D_4" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_D_4)[j*8+0] = D_4_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_D_4)[j*8+1] = D_4_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_D_4)[j*8+2] = D_4_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_D_4)[j*8+3] = D_4_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_D_4)[j*8+4] = D_4_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_D_4)[j*8+5] = D_4_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_D_4)[j*8+6] = D_4_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_D_4)[j*8+7] = D_4_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_D_5, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_D_5, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_D_5);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > D_5_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "D_5");
  
            // push token into output port buffer
            if (AESL_token != "") {
              D_5_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "D_5" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_D_5)[j*8+0] = D_5_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_D_5)[j*8+1] = D_5_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_D_5)[j*8+2] = D_5_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_D_5)[j*8+3] = D_5_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_D_5)[j*8+4] = D_5_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_D_5)[j*8+5] = D_5_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_D_5)[j*8+6] = D_5_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_D_5)[j*8+7] = D_5_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_D_6, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_D_6, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_D_6);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > D_6_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "D_6");
  
            // push token into output port buffer
            if (AESL_token != "") {
              D_6_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "D_6" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_D_6)[j*8+0] = D_6_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_D_6)[j*8+1] = D_6_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_D_6)[j*8+2] = D_6_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_D_6)[j*8+3] = D_6_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_D_6)[j*8+4] = D_6_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_D_6)[j*8+5] = D_6_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_D_6)[j*8+6] = D_6_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_D_6)[j*8+7] = D_6_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_D_7, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_D_7, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_D_7);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > D_7_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "D_7");
  
            // push token into output port buffer
            if (AESL_token != "") {
              D_7_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "D_7" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_D_7)[j*8+0] = D_7_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_D_7)[j*8+1] = D_7_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_D_7)[j*8+2] = D_7_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_D_7)[j*8+3] = D_7_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_D_7)[j*8+4] = D_7_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_D_7)[j*8+5] = D_7_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_D_7)[j*8+6] = D_7_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_D_7)[j*8+7] = D_7_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_D_8, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_D_8, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_D_8);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > D_8_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "D_8");
  
            // push token into output port buffer
            if (AESL_token != "") {
              D_8_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "D_8" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_D_8)[j*8+0] = D_8_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_D_8)[j*8+1] = D_8_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_D_8)[j*8+2] = D_8_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_D_8)[j*8+3] = D_8_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_D_8)[j*8+4] = D_8_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_D_8)[j*8+5] = D_8_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_D_8)[j*8+6] = D_8_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_D_8)[j*8+7] = D_8_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_D_9, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_D_9, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_D_9);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > D_9_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "D_9");
  
            // push token into output port buffer
            if (AESL_token != "") {
              D_9_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "D_9" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_D_9)[j*8+0] = D_9_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_D_9)[j*8+1] = D_9_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_D_9)[j*8+2] = D_9_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_D_9)[j*8+3] = D_9_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_D_9)[j*8+4] = D_9_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_D_9)[j*8+5] = D_9_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_D_9)[j*8+6] = D_9_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_D_9)[j*8+7] = D_9_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_D_10, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_D_10, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_D_10);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > D_10_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "D_10");
  
            // push token into output port buffer
            if (AESL_token != "") {
              D_10_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "D_10" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_D_10)[j*8+0] = D_10_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_D_10)[j*8+1] = D_10_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_D_10)[j*8+2] = D_10_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_D_10)[j*8+3] = D_10_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_D_10)[j*8+4] = D_10_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_D_10)[j*8+5] = D_10_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_D_10)[j*8+6] = D_10_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_D_10)[j*8+7] = D_10_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_D_11, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_D_11, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_D_11);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > D_11_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "D_11");
  
            // push token into output port buffer
            if (AESL_token != "") {
              D_11_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "D_11" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_D_11)[j*8+0] = D_11_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_D_11)[j*8+1] = D_11_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_D_11)[j*8+2] = D_11_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_D_11)[j*8+3] = D_11_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_D_11)[j*8+4] = D_11_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_D_11)[j*8+5] = D_11_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_D_11)[j*8+6] = D_11_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_D_11)[j*8+7] = D_11_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_D_12, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_D_12, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_D_12);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > D_12_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "D_12");
  
            // push token into output port buffer
            if (AESL_token != "") {
              D_12_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "D_12" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_D_12)[j*8+0] = D_12_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_D_12)[j*8+1] = D_12_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_D_12)[j*8+2] = D_12_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_D_12)[j*8+3] = D_12_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_D_12)[j*8+4] = D_12_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_D_12)[j*8+5] = D_12_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_D_12)[j*8+6] = D_12_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_D_12)[j*8+7] = D_12_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_D_13, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_D_13, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_D_13);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > D_13_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "D_13");
  
            // push token into output port buffer
            if (AESL_token != "") {
              D_13_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "D_13" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_D_13)[j*8+0] = D_13_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_D_13)[j*8+1] = D_13_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_D_13)[j*8+2] = D_13_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_D_13)[j*8+3] = D_13_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_D_13)[j*8+4] = D_13_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_D_13)[j*8+5] = D_13_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_D_13)[j*8+6] = D_13_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_D_13)[j*8+7] = D_13_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_D_14, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_D_14, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_D_14);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > D_14_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "D_14");
  
            // push token into output port buffer
            if (AESL_token != "") {
              D_14_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "D_14" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_D_14)[j*8+0] = D_14_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_D_14)[j*8+1] = D_14_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_D_14)[j*8+2] = D_14_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_D_14)[j*8+3] = D_14_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_D_14)[j*8+4] = D_14_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_D_14)[j*8+5] = D_14_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_D_14)[j*8+6] = D_14_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_D_14)[j*8+7] = D_14_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_D_15, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_D_15, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_D_15);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > D_15_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "D_15");
  
            // push token into output port buffer
            if (AESL_token != "") {
              D_15_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "D_15" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_D_15)[j*8+0] = D_15_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_D_15)[j*8+1] = D_15_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_D_15)[j*8+2] = D_15_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_D_15)[j*8+3] = D_15_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_D_15)[j*8+4] = D_15_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_D_15)[j*8+5] = D_15_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_D_15)[j*8+6] = D_15_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_D_15)[j*8+7] = D_15_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_A_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_A_0, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_A_0 = 0*8;
  if (__xlx_apatb_param_A_0) {
tr.import<8>((char*)__xlx_apatb_param_A_0, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_A_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.A_0_depth);
#else
// print A_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_A_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_A_0 = 0*8;
  if (__xlx_apatb_param_A_0) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_A_0)[j];
aesl_fh.write(AUTOTB_TVIN_A_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.A_0_depth);
aesl_fh.write(AUTOTB_TVIN_A_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_A_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_A_1, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_A_1 = 0*8;
  if (__xlx_apatb_param_A_1) {
tr.import<8>((char*)__xlx_apatb_param_A_1, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_A_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.A_1_depth);
#else
// print A_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_A_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_A_1 = 0*8;
  if (__xlx_apatb_param_A_1) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_A_1)[j];
aesl_fh.write(AUTOTB_TVIN_A_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.A_1_depth);
aesl_fh.write(AUTOTB_TVIN_A_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_A_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_A_2, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_A_2 = 0*8;
  if (__xlx_apatb_param_A_2) {
tr.import<8>((char*)__xlx_apatb_param_A_2, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_A_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.A_2_depth);
#else
// print A_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_A_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_A_2 = 0*8;
  if (__xlx_apatb_param_A_2) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_A_2)[j];
aesl_fh.write(AUTOTB_TVIN_A_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.A_2_depth);
aesl_fh.write(AUTOTB_TVIN_A_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_A_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_A_3, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_A_3 = 0*8;
  if (__xlx_apatb_param_A_3) {
tr.import<8>((char*)__xlx_apatb_param_A_3, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_A_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.A_3_depth);
#else
// print A_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_A_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_A_3 = 0*8;
  if (__xlx_apatb_param_A_3) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_A_3)[j];
aesl_fh.write(AUTOTB_TVIN_A_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.A_3_depth);
aesl_fh.write(AUTOTB_TVIN_A_3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_A_4 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_A_4, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_A_4 = 0*8;
  if (__xlx_apatb_param_A_4) {
tr.import<8>((char*)__xlx_apatb_param_A_4, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_A_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.A_4_depth);
#else
// print A_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_A_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_A_4 = 0*8;
  if (__xlx_apatb_param_A_4) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_A_4)[j];
aesl_fh.write(AUTOTB_TVIN_A_4, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.A_4_depth);
aesl_fh.write(AUTOTB_TVIN_A_4, end_str());
}

#endif
unsigned __xlx_offset_byte_param_A_5 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_A_5, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_A_5 = 0*8;
  if (__xlx_apatb_param_A_5) {
tr.import<8>((char*)__xlx_apatb_param_A_5, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_A_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.A_5_depth);
#else
// print A_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_A_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_A_5 = 0*8;
  if (__xlx_apatb_param_A_5) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_A_5)[j];
aesl_fh.write(AUTOTB_TVIN_A_5, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.A_5_depth);
aesl_fh.write(AUTOTB_TVIN_A_5, end_str());
}

#endif
unsigned __xlx_offset_byte_param_A_6 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_A_6, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_A_6 = 0*8;
  if (__xlx_apatb_param_A_6) {
tr.import<8>((char*)__xlx_apatb_param_A_6, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_A_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.A_6_depth);
#else
// print A_6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_A_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_A_6 = 0*8;
  if (__xlx_apatb_param_A_6) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_A_6)[j];
aesl_fh.write(AUTOTB_TVIN_A_6, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.A_6_depth);
aesl_fh.write(AUTOTB_TVIN_A_6, end_str());
}

#endif
unsigned __xlx_offset_byte_param_A_7 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_A_7, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_A_7 = 0*8;
  if (__xlx_apatb_param_A_7) {
tr.import<8>((char*)__xlx_apatb_param_A_7, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_A_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.A_7_depth);
#else
// print A_7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_A_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_A_7 = 0*8;
  if (__xlx_apatb_param_A_7) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_A_7)[j];
aesl_fh.write(AUTOTB_TVIN_A_7, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.A_7_depth);
aesl_fh.write(AUTOTB_TVIN_A_7, end_str());
}

#endif
unsigned __xlx_offset_byte_param_A_8 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_A_8, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_A_8 = 0*8;
  if (__xlx_apatb_param_A_8) {
tr.import<8>((char*)__xlx_apatb_param_A_8, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_A_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.A_8_depth);
#else
// print A_8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_A_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_A_8 = 0*8;
  if (__xlx_apatb_param_A_8) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_A_8)[j];
aesl_fh.write(AUTOTB_TVIN_A_8, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.A_8_depth);
aesl_fh.write(AUTOTB_TVIN_A_8, end_str());
}

#endif
unsigned __xlx_offset_byte_param_A_9 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_A_9, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_A_9 = 0*8;
  if (__xlx_apatb_param_A_9) {
tr.import<8>((char*)__xlx_apatb_param_A_9, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_A_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.A_9_depth);
#else
// print A_9 Transactions
{
aesl_fh.write(AUTOTB_TVIN_A_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_A_9 = 0*8;
  if (__xlx_apatb_param_A_9) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_A_9)[j];
aesl_fh.write(AUTOTB_TVIN_A_9, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.A_9_depth);
aesl_fh.write(AUTOTB_TVIN_A_9, end_str());
}

#endif
unsigned __xlx_offset_byte_param_A_10 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_A_10, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_A_10 = 0*8;
  if (__xlx_apatb_param_A_10) {
tr.import<8>((char*)__xlx_apatb_param_A_10, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_A_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.A_10_depth);
#else
// print A_10 Transactions
{
aesl_fh.write(AUTOTB_TVIN_A_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_A_10 = 0*8;
  if (__xlx_apatb_param_A_10) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_A_10)[j];
aesl_fh.write(AUTOTB_TVIN_A_10, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.A_10_depth);
aesl_fh.write(AUTOTB_TVIN_A_10, end_str());
}

#endif
unsigned __xlx_offset_byte_param_A_11 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_A_11, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_A_11 = 0*8;
  if (__xlx_apatb_param_A_11) {
tr.import<8>((char*)__xlx_apatb_param_A_11, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_A_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.A_11_depth);
#else
// print A_11 Transactions
{
aesl_fh.write(AUTOTB_TVIN_A_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_A_11 = 0*8;
  if (__xlx_apatb_param_A_11) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_A_11)[j];
aesl_fh.write(AUTOTB_TVIN_A_11, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.A_11_depth);
aesl_fh.write(AUTOTB_TVIN_A_11, end_str());
}

#endif
unsigned __xlx_offset_byte_param_A_12 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_A_12, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_A_12 = 0*8;
  if (__xlx_apatb_param_A_12) {
tr.import<8>((char*)__xlx_apatb_param_A_12, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_A_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.A_12_depth);
#else
// print A_12 Transactions
{
aesl_fh.write(AUTOTB_TVIN_A_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_A_12 = 0*8;
  if (__xlx_apatb_param_A_12) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_A_12)[j];
aesl_fh.write(AUTOTB_TVIN_A_12, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.A_12_depth);
aesl_fh.write(AUTOTB_TVIN_A_12, end_str());
}

#endif
unsigned __xlx_offset_byte_param_A_13 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_A_13, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_A_13 = 0*8;
  if (__xlx_apatb_param_A_13) {
tr.import<8>((char*)__xlx_apatb_param_A_13, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_A_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.A_13_depth);
#else
// print A_13 Transactions
{
aesl_fh.write(AUTOTB_TVIN_A_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_A_13 = 0*8;
  if (__xlx_apatb_param_A_13) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_A_13)[j];
aesl_fh.write(AUTOTB_TVIN_A_13, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.A_13_depth);
aesl_fh.write(AUTOTB_TVIN_A_13, end_str());
}

#endif
unsigned __xlx_offset_byte_param_A_14 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_A_14, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_A_14 = 0*8;
  if (__xlx_apatb_param_A_14) {
tr.import<8>((char*)__xlx_apatb_param_A_14, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_A_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.A_14_depth);
#else
// print A_14 Transactions
{
aesl_fh.write(AUTOTB_TVIN_A_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_A_14 = 0*8;
  if (__xlx_apatb_param_A_14) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_A_14)[j];
aesl_fh.write(AUTOTB_TVIN_A_14, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.A_14_depth);
aesl_fh.write(AUTOTB_TVIN_A_14, end_str());
}

#endif
unsigned __xlx_offset_byte_param_A_15 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_A_15, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_A_15 = 0*8;
  if (__xlx_apatb_param_A_15) {
tr.import<8>((char*)__xlx_apatb_param_A_15, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_A_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.A_15_depth);
#else
// print A_15 Transactions
{
aesl_fh.write(AUTOTB_TVIN_A_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_A_15 = 0*8;
  if (__xlx_apatb_param_A_15) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_A_15)[j];
aesl_fh.write(AUTOTB_TVIN_A_15, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.A_15_depth);
aesl_fh.write(AUTOTB_TVIN_A_15, end_str());
}

#endif
unsigned __xlx_offset_byte_param_B_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_B_0, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_B_0 = 0*8;
  if (__xlx_apatb_param_B_0) {
tr.import<8>((char*)__xlx_apatb_param_B_0, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_B_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.B_0_depth);
#else
// print B_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_B_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_B_0 = 0*8;
  if (__xlx_apatb_param_B_0) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_B_0)[j];
aesl_fh.write(AUTOTB_TVIN_B_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.B_0_depth);
aesl_fh.write(AUTOTB_TVIN_B_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_B_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_B_1, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_B_1 = 0*8;
  if (__xlx_apatb_param_B_1) {
tr.import<8>((char*)__xlx_apatb_param_B_1, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_B_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.B_1_depth);
#else
// print B_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_B_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_B_1 = 0*8;
  if (__xlx_apatb_param_B_1) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_B_1)[j];
aesl_fh.write(AUTOTB_TVIN_B_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.B_1_depth);
aesl_fh.write(AUTOTB_TVIN_B_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_B_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_B_2, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_B_2 = 0*8;
  if (__xlx_apatb_param_B_2) {
tr.import<8>((char*)__xlx_apatb_param_B_2, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_B_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.B_2_depth);
#else
// print B_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_B_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_B_2 = 0*8;
  if (__xlx_apatb_param_B_2) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_B_2)[j];
aesl_fh.write(AUTOTB_TVIN_B_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.B_2_depth);
aesl_fh.write(AUTOTB_TVIN_B_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_B_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_B_3, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_B_3 = 0*8;
  if (__xlx_apatb_param_B_3) {
tr.import<8>((char*)__xlx_apatb_param_B_3, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_B_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.B_3_depth);
#else
// print B_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_B_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_B_3 = 0*8;
  if (__xlx_apatb_param_B_3) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_B_3)[j];
aesl_fh.write(AUTOTB_TVIN_B_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.B_3_depth);
aesl_fh.write(AUTOTB_TVIN_B_3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_B_4 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_B_4, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_B_4 = 0*8;
  if (__xlx_apatb_param_B_4) {
tr.import<8>((char*)__xlx_apatb_param_B_4, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_B_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.B_4_depth);
#else
// print B_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_B_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_B_4 = 0*8;
  if (__xlx_apatb_param_B_4) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_B_4)[j];
aesl_fh.write(AUTOTB_TVIN_B_4, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.B_4_depth);
aesl_fh.write(AUTOTB_TVIN_B_4, end_str());
}

#endif
unsigned __xlx_offset_byte_param_B_5 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_B_5, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_B_5 = 0*8;
  if (__xlx_apatb_param_B_5) {
tr.import<8>((char*)__xlx_apatb_param_B_5, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_B_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.B_5_depth);
#else
// print B_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_B_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_B_5 = 0*8;
  if (__xlx_apatb_param_B_5) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_B_5)[j];
aesl_fh.write(AUTOTB_TVIN_B_5, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.B_5_depth);
aesl_fh.write(AUTOTB_TVIN_B_5, end_str());
}

#endif
unsigned __xlx_offset_byte_param_B_6 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_B_6, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_B_6 = 0*8;
  if (__xlx_apatb_param_B_6) {
tr.import<8>((char*)__xlx_apatb_param_B_6, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_B_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.B_6_depth);
#else
// print B_6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_B_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_B_6 = 0*8;
  if (__xlx_apatb_param_B_6) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_B_6)[j];
aesl_fh.write(AUTOTB_TVIN_B_6, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.B_6_depth);
aesl_fh.write(AUTOTB_TVIN_B_6, end_str());
}

#endif
unsigned __xlx_offset_byte_param_B_7 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_B_7, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_B_7 = 0*8;
  if (__xlx_apatb_param_B_7) {
tr.import<8>((char*)__xlx_apatb_param_B_7, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_B_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.B_7_depth);
#else
// print B_7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_B_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_B_7 = 0*8;
  if (__xlx_apatb_param_B_7) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_B_7)[j];
aesl_fh.write(AUTOTB_TVIN_B_7, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.B_7_depth);
aesl_fh.write(AUTOTB_TVIN_B_7, end_str());
}

#endif
unsigned __xlx_offset_byte_param_B_8 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_B_8, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_B_8 = 0*8;
  if (__xlx_apatb_param_B_8) {
tr.import<8>((char*)__xlx_apatb_param_B_8, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_B_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.B_8_depth);
#else
// print B_8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_B_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_B_8 = 0*8;
  if (__xlx_apatb_param_B_8) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_B_8)[j];
aesl_fh.write(AUTOTB_TVIN_B_8, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.B_8_depth);
aesl_fh.write(AUTOTB_TVIN_B_8, end_str());
}

#endif
unsigned __xlx_offset_byte_param_B_9 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_B_9, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_B_9 = 0*8;
  if (__xlx_apatb_param_B_9) {
tr.import<8>((char*)__xlx_apatb_param_B_9, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_B_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.B_9_depth);
#else
// print B_9 Transactions
{
aesl_fh.write(AUTOTB_TVIN_B_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_B_9 = 0*8;
  if (__xlx_apatb_param_B_9) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_B_9)[j];
aesl_fh.write(AUTOTB_TVIN_B_9, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.B_9_depth);
aesl_fh.write(AUTOTB_TVIN_B_9, end_str());
}

#endif
unsigned __xlx_offset_byte_param_B_10 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_B_10, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_B_10 = 0*8;
  if (__xlx_apatb_param_B_10) {
tr.import<8>((char*)__xlx_apatb_param_B_10, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_B_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.B_10_depth);
#else
// print B_10 Transactions
{
aesl_fh.write(AUTOTB_TVIN_B_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_B_10 = 0*8;
  if (__xlx_apatb_param_B_10) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_B_10)[j];
aesl_fh.write(AUTOTB_TVIN_B_10, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.B_10_depth);
aesl_fh.write(AUTOTB_TVIN_B_10, end_str());
}

#endif
unsigned __xlx_offset_byte_param_B_11 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_B_11, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_B_11 = 0*8;
  if (__xlx_apatb_param_B_11) {
tr.import<8>((char*)__xlx_apatb_param_B_11, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_B_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.B_11_depth);
#else
// print B_11 Transactions
{
aesl_fh.write(AUTOTB_TVIN_B_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_B_11 = 0*8;
  if (__xlx_apatb_param_B_11) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_B_11)[j];
aesl_fh.write(AUTOTB_TVIN_B_11, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.B_11_depth);
aesl_fh.write(AUTOTB_TVIN_B_11, end_str());
}

#endif
unsigned __xlx_offset_byte_param_B_12 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_B_12, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_B_12 = 0*8;
  if (__xlx_apatb_param_B_12) {
tr.import<8>((char*)__xlx_apatb_param_B_12, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_B_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.B_12_depth);
#else
// print B_12 Transactions
{
aesl_fh.write(AUTOTB_TVIN_B_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_B_12 = 0*8;
  if (__xlx_apatb_param_B_12) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_B_12)[j];
aesl_fh.write(AUTOTB_TVIN_B_12, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.B_12_depth);
aesl_fh.write(AUTOTB_TVIN_B_12, end_str());
}

#endif
unsigned __xlx_offset_byte_param_B_13 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_B_13, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_B_13 = 0*8;
  if (__xlx_apatb_param_B_13) {
tr.import<8>((char*)__xlx_apatb_param_B_13, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_B_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.B_13_depth);
#else
// print B_13 Transactions
{
aesl_fh.write(AUTOTB_TVIN_B_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_B_13 = 0*8;
  if (__xlx_apatb_param_B_13) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_B_13)[j];
aesl_fh.write(AUTOTB_TVIN_B_13, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.B_13_depth);
aesl_fh.write(AUTOTB_TVIN_B_13, end_str());
}

#endif
unsigned __xlx_offset_byte_param_B_14 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_B_14, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_B_14 = 0*8;
  if (__xlx_apatb_param_B_14) {
tr.import<8>((char*)__xlx_apatb_param_B_14, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_B_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.B_14_depth);
#else
// print B_14 Transactions
{
aesl_fh.write(AUTOTB_TVIN_B_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_B_14 = 0*8;
  if (__xlx_apatb_param_B_14) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_B_14)[j];
aesl_fh.write(AUTOTB_TVIN_B_14, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.B_14_depth);
aesl_fh.write(AUTOTB_TVIN_B_14, end_str());
}

#endif
unsigned __xlx_offset_byte_param_B_15 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_B_15, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_B_15 = 0*8;
  if (__xlx_apatb_param_B_15) {
tr.import<8>((char*)__xlx_apatb_param_B_15, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_B_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.B_15_depth);
#else
// print B_15 Transactions
{
aesl_fh.write(AUTOTB_TVIN_B_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_B_15 = 0*8;
  if (__xlx_apatb_param_B_15) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_B_15)[j];
aesl_fh.write(AUTOTB_TVIN_B_15, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.B_15_depth);
aesl_fh.write(AUTOTB_TVIN_B_15, end_str());
}

#endif
unsigned __xlx_offset_byte_param_C_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_C_0, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_C_0 = 0*8;
  if (__xlx_apatb_param_C_0) {
tr.import<8>((char*)__xlx_apatb_param_C_0, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_C_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.C_0_depth);
#else
// print C_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_C_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_C_0 = 0*8;
  if (__xlx_apatb_param_C_0) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_C_0)[j];
aesl_fh.write(AUTOTB_TVIN_C_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.C_0_depth);
aesl_fh.write(AUTOTB_TVIN_C_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_C_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_C_1, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_C_1 = 0*8;
  if (__xlx_apatb_param_C_1) {
tr.import<8>((char*)__xlx_apatb_param_C_1, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_C_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.C_1_depth);
#else
// print C_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_C_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_C_1 = 0*8;
  if (__xlx_apatb_param_C_1) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_C_1)[j];
aesl_fh.write(AUTOTB_TVIN_C_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.C_1_depth);
aesl_fh.write(AUTOTB_TVIN_C_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_C_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_C_2, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_C_2 = 0*8;
  if (__xlx_apatb_param_C_2) {
tr.import<8>((char*)__xlx_apatb_param_C_2, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_C_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.C_2_depth);
#else
// print C_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_C_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_C_2 = 0*8;
  if (__xlx_apatb_param_C_2) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_C_2)[j];
aesl_fh.write(AUTOTB_TVIN_C_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.C_2_depth);
aesl_fh.write(AUTOTB_TVIN_C_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_C_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_C_3, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_C_3 = 0*8;
  if (__xlx_apatb_param_C_3) {
tr.import<8>((char*)__xlx_apatb_param_C_3, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_C_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.C_3_depth);
#else
// print C_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_C_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_C_3 = 0*8;
  if (__xlx_apatb_param_C_3) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_C_3)[j];
aesl_fh.write(AUTOTB_TVIN_C_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.C_3_depth);
aesl_fh.write(AUTOTB_TVIN_C_3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_C_4 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_C_4, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_C_4 = 0*8;
  if (__xlx_apatb_param_C_4) {
tr.import<8>((char*)__xlx_apatb_param_C_4, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_C_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.C_4_depth);
#else
// print C_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_C_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_C_4 = 0*8;
  if (__xlx_apatb_param_C_4) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_C_4)[j];
aesl_fh.write(AUTOTB_TVIN_C_4, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.C_4_depth);
aesl_fh.write(AUTOTB_TVIN_C_4, end_str());
}

#endif
unsigned __xlx_offset_byte_param_C_5 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_C_5, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_C_5 = 0*8;
  if (__xlx_apatb_param_C_5) {
tr.import<8>((char*)__xlx_apatb_param_C_5, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_C_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.C_5_depth);
#else
// print C_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_C_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_C_5 = 0*8;
  if (__xlx_apatb_param_C_5) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_C_5)[j];
aesl_fh.write(AUTOTB_TVIN_C_5, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.C_5_depth);
aesl_fh.write(AUTOTB_TVIN_C_5, end_str());
}

#endif
unsigned __xlx_offset_byte_param_C_6 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_C_6, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_C_6 = 0*8;
  if (__xlx_apatb_param_C_6) {
tr.import<8>((char*)__xlx_apatb_param_C_6, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_C_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.C_6_depth);
#else
// print C_6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_C_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_C_6 = 0*8;
  if (__xlx_apatb_param_C_6) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_C_6)[j];
aesl_fh.write(AUTOTB_TVIN_C_6, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.C_6_depth);
aesl_fh.write(AUTOTB_TVIN_C_6, end_str());
}

#endif
unsigned __xlx_offset_byte_param_C_7 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_C_7, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_C_7 = 0*8;
  if (__xlx_apatb_param_C_7) {
tr.import<8>((char*)__xlx_apatb_param_C_7, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_C_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.C_7_depth);
#else
// print C_7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_C_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_C_7 = 0*8;
  if (__xlx_apatb_param_C_7) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_C_7)[j];
aesl_fh.write(AUTOTB_TVIN_C_7, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.C_7_depth);
aesl_fh.write(AUTOTB_TVIN_C_7, end_str());
}

#endif
unsigned __xlx_offset_byte_param_C_8 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_C_8, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_C_8 = 0*8;
  if (__xlx_apatb_param_C_8) {
tr.import<8>((char*)__xlx_apatb_param_C_8, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_C_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.C_8_depth);
#else
// print C_8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_C_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_C_8 = 0*8;
  if (__xlx_apatb_param_C_8) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_C_8)[j];
aesl_fh.write(AUTOTB_TVIN_C_8, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.C_8_depth);
aesl_fh.write(AUTOTB_TVIN_C_8, end_str());
}

#endif
unsigned __xlx_offset_byte_param_C_9 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_C_9, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_C_9 = 0*8;
  if (__xlx_apatb_param_C_9) {
tr.import<8>((char*)__xlx_apatb_param_C_9, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_C_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.C_9_depth);
#else
// print C_9 Transactions
{
aesl_fh.write(AUTOTB_TVIN_C_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_C_9 = 0*8;
  if (__xlx_apatb_param_C_9) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_C_9)[j];
aesl_fh.write(AUTOTB_TVIN_C_9, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.C_9_depth);
aesl_fh.write(AUTOTB_TVIN_C_9, end_str());
}

#endif
unsigned __xlx_offset_byte_param_C_10 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_C_10, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_C_10 = 0*8;
  if (__xlx_apatb_param_C_10) {
tr.import<8>((char*)__xlx_apatb_param_C_10, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_C_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.C_10_depth);
#else
// print C_10 Transactions
{
aesl_fh.write(AUTOTB_TVIN_C_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_C_10 = 0*8;
  if (__xlx_apatb_param_C_10) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_C_10)[j];
aesl_fh.write(AUTOTB_TVIN_C_10, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.C_10_depth);
aesl_fh.write(AUTOTB_TVIN_C_10, end_str());
}

#endif
unsigned __xlx_offset_byte_param_C_11 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_C_11, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_C_11 = 0*8;
  if (__xlx_apatb_param_C_11) {
tr.import<8>((char*)__xlx_apatb_param_C_11, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_C_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.C_11_depth);
#else
// print C_11 Transactions
{
aesl_fh.write(AUTOTB_TVIN_C_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_C_11 = 0*8;
  if (__xlx_apatb_param_C_11) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_C_11)[j];
aesl_fh.write(AUTOTB_TVIN_C_11, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.C_11_depth);
aesl_fh.write(AUTOTB_TVIN_C_11, end_str());
}

#endif
unsigned __xlx_offset_byte_param_C_12 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_C_12, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_C_12 = 0*8;
  if (__xlx_apatb_param_C_12) {
tr.import<8>((char*)__xlx_apatb_param_C_12, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_C_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.C_12_depth);
#else
// print C_12 Transactions
{
aesl_fh.write(AUTOTB_TVIN_C_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_C_12 = 0*8;
  if (__xlx_apatb_param_C_12) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_C_12)[j];
aesl_fh.write(AUTOTB_TVIN_C_12, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.C_12_depth);
aesl_fh.write(AUTOTB_TVIN_C_12, end_str());
}

#endif
unsigned __xlx_offset_byte_param_C_13 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_C_13, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_C_13 = 0*8;
  if (__xlx_apatb_param_C_13) {
tr.import<8>((char*)__xlx_apatb_param_C_13, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_C_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.C_13_depth);
#else
// print C_13 Transactions
{
aesl_fh.write(AUTOTB_TVIN_C_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_C_13 = 0*8;
  if (__xlx_apatb_param_C_13) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_C_13)[j];
aesl_fh.write(AUTOTB_TVIN_C_13, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.C_13_depth);
aesl_fh.write(AUTOTB_TVIN_C_13, end_str());
}

#endif
unsigned __xlx_offset_byte_param_C_14 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_C_14, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_C_14 = 0*8;
  if (__xlx_apatb_param_C_14) {
tr.import<8>((char*)__xlx_apatb_param_C_14, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_C_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.C_14_depth);
#else
// print C_14 Transactions
{
aesl_fh.write(AUTOTB_TVIN_C_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_C_14 = 0*8;
  if (__xlx_apatb_param_C_14) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_C_14)[j];
aesl_fh.write(AUTOTB_TVIN_C_14, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.C_14_depth);
aesl_fh.write(AUTOTB_TVIN_C_14, end_str());
}

#endif
unsigned __xlx_offset_byte_param_C_15 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_C_15, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_C_15 = 0*8;
  if (__xlx_apatb_param_C_15) {
tr.import<8>((char*)__xlx_apatb_param_C_15, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_C_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.C_15_depth);
#else
// print C_15 Transactions
{
aesl_fh.write(AUTOTB_TVIN_C_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_C_15 = 0*8;
  if (__xlx_apatb_param_C_15) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_C_15)[j];
aesl_fh.write(AUTOTB_TVIN_C_15, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.C_15_depth);
aesl_fh.write(AUTOTB_TVIN_C_15, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X1_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X1_0, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_0 = 0*8;
  if (__xlx_apatb_param_X1_0) {
tr.import<8>((char*)__xlx_apatb_param_X1_0, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X1_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_0_depth);
#else
// print X1_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X1_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_0 = 0*8;
  if (__xlx_apatb_param_X1_0) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_0)[j];
aesl_fh.write(AUTOTB_TVIN_X1_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_0_depth);
aesl_fh.write(AUTOTB_TVIN_X1_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X1_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X1_1, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_1 = 0*8;
  if (__xlx_apatb_param_X1_1) {
tr.import<8>((char*)__xlx_apatb_param_X1_1, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X1_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_1_depth);
#else
// print X1_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X1_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_1 = 0*8;
  if (__xlx_apatb_param_X1_1) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_1)[j];
aesl_fh.write(AUTOTB_TVIN_X1_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_1_depth);
aesl_fh.write(AUTOTB_TVIN_X1_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X1_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X1_2, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_2 = 0*8;
  if (__xlx_apatb_param_X1_2) {
tr.import<8>((char*)__xlx_apatb_param_X1_2, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X1_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_2_depth);
#else
// print X1_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X1_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_2 = 0*8;
  if (__xlx_apatb_param_X1_2) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_2)[j];
aesl_fh.write(AUTOTB_TVIN_X1_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_2_depth);
aesl_fh.write(AUTOTB_TVIN_X1_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X1_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X1_3, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_3 = 0*8;
  if (__xlx_apatb_param_X1_3) {
tr.import<8>((char*)__xlx_apatb_param_X1_3, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X1_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_3_depth);
#else
// print X1_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X1_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_3 = 0*8;
  if (__xlx_apatb_param_X1_3) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_3)[j];
aesl_fh.write(AUTOTB_TVIN_X1_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_3_depth);
aesl_fh.write(AUTOTB_TVIN_X1_3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X1_4 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X1_4, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_4 = 0*8;
  if (__xlx_apatb_param_X1_4) {
tr.import<8>((char*)__xlx_apatb_param_X1_4, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X1_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_4_depth);
#else
// print X1_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X1_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_4 = 0*8;
  if (__xlx_apatb_param_X1_4) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_4)[j];
aesl_fh.write(AUTOTB_TVIN_X1_4, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_4_depth);
aesl_fh.write(AUTOTB_TVIN_X1_4, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X1_5 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X1_5, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_5 = 0*8;
  if (__xlx_apatb_param_X1_5) {
tr.import<8>((char*)__xlx_apatb_param_X1_5, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X1_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_5_depth);
#else
// print X1_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X1_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_5 = 0*8;
  if (__xlx_apatb_param_X1_5) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_5)[j];
aesl_fh.write(AUTOTB_TVIN_X1_5, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_5_depth);
aesl_fh.write(AUTOTB_TVIN_X1_5, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X1_6 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X1_6, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_6 = 0*8;
  if (__xlx_apatb_param_X1_6) {
tr.import<8>((char*)__xlx_apatb_param_X1_6, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X1_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_6_depth);
#else
// print X1_6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X1_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_6 = 0*8;
  if (__xlx_apatb_param_X1_6) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_6)[j];
aesl_fh.write(AUTOTB_TVIN_X1_6, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_6_depth);
aesl_fh.write(AUTOTB_TVIN_X1_6, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X1_7 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X1_7, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_7 = 0*8;
  if (__xlx_apatb_param_X1_7) {
tr.import<8>((char*)__xlx_apatb_param_X1_7, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X1_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_7_depth);
#else
// print X1_7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X1_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_7 = 0*8;
  if (__xlx_apatb_param_X1_7) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_7)[j];
aesl_fh.write(AUTOTB_TVIN_X1_7, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_7_depth);
aesl_fh.write(AUTOTB_TVIN_X1_7, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X1_8 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X1_8, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_8 = 0*8;
  if (__xlx_apatb_param_X1_8) {
tr.import<8>((char*)__xlx_apatb_param_X1_8, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X1_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_8_depth);
#else
// print X1_8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X1_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_8 = 0*8;
  if (__xlx_apatb_param_X1_8) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_8)[j];
aesl_fh.write(AUTOTB_TVIN_X1_8, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_8_depth);
aesl_fh.write(AUTOTB_TVIN_X1_8, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X1_9 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X1_9, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_9 = 0*8;
  if (__xlx_apatb_param_X1_9) {
tr.import<8>((char*)__xlx_apatb_param_X1_9, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X1_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_9_depth);
#else
// print X1_9 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X1_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_9 = 0*8;
  if (__xlx_apatb_param_X1_9) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_9)[j];
aesl_fh.write(AUTOTB_TVIN_X1_9, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_9_depth);
aesl_fh.write(AUTOTB_TVIN_X1_9, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X1_10 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X1_10, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_10 = 0*8;
  if (__xlx_apatb_param_X1_10) {
tr.import<8>((char*)__xlx_apatb_param_X1_10, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X1_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_10_depth);
#else
// print X1_10 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X1_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_10 = 0*8;
  if (__xlx_apatb_param_X1_10) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_10)[j];
aesl_fh.write(AUTOTB_TVIN_X1_10, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_10_depth);
aesl_fh.write(AUTOTB_TVIN_X1_10, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X1_11 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X1_11, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_11 = 0*8;
  if (__xlx_apatb_param_X1_11) {
tr.import<8>((char*)__xlx_apatb_param_X1_11, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X1_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_11_depth);
#else
// print X1_11 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X1_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_11 = 0*8;
  if (__xlx_apatb_param_X1_11) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_11)[j];
aesl_fh.write(AUTOTB_TVIN_X1_11, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_11_depth);
aesl_fh.write(AUTOTB_TVIN_X1_11, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X1_12 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X1_12, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_12 = 0*8;
  if (__xlx_apatb_param_X1_12) {
tr.import<8>((char*)__xlx_apatb_param_X1_12, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X1_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_12_depth);
#else
// print X1_12 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X1_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_12 = 0*8;
  if (__xlx_apatb_param_X1_12) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_12)[j];
aesl_fh.write(AUTOTB_TVIN_X1_12, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_12_depth);
aesl_fh.write(AUTOTB_TVIN_X1_12, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X1_13 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X1_13, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_13 = 0*8;
  if (__xlx_apatb_param_X1_13) {
tr.import<8>((char*)__xlx_apatb_param_X1_13, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X1_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_13_depth);
#else
// print X1_13 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X1_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_13 = 0*8;
  if (__xlx_apatb_param_X1_13) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_13)[j];
aesl_fh.write(AUTOTB_TVIN_X1_13, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_13_depth);
aesl_fh.write(AUTOTB_TVIN_X1_13, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X1_14 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X1_14, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_14 = 0*8;
  if (__xlx_apatb_param_X1_14) {
tr.import<8>((char*)__xlx_apatb_param_X1_14, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X1_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_14_depth);
#else
// print X1_14 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X1_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_14 = 0*8;
  if (__xlx_apatb_param_X1_14) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_14)[j];
aesl_fh.write(AUTOTB_TVIN_X1_14, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_14_depth);
aesl_fh.write(AUTOTB_TVIN_X1_14, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X1_15 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X1_15, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_15 = 0*8;
  if (__xlx_apatb_param_X1_15) {
tr.import<8>((char*)__xlx_apatb_param_X1_15, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X1_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_15_depth);
#else
// print X1_15 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X1_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_15 = 0*8;
  if (__xlx_apatb_param_X1_15) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_15)[j];
aesl_fh.write(AUTOTB_TVIN_X1_15, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_15_depth);
aesl_fh.write(AUTOTB_TVIN_X1_15, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X2_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X2_0, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_0 = 0*8;
  if (__xlx_apatb_param_X2_0) {
tr.import<8>((char*)__xlx_apatb_param_X2_0, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X2_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_0_depth);
#else
// print X2_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X2_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_0 = 0*8;
  if (__xlx_apatb_param_X2_0) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_0)[j];
aesl_fh.write(AUTOTB_TVIN_X2_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_0_depth);
aesl_fh.write(AUTOTB_TVIN_X2_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X2_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X2_1, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_1 = 0*8;
  if (__xlx_apatb_param_X2_1) {
tr.import<8>((char*)__xlx_apatb_param_X2_1, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X2_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_1_depth);
#else
// print X2_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X2_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_1 = 0*8;
  if (__xlx_apatb_param_X2_1) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_1)[j];
aesl_fh.write(AUTOTB_TVIN_X2_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_1_depth);
aesl_fh.write(AUTOTB_TVIN_X2_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X2_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X2_2, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_2 = 0*8;
  if (__xlx_apatb_param_X2_2) {
tr.import<8>((char*)__xlx_apatb_param_X2_2, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X2_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_2_depth);
#else
// print X2_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X2_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_2 = 0*8;
  if (__xlx_apatb_param_X2_2) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_2)[j];
aesl_fh.write(AUTOTB_TVIN_X2_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_2_depth);
aesl_fh.write(AUTOTB_TVIN_X2_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X2_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X2_3, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_3 = 0*8;
  if (__xlx_apatb_param_X2_3) {
tr.import<8>((char*)__xlx_apatb_param_X2_3, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X2_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_3_depth);
#else
// print X2_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X2_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_3 = 0*8;
  if (__xlx_apatb_param_X2_3) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_3)[j];
aesl_fh.write(AUTOTB_TVIN_X2_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_3_depth);
aesl_fh.write(AUTOTB_TVIN_X2_3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X2_4 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X2_4, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_4 = 0*8;
  if (__xlx_apatb_param_X2_4) {
tr.import<8>((char*)__xlx_apatb_param_X2_4, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X2_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_4_depth);
#else
// print X2_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X2_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_4 = 0*8;
  if (__xlx_apatb_param_X2_4) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_4)[j];
aesl_fh.write(AUTOTB_TVIN_X2_4, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_4_depth);
aesl_fh.write(AUTOTB_TVIN_X2_4, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X2_5 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X2_5, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_5 = 0*8;
  if (__xlx_apatb_param_X2_5) {
tr.import<8>((char*)__xlx_apatb_param_X2_5, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X2_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_5_depth);
#else
// print X2_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X2_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_5 = 0*8;
  if (__xlx_apatb_param_X2_5) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_5)[j];
aesl_fh.write(AUTOTB_TVIN_X2_5, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_5_depth);
aesl_fh.write(AUTOTB_TVIN_X2_5, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X2_6 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X2_6, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_6 = 0*8;
  if (__xlx_apatb_param_X2_6) {
tr.import<8>((char*)__xlx_apatb_param_X2_6, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X2_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_6_depth);
#else
// print X2_6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X2_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_6 = 0*8;
  if (__xlx_apatb_param_X2_6) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_6)[j];
aesl_fh.write(AUTOTB_TVIN_X2_6, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_6_depth);
aesl_fh.write(AUTOTB_TVIN_X2_6, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X2_7 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X2_7, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_7 = 0*8;
  if (__xlx_apatb_param_X2_7) {
tr.import<8>((char*)__xlx_apatb_param_X2_7, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X2_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_7_depth);
#else
// print X2_7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X2_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_7 = 0*8;
  if (__xlx_apatb_param_X2_7) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_7)[j];
aesl_fh.write(AUTOTB_TVIN_X2_7, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_7_depth);
aesl_fh.write(AUTOTB_TVIN_X2_7, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X2_8 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X2_8, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_8 = 0*8;
  if (__xlx_apatb_param_X2_8) {
tr.import<8>((char*)__xlx_apatb_param_X2_8, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X2_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_8_depth);
#else
// print X2_8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X2_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_8 = 0*8;
  if (__xlx_apatb_param_X2_8) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_8)[j];
aesl_fh.write(AUTOTB_TVIN_X2_8, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_8_depth);
aesl_fh.write(AUTOTB_TVIN_X2_8, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X2_9 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X2_9, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_9 = 0*8;
  if (__xlx_apatb_param_X2_9) {
tr.import<8>((char*)__xlx_apatb_param_X2_9, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X2_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_9_depth);
#else
// print X2_9 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X2_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_9 = 0*8;
  if (__xlx_apatb_param_X2_9) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_9)[j];
aesl_fh.write(AUTOTB_TVIN_X2_9, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_9_depth);
aesl_fh.write(AUTOTB_TVIN_X2_9, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X2_10 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X2_10, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_10 = 0*8;
  if (__xlx_apatb_param_X2_10) {
tr.import<8>((char*)__xlx_apatb_param_X2_10, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X2_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_10_depth);
#else
// print X2_10 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X2_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_10 = 0*8;
  if (__xlx_apatb_param_X2_10) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_10)[j];
aesl_fh.write(AUTOTB_TVIN_X2_10, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_10_depth);
aesl_fh.write(AUTOTB_TVIN_X2_10, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X2_11 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X2_11, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_11 = 0*8;
  if (__xlx_apatb_param_X2_11) {
tr.import<8>((char*)__xlx_apatb_param_X2_11, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X2_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_11_depth);
#else
// print X2_11 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X2_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_11 = 0*8;
  if (__xlx_apatb_param_X2_11) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_11)[j];
aesl_fh.write(AUTOTB_TVIN_X2_11, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_11_depth);
aesl_fh.write(AUTOTB_TVIN_X2_11, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X2_12 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X2_12, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_12 = 0*8;
  if (__xlx_apatb_param_X2_12) {
tr.import<8>((char*)__xlx_apatb_param_X2_12, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X2_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_12_depth);
#else
// print X2_12 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X2_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_12 = 0*8;
  if (__xlx_apatb_param_X2_12) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_12)[j];
aesl_fh.write(AUTOTB_TVIN_X2_12, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_12_depth);
aesl_fh.write(AUTOTB_TVIN_X2_12, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X2_13 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X2_13, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_13 = 0*8;
  if (__xlx_apatb_param_X2_13) {
tr.import<8>((char*)__xlx_apatb_param_X2_13, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X2_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_13_depth);
#else
// print X2_13 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X2_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_13 = 0*8;
  if (__xlx_apatb_param_X2_13) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_13)[j];
aesl_fh.write(AUTOTB_TVIN_X2_13, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_13_depth);
aesl_fh.write(AUTOTB_TVIN_X2_13, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X2_14 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X2_14, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_14 = 0*8;
  if (__xlx_apatb_param_X2_14) {
tr.import<8>((char*)__xlx_apatb_param_X2_14, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X2_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_14_depth);
#else
// print X2_14 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X2_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_14 = 0*8;
  if (__xlx_apatb_param_X2_14) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_14)[j];
aesl_fh.write(AUTOTB_TVIN_X2_14, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_14_depth);
aesl_fh.write(AUTOTB_TVIN_X2_14, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X2_15 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X2_15, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_15 = 0*8;
  if (__xlx_apatb_param_X2_15) {
tr.import<8>((char*)__xlx_apatb_param_X2_15, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X2_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_15_depth);
#else
// print X2_15 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X2_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_15 = 0*8;
  if (__xlx_apatb_param_X2_15) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_15)[j];
aesl_fh.write(AUTOTB_TVIN_X2_15, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_15_depth);
aesl_fh.write(AUTOTB_TVIN_X2_15, end_str());
}

#endif
unsigned __xlx_offset_byte_param_D_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_D_0, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_0 = 0*8;
  if (__xlx_apatb_param_D_0) {
tr.import<8>((char*)__xlx_apatb_param_D_0, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_D_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_0_depth);
#else
// print D_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_D_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_0 = 0*8;
  if (__xlx_apatb_param_D_0) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_0)[j];
aesl_fh.write(AUTOTB_TVIN_D_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_0_depth);
aesl_fh.write(AUTOTB_TVIN_D_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_D_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_D_1, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_1 = 0*8;
  if (__xlx_apatb_param_D_1) {
tr.import<8>((char*)__xlx_apatb_param_D_1, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_D_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_1_depth);
#else
// print D_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_D_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_1 = 0*8;
  if (__xlx_apatb_param_D_1) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_1)[j];
aesl_fh.write(AUTOTB_TVIN_D_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_1_depth);
aesl_fh.write(AUTOTB_TVIN_D_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_D_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_D_2, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_2 = 0*8;
  if (__xlx_apatb_param_D_2) {
tr.import<8>((char*)__xlx_apatb_param_D_2, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_D_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_2_depth);
#else
// print D_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_D_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_2 = 0*8;
  if (__xlx_apatb_param_D_2) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_2)[j];
aesl_fh.write(AUTOTB_TVIN_D_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_2_depth);
aesl_fh.write(AUTOTB_TVIN_D_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_D_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_D_3, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_3 = 0*8;
  if (__xlx_apatb_param_D_3) {
tr.import<8>((char*)__xlx_apatb_param_D_3, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_D_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_3_depth);
#else
// print D_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_D_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_3 = 0*8;
  if (__xlx_apatb_param_D_3) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_3)[j];
aesl_fh.write(AUTOTB_TVIN_D_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_3_depth);
aesl_fh.write(AUTOTB_TVIN_D_3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_D_4 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_D_4, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_4 = 0*8;
  if (__xlx_apatb_param_D_4) {
tr.import<8>((char*)__xlx_apatb_param_D_4, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_D_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_4_depth);
#else
// print D_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_D_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_4 = 0*8;
  if (__xlx_apatb_param_D_4) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_4)[j];
aesl_fh.write(AUTOTB_TVIN_D_4, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_4_depth);
aesl_fh.write(AUTOTB_TVIN_D_4, end_str());
}

#endif
unsigned __xlx_offset_byte_param_D_5 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_D_5, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_5 = 0*8;
  if (__xlx_apatb_param_D_5) {
tr.import<8>((char*)__xlx_apatb_param_D_5, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_D_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_5_depth);
#else
// print D_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_D_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_5 = 0*8;
  if (__xlx_apatb_param_D_5) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_5)[j];
aesl_fh.write(AUTOTB_TVIN_D_5, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_5_depth);
aesl_fh.write(AUTOTB_TVIN_D_5, end_str());
}

#endif
unsigned __xlx_offset_byte_param_D_6 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_D_6, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_6 = 0*8;
  if (__xlx_apatb_param_D_6) {
tr.import<8>((char*)__xlx_apatb_param_D_6, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_D_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_6_depth);
#else
// print D_6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_D_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_6 = 0*8;
  if (__xlx_apatb_param_D_6) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_6)[j];
aesl_fh.write(AUTOTB_TVIN_D_6, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_6_depth);
aesl_fh.write(AUTOTB_TVIN_D_6, end_str());
}

#endif
unsigned __xlx_offset_byte_param_D_7 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_D_7, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_7 = 0*8;
  if (__xlx_apatb_param_D_7) {
tr.import<8>((char*)__xlx_apatb_param_D_7, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_D_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_7_depth);
#else
// print D_7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_D_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_7 = 0*8;
  if (__xlx_apatb_param_D_7) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_7)[j];
aesl_fh.write(AUTOTB_TVIN_D_7, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_7_depth);
aesl_fh.write(AUTOTB_TVIN_D_7, end_str());
}

#endif
unsigned __xlx_offset_byte_param_D_8 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_D_8, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_8 = 0*8;
  if (__xlx_apatb_param_D_8) {
tr.import<8>((char*)__xlx_apatb_param_D_8, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_D_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_8_depth);
#else
// print D_8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_D_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_8 = 0*8;
  if (__xlx_apatb_param_D_8) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_8)[j];
aesl_fh.write(AUTOTB_TVIN_D_8, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_8_depth);
aesl_fh.write(AUTOTB_TVIN_D_8, end_str());
}

#endif
unsigned __xlx_offset_byte_param_D_9 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_D_9, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_9 = 0*8;
  if (__xlx_apatb_param_D_9) {
tr.import<8>((char*)__xlx_apatb_param_D_9, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_D_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_9_depth);
#else
// print D_9 Transactions
{
aesl_fh.write(AUTOTB_TVIN_D_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_9 = 0*8;
  if (__xlx_apatb_param_D_9) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_9)[j];
aesl_fh.write(AUTOTB_TVIN_D_9, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_9_depth);
aesl_fh.write(AUTOTB_TVIN_D_9, end_str());
}

#endif
unsigned __xlx_offset_byte_param_D_10 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_D_10, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_10 = 0*8;
  if (__xlx_apatb_param_D_10) {
tr.import<8>((char*)__xlx_apatb_param_D_10, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_D_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_10_depth);
#else
// print D_10 Transactions
{
aesl_fh.write(AUTOTB_TVIN_D_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_10 = 0*8;
  if (__xlx_apatb_param_D_10) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_10)[j];
aesl_fh.write(AUTOTB_TVIN_D_10, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_10_depth);
aesl_fh.write(AUTOTB_TVIN_D_10, end_str());
}

#endif
unsigned __xlx_offset_byte_param_D_11 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_D_11, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_11 = 0*8;
  if (__xlx_apatb_param_D_11) {
tr.import<8>((char*)__xlx_apatb_param_D_11, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_D_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_11_depth);
#else
// print D_11 Transactions
{
aesl_fh.write(AUTOTB_TVIN_D_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_11 = 0*8;
  if (__xlx_apatb_param_D_11) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_11)[j];
aesl_fh.write(AUTOTB_TVIN_D_11, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_11_depth);
aesl_fh.write(AUTOTB_TVIN_D_11, end_str());
}

#endif
unsigned __xlx_offset_byte_param_D_12 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_D_12, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_12 = 0*8;
  if (__xlx_apatb_param_D_12) {
tr.import<8>((char*)__xlx_apatb_param_D_12, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_D_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_12_depth);
#else
// print D_12 Transactions
{
aesl_fh.write(AUTOTB_TVIN_D_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_12 = 0*8;
  if (__xlx_apatb_param_D_12) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_12)[j];
aesl_fh.write(AUTOTB_TVIN_D_12, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_12_depth);
aesl_fh.write(AUTOTB_TVIN_D_12, end_str());
}

#endif
unsigned __xlx_offset_byte_param_D_13 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_D_13, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_13 = 0*8;
  if (__xlx_apatb_param_D_13) {
tr.import<8>((char*)__xlx_apatb_param_D_13, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_D_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_13_depth);
#else
// print D_13 Transactions
{
aesl_fh.write(AUTOTB_TVIN_D_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_13 = 0*8;
  if (__xlx_apatb_param_D_13) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_13)[j];
aesl_fh.write(AUTOTB_TVIN_D_13, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_13_depth);
aesl_fh.write(AUTOTB_TVIN_D_13, end_str());
}

#endif
unsigned __xlx_offset_byte_param_D_14 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_D_14, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_14 = 0*8;
  if (__xlx_apatb_param_D_14) {
tr.import<8>((char*)__xlx_apatb_param_D_14, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_D_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_14_depth);
#else
// print D_14 Transactions
{
aesl_fh.write(AUTOTB_TVIN_D_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_14 = 0*8;
  if (__xlx_apatb_param_D_14) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_14)[j];
aesl_fh.write(AUTOTB_TVIN_D_14, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_14_depth);
aesl_fh.write(AUTOTB_TVIN_D_14, end_str());
}

#endif
unsigned __xlx_offset_byte_param_D_15 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_D_15, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_15 = 0*8;
  if (__xlx_apatb_param_D_15) {
tr.import<8>((char*)__xlx_apatb_param_D_15, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_D_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_15_depth);
#else
// print D_15 Transactions
{
aesl_fh.write(AUTOTB_TVIN_D_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_15 = 0*8;
  if (__xlx_apatb_param_D_15) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_15)[j];
aesl_fh.write(AUTOTB_TVIN_D_15, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_15_depth);
aesl_fh.write(AUTOTB_TVIN_D_15, end_str());
}

#endif
CodeState = CALL_C_DUT;
kp_502_7_hw_stub_wrapper(__xlx_apatb_param_A_0, __xlx_apatb_param_A_1, __xlx_apatb_param_A_2, __xlx_apatb_param_A_3, __xlx_apatb_param_A_4, __xlx_apatb_param_A_5, __xlx_apatb_param_A_6, __xlx_apatb_param_A_7, __xlx_apatb_param_A_8, __xlx_apatb_param_A_9, __xlx_apatb_param_A_10, __xlx_apatb_param_A_11, __xlx_apatb_param_A_12, __xlx_apatb_param_A_13, __xlx_apatb_param_A_14, __xlx_apatb_param_A_15, __xlx_apatb_param_B_0, __xlx_apatb_param_B_1, __xlx_apatb_param_B_2, __xlx_apatb_param_B_3, __xlx_apatb_param_B_4, __xlx_apatb_param_B_5, __xlx_apatb_param_B_6, __xlx_apatb_param_B_7, __xlx_apatb_param_B_8, __xlx_apatb_param_B_9, __xlx_apatb_param_B_10, __xlx_apatb_param_B_11, __xlx_apatb_param_B_12, __xlx_apatb_param_B_13, __xlx_apatb_param_B_14, __xlx_apatb_param_B_15, __xlx_apatb_param_C_0, __xlx_apatb_param_C_1, __xlx_apatb_param_C_2, __xlx_apatb_param_C_3, __xlx_apatb_param_C_4, __xlx_apatb_param_C_5, __xlx_apatb_param_C_6, __xlx_apatb_param_C_7, __xlx_apatb_param_C_8, __xlx_apatb_param_C_9, __xlx_apatb_param_C_10, __xlx_apatb_param_C_11, __xlx_apatb_param_C_12, __xlx_apatb_param_C_13, __xlx_apatb_param_C_14, __xlx_apatb_param_C_15, __xlx_apatb_param_X1_0, __xlx_apatb_param_X1_1, __xlx_apatb_param_X1_2, __xlx_apatb_param_X1_3, __xlx_apatb_param_X1_4, __xlx_apatb_param_X1_5, __xlx_apatb_param_X1_6, __xlx_apatb_param_X1_7, __xlx_apatb_param_X1_8, __xlx_apatb_param_X1_9, __xlx_apatb_param_X1_10, __xlx_apatb_param_X1_11, __xlx_apatb_param_X1_12, __xlx_apatb_param_X1_13, __xlx_apatb_param_X1_14, __xlx_apatb_param_X1_15, __xlx_apatb_param_X2_0, __xlx_apatb_param_X2_1, __xlx_apatb_param_X2_2, __xlx_apatb_param_X2_3, __xlx_apatb_param_X2_4, __xlx_apatb_param_X2_5, __xlx_apatb_param_X2_6, __xlx_apatb_param_X2_7, __xlx_apatb_param_X2_8, __xlx_apatb_param_X2_9, __xlx_apatb_param_X2_10, __xlx_apatb_param_X2_11, __xlx_apatb_param_X2_12, __xlx_apatb_param_X2_13, __xlx_apatb_param_X2_14, __xlx_apatb_param_X2_15, __xlx_apatb_param_D_0, __xlx_apatb_param_D_1, __xlx_apatb_param_D_2, __xlx_apatb_param_D_3, __xlx_apatb_param_D_4, __xlx_apatb_param_D_5, __xlx_apatb_param_D_6, __xlx_apatb_param_D_7, __xlx_apatb_param_D_8, __xlx_apatb_param_D_9, __xlx_apatb_param_D_10, __xlx_apatb_param_D_11, __xlx_apatb_param_D_12, __xlx_apatb_param_D_13, __xlx_apatb_param_D_14, __xlx_apatb_param_D_15);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X1_0, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_0 = 0*8;
  if (__xlx_apatb_param_X1_0) {
tr.import<8>((char*)__xlx_apatb_param_X1_0, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X1_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_0_depth);
#else
// print X1_0 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X1_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_0 = 0*8;
  if (__xlx_apatb_param_X1_0) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_0)[j];
aesl_fh.write(AUTOTB_TVOUT_X1_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_0_depth);
aesl_fh.write(AUTOTB_TVOUT_X1_0, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X1_1, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_1 = 0*8;
  if (__xlx_apatb_param_X1_1) {
tr.import<8>((char*)__xlx_apatb_param_X1_1, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X1_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_1_depth);
#else
// print X1_1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X1_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_1 = 0*8;
  if (__xlx_apatb_param_X1_1) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_1)[j];
aesl_fh.write(AUTOTB_TVOUT_X1_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_1_depth);
aesl_fh.write(AUTOTB_TVOUT_X1_1, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X1_2, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_2 = 0*8;
  if (__xlx_apatb_param_X1_2) {
tr.import<8>((char*)__xlx_apatb_param_X1_2, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X1_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_2_depth);
#else
// print X1_2 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X1_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_2 = 0*8;
  if (__xlx_apatb_param_X1_2) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_2)[j];
aesl_fh.write(AUTOTB_TVOUT_X1_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_2_depth);
aesl_fh.write(AUTOTB_TVOUT_X1_2, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X1_3, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_3 = 0*8;
  if (__xlx_apatb_param_X1_3) {
tr.import<8>((char*)__xlx_apatb_param_X1_3, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X1_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_3_depth);
#else
// print X1_3 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X1_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_3 = 0*8;
  if (__xlx_apatb_param_X1_3) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_3)[j];
aesl_fh.write(AUTOTB_TVOUT_X1_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_3_depth);
aesl_fh.write(AUTOTB_TVOUT_X1_3, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X1_4, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_4 = 0*8;
  if (__xlx_apatb_param_X1_4) {
tr.import<8>((char*)__xlx_apatb_param_X1_4, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X1_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_4_depth);
#else
// print X1_4 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X1_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_4 = 0*8;
  if (__xlx_apatb_param_X1_4) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_4)[j];
aesl_fh.write(AUTOTB_TVOUT_X1_4, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_4_depth);
aesl_fh.write(AUTOTB_TVOUT_X1_4, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X1_5, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_5 = 0*8;
  if (__xlx_apatb_param_X1_5) {
tr.import<8>((char*)__xlx_apatb_param_X1_5, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X1_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_5_depth);
#else
// print X1_5 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X1_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_5 = 0*8;
  if (__xlx_apatb_param_X1_5) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_5)[j];
aesl_fh.write(AUTOTB_TVOUT_X1_5, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_5_depth);
aesl_fh.write(AUTOTB_TVOUT_X1_5, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X1_6, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_6 = 0*8;
  if (__xlx_apatb_param_X1_6) {
tr.import<8>((char*)__xlx_apatb_param_X1_6, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X1_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_6_depth);
#else
// print X1_6 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X1_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_6 = 0*8;
  if (__xlx_apatb_param_X1_6) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_6)[j];
aesl_fh.write(AUTOTB_TVOUT_X1_6, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_6_depth);
aesl_fh.write(AUTOTB_TVOUT_X1_6, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X1_7, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_7 = 0*8;
  if (__xlx_apatb_param_X1_7) {
tr.import<8>((char*)__xlx_apatb_param_X1_7, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X1_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_7_depth);
#else
// print X1_7 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X1_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_7 = 0*8;
  if (__xlx_apatb_param_X1_7) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_7)[j];
aesl_fh.write(AUTOTB_TVOUT_X1_7, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_7_depth);
aesl_fh.write(AUTOTB_TVOUT_X1_7, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X1_8, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_8 = 0*8;
  if (__xlx_apatb_param_X1_8) {
tr.import<8>((char*)__xlx_apatb_param_X1_8, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X1_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_8_depth);
#else
// print X1_8 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X1_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_8 = 0*8;
  if (__xlx_apatb_param_X1_8) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_8)[j];
aesl_fh.write(AUTOTB_TVOUT_X1_8, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_8_depth);
aesl_fh.write(AUTOTB_TVOUT_X1_8, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X1_9, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_9 = 0*8;
  if (__xlx_apatb_param_X1_9) {
tr.import<8>((char*)__xlx_apatb_param_X1_9, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X1_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_9_depth);
#else
// print X1_9 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X1_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_9 = 0*8;
  if (__xlx_apatb_param_X1_9) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_9)[j];
aesl_fh.write(AUTOTB_TVOUT_X1_9, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_9_depth);
aesl_fh.write(AUTOTB_TVOUT_X1_9, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X1_10, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_10 = 0*8;
  if (__xlx_apatb_param_X1_10) {
tr.import<8>((char*)__xlx_apatb_param_X1_10, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X1_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_10_depth);
#else
// print X1_10 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X1_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_10 = 0*8;
  if (__xlx_apatb_param_X1_10) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_10)[j];
aesl_fh.write(AUTOTB_TVOUT_X1_10, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_10_depth);
aesl_fh.write(AUTOTB_TVOUT_X1_10, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X1_11, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_11 = 0*8;
  if (__xlx_apatb_param_X1_11) {
tr.import<8>((char*)__xlx_apatb_param_X1_11, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X1_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_11_depth);
#else
// print X1_11 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X1_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_11 = 0*8;
  if (__xlx_apatb_param_X1_11) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_11)[j];
aesl_fh.write(AUTOTB_TVOUT_X1_11, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_11_depth);
aesl_fh.write(AUTOTB_TVOUT_X1_11, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X1_12, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_12 = 0*8;
  if (__xlx_apatb_param_X1_12) {
tr.import<8>((char*)__xlx_apatb_param_X1_12, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X1_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_12_depth);
#else
// print X1_12 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X1_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_12 = 0*8;
  if (__xlx_apatb_param_X1_12) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_12)[j];
aesl_fh.write(AUTOTB_TVOUT_X1_12, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_12_depth);
aesl_fh.write(AUTOTB_TVOUT_X1_12, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X1_13, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_13 = 0*8;
  if (__xlx_apatb_param_X1_13) {
tr.import<8>((char*)__xlx_apatb_param_X1_13, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X1_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_13_depth);
#else
// print X1_13 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X1_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_13 = 0*8;
  if (__xlx_apatb_param_X1_13) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_13)[j];
aesl_fh.write(AUTOTB_TVOUT_X1_13, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_13_depth);
aesl_fh.write(AUTOTB_TVOUT_X1_13, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X1_14, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_14 = 0*8;
  if (__xlx_apatb_param_X1_14) {
tr.import<8>((char*)__xlx_apatb_param_X1_14, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X1_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_14_depth);
#else
// print X1_14 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X1_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_14 = 0*8;
  if (__xlx_apatb_param_X1_14) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_14)[j];
aesl_fh.write(AUTOTB_TVOUT_X1_14, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_14_depth);
aesl_fh.write(AUTOTB_TVOUT_X1_14, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X1_15, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X1_15 = 0*8;
  if (__xlx_apatb_param_X1_15) {
tr.import<8>((char*)__xlx_apatb_param_X1_15, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X1_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X1_15_depth);
#else
// print X1_15 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X1_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_15 = 0*8;
  if (__xlx_apatb_param_X1_15) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_15)[j];
aesl_fh.write(AUTOTB_TVOUT_X1_15, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X1_15_depth);
aesl_fh.write(AUTOTB_TVOUT_X1_15, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X2_0, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_0 = 0*8;
  if (__xlx_apatb_param_X2_0) {
tr.import<8>((char*)__xlx_apatb_param_X2_0, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X2_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_0_depth);
#else
// print X2_0 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X2_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_0 = 0*8;
  if (__xlx_apatb_param_X2_0) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_0)[j];
aesl_fh.write(AUTOTB_TVOUT_X2_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_0_depth);
aesl_fh.write(AUTOTB_TVOUT_X2_0, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X2_1, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_1 = 0*8;
  if (__xlx_apatb_param_X2_1) {
tr.import<8>((char*)__xlx_apatb_param_X2_1, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X2_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_1_depth);
#else
// print X2_1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X2_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_1 = 0*8;
  if (__xlx_apatb_param_X2_1) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_1)[j];
aesl_fh.write(AUTOTB_TVOUT_X2_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_1_depth);
aesl_fh.write(AUTOTB_TVOUT_X2_1, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X2_2, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_2 = 0*8;
  if (__xlx_apatb_param_X2_2) {
tr.import<8>((char*)__xlx_apatb_param_X2_2, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X2_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_2_depth);
#else
// print X2_2 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X2_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_2 = 0*8;
  if (__xlx_apatb_param_X2_2) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_2)[j];
aesl_fh.write(AUTOTB_TVOUT_X2_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_2_depth);
aesl_fh.write(AUTOTB_TVOUT_X2_2, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X2_3, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_3 = 0*8;
  if (__xlx_apatb_param_X2_3) {
tr.import<8>((char*)__xlx_apatb_param_X2_3, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X2_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_3_depth);
#else
// print X2_3 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X2_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_3 = 0*8;
  if (__xlx_apatb_param_X2_3) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_3)[j];
aesl_fh.write(AUTOTB_TVOUT_X2_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_3_depth);
aesl_fh.write(AUTOTB_TVOUT_X2_3, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X2_4, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_4 = 0*8;
  if (__xlx_apatb_param_X2_4) {
tr.import<8>((char*)__xlx_apatb_param_X2_4, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X2_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_4_depth);
#else
// print X2_4 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X2_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_4 = 0*8;
  if (__xlx_apatb_param_X2_4) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_4)[j];
aesl_fh.write(AUTOTB_TVOUT_X2_4, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_4_depth);
aesl_fh.write(AUTOTB_TVOUT_X2_4, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X2_5, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_5 = 0*8;
  if (__xlx_apatb_param_X2_5) {
tr.import<8>((char*)__xlx_apatb_param_X2_5, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X2_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_5_depth);
#else
// print X2_5 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X2_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_5 = 0*8;
  if (__xlx_apatb_param_X2_5) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_5)[j];
aesl_fh.write(AUTOTB_TVOUT_X2_5, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_5_depth);
aesl_fh.write(AUTOTB_TVOUT_X2_5, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X2_6, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_6 = 0*8;
  if (__xlx_apatb_param_X2_6) {
tr.import<8>((char*)__xlx_apatb_param_X2_6, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X2_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_6_depth);
#else
// print X2_6 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X2_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_6 = 0*8;
  if (__xlx_apatb_param_X2_6) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_6)[j];
aesl_fh.write(AUTOTB_TVOUT_X2_6, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_6_depth);
aesl_fh.write(AUTOTB_TVOUT_X2_6, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X2_7, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_7 = 0*8;
  if (__xlx_apatb_param_X2_7) {
tr.import<8>((char*)__xlx_apatb_param_X2_7, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X2_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_7_depth);
#else
// print X2_7 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X2_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_7 = 0*8;
  if (__xlx_apatb_param_X2_7) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_7)[j];
aesl_fh.write(AUTOTB_TVOUT_X2_7, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_7_depth);
aesl_fh.write(AUTOTB_TVOUT_X2_7, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X2_8, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_8 = 0*8;
  if (__xlx_apatb_param_X2_8) {
tr.import<8>((char*)__xlx_apatb_param_X2_8, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X2_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_8_depth);
#else
// print X2_8 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X2_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_8 = 0*8;
  if (__xlx_apatb_param_X2_8) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_8)[j];
aesl_fh.write(AUTOTB_TVOUT_X2_8, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_8_depth);
aesl_fh.write(AUTOTB_TVOUT_X2_8, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X2_9, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_9 = 0*8;
  if (__xlx_apatb_param_X2_9) {
tr.import<8>((char*)__xlx_apatb_param_X2_9, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X2_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_9_depth);
#else
// print X2_9 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X2_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_9 = 0*8;
  if (__xlx_apatb_param_X2_9) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_9)[j];
aesl_fh.write(AUTOTB_TVOUT_X2_9, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_9_depth);
aesl_fh.write(AUTOTB_TVOUT_X2_9, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X2_10, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_10 = 0*8;
  if (__xlx_apatb_param_X2_10) {
tr.import<8>((char*)__xlx_apatb_param_X2_10, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X2_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_10_depth);
#else
// print X2_10 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X2_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_10 = 0*8;
  if (__xlx_apatb_param_X2_10) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_10)[j];
aesl_fh.write(AUTOTB_TVOUT_X2_10, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_10_depth);
aesl_fh.write(AUTOTB_TVOUT_X2_10, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X2_11, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_11 = 0*8;
  if (__xlx_apatb_param_X2_11) {
tr.import<8>((char*)__xlx_apatb_param_X2_11, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X2_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_11_depth);
#else
// print X2_11 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X2_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_11 = 0*8;
  if (__xlx_apatb_param_X2_11) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_11)[j];
aesl_fh.write(AUTOTB_TVOUT_X2_11, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_11_depth);
aesl_fh.write(AUTOTB_TVOUT_X2_11, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X2_12, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_12 = 0*8;
  if (__xlx_apatb_param_X2_12) {
tr.import<8>((char*)__xlx_apatb_param_X2_12, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X2_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_12_depth);
#else
// print X2_12 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X2_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_12 = 0*8;
  if (__xlx_apatb_param_X2_12) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_12)[j];
aesl_fh.write(AUTOTB_TVOUT_X2_12, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_12_depth);
aesl_fh.write(AUTOTB_TVOUT_X2_12, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X2_13, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_13 = 0*8;
  if (__xlx_apatb_param_X2_13) {
tr.import<8>((char*)__xlx_apatb_param_X2_13, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X2_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_13_depth);
#else
// print X2_13 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X2_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_13 = 0*8;
  if (__xlx_apatb_param_X2_13) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_13)[j];
aesl_fh.write(AUTOTB_TVOUT_X2_13, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_13_depth);
aesl_fh.write(AUTOTB_TVOUT_X2_13, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X2_14, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_14 = 0*8;
  if (__xlx_apatb_param_X2_14) {
tr.import<8>((char*)__xlx_apatb_param_X2_14, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X2_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_14_depth);
#else
// print X2_14 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X2_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_14 = 0*8;
  if (__xlx_apatb_param_X2_14) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_14)[j];
aesl_fh.write(AUTOTB_TVOUT_X2_14, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_14_depth);
aesl_fh.write(AUTOTB_TVOUT_X2_14, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X2_15, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_X2_15 = 0*8;
  if (__xlx_apatb_param_X2_15) {
tr.import<8>((char*)__xlx_apatb_param_X2_15, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X2_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.X2_15_depth);
#else
// print X2_15 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X2_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_15 = 0*8;
  if (__xlx_apatb_param_X2_15) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_15)[j];
aesl_fh.write(AUTOTB_TVOUT_X2_15, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.X2_15_depth);
aesl_fh.write(AUTOTB_TVOUT_X2_15, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_D_0, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_0 = 0*8;
  if (__xlx_apatb_param_D_0) {
tr.import<8>((char*)__xlx_apatb_param_D_0, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_D_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_0_depth);
#else
// print D_0 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_D_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_0 = 0*8;
  if (__xlx_apatb_param_D_0) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_0)[j];
aesl_fh.write(AUTOTB_TVOUT_D_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_0_depth);
aesl_fh.write(AUTOTB_TVOUT_D_0, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_D_1, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_1 = 0*8;
  if (__xlx_apatb_param_D_1) {
tr.import<8>((char*)__xlx_apatb_param_D_1, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_D_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_1_depth);
#else
// print D_1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_D_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_1 = 0*8;
  if (__xlx_apatb_param_D_1) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_1)[j];
aesl_fh.write(AUTOTB_TVOUT_D_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_1_depth);
aesl_fh.write(AUTOTB_TVOUT_D_1, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_D_2, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_2 = 0*8;
  if (__xlx_apatb_param_D_2) {
tr.import<8>((char*)__xlx_apatb_param_D_2, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_D_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_2_depth);
#else
// print D_2 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_D_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_2 = 0*8;
  if (__xlx_apatb_param_D_2) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_2)[j];
aesl_fh.write(AUTOTB_TVOUT_D_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_2_depth);
aesl_fh.write(AUTOTB_TVOUT_D_2, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_D_3, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_3 = 0*8;
  if (__xlx_apatb_param_D_3) {
tr.import<8>((char*)__xlx_apatb_param_D_3, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_D_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_3_depth);
#else
// print D_3 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_D_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_3 = 0*8;
  if (__xlx_apatb_param_D_3) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_3)[j];
aesl_fh.write(AUTOTB_TVOUT_D_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_3_depth);
aesl_fh.write(AUTOTB_TVOUT_D_3, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_D_4, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_4 = 0*8;
  if (__xlx_apatb_param_D_4) {
tr.import<8>((char*)__xlx_apatb_param_D_4, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_D_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_4_depth);
#else
// print D_4 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_D_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_4 = 0*8;
  if (__xlx_apatb_param_D_4) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_4)[j];
aesl_fh.write(AUTOTB_TVOUT_D_4, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_4_depth);
aesl_fh.write(AUTOTB_TVOUT_D_4, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_D_5, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_5 = 0*8;
  if (__xlx_apatb_param_D_5) {
tr.import<8>((char*)__xlx_apatb_param_D_5, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_D_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_5_depth);
#else
// print D_5 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_D_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_5 = 0*8;
  if (__xlx_apatb_param_D_5) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_5)[j];
aesl_fh.write(AUTOTB_TVOUT_D_5, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_5_depth);
aesl_fh.write(AUTOTB_TVOUT_D_5, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_D_6, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_6 = 0*8;
  if (__xlx_apatb_param_D_6) {
tr.import<8>((char*)__xlx_apatb_param_D_6, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_D_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_6_depth);
#else
// print D_6 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_D_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_6 = 0*8;
  if (__xlx_apatb_param_D_6) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_6)[j];
aesl_fh.write(AUTOTB_TVOUT_D_6, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_6_depth);
aesl_fh.write(AUTOTB_TVOUT_D_6, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_D_7, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_7 = 0*8;
  if (__xlx_apatb_param_D_7) {
tr.import<8>((char*)__xlx_apatb_param_D_7, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_D_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_7_depth);
#else
// print D_7 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_D_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_7 = 0*8;
  if (__xlx_apatb_param_D_7) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_7)[j];
aesl_fh.write(AUTOTB_TVOUT_D_7, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_7_depth);
aesl_fh.write(AUTOTB_TVOUT_D_7, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_D_8, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_8 = 0*8;
  if (__xlx_apatb_param_D_8) {
tr.import<8>((char*)__xlx_apatb_param_D_8, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_D_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_8_depth);
#else
// print D_8 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_D_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_8 = 0*8;
  if (__xlx_apatb_param_D_8) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_8)[j];
aesl_fh.write(AUTOTB_TVOUT_D_8, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_8_depth);
aesl_fh.write(AUTOTB_TVOUT_D_8, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_D_9, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_9 = 0*8;
  if (__xlx_apatb_param_D_9) {
tr.import<8>((char*)__xlx_apatb_param_D_9, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_D_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_9_depth);
#else
// print D_9 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_D_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_9 = 0*8;
  if (__xlx_apatb_param_D_9) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_9)[j];
aesl_fh.write(AUTOTB_TVOUT_D_9, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_9_depth);
aesl_fh.write(AUTOTB_TVOUT_D_9, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_D_10, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_10 = 0*8;
  if (__xlx_apatb_param_D_10) {
tr.import<8>((char*)__xlx_apatb_param_D_10, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_D_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_10_depth);
#else
// print D_10 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_D_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_10 = 0*8;
  if (__xlx_apatb_param_D_10) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_10)[j];
aesl_fh.write(AUTOTB_TVOUT_D_10, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_10_depth);
aesl_fh.write(AUTOTB_TVOUT_D_10, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_D_11, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_11 = 0*8;
  if (__xlx_apatb_param_D_11) {
tr.import<8>((char*)__xlx_apatb_param_D_11, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_D_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_11_depth);
#else
// print D_11 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_D_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_11 = 0*8;
  if (__xlx_apatb_param_D_11) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_11)[j];
aesl_fh.write(AUTOTB_TVOUT_D_11, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_11_depth);
aesl_fh.write(AUTOTB_TVOUT_D_11, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_D_12, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_12 = 0*8;
  if (__xlx_apatb_param_D_12) {
tr.import<8>((char*)__xlx_apatb_param_D_12, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_D_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_12_depth);
#else
// print D_12 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_D_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_12 = 0*8;
  if (__xlx_apatb_param_D_12) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_12)[j];
aesl_fh.write(AUTOTB_TVOUT_D_12, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_12_depth);
aesl_fh.write(AUTOTB_TVOUT_D_12, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_D_13, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_13 = 0*8;
  if (__xlx_apatb_param_D_13) {
tr.import<8>((char*)__xlx_apatb_param_D_13, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_D_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_13_depth);
#else
// print D_13 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_D_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_13 = 0*8;
  if (__xlx_apatb_param_D_13) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_13)[j];
aesl_fh.write(AUTOTB_TVOUT_D_13, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_13_depth);
aesl_fh.write(AUTOTB_TVOUT_D_13, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_D_14, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_14 = 0*8;
  if (__xlx_apatb_param_D_14) {
tr.import<8>((char*)__xlx_apatb_param_D_14, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_D_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_14_depth);
#else
// print D_14 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_D_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_14 = 0*8;
  if (__xlx_apatb_param_D_14) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_14)[j];
aesl_fh.write(AUTOTB_TVOUT_D_14, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_14_depth);
aesl_fh.write(AUTOTB_TVOUT_D_14, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_D_15, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_D_15 = 0*8;
  if (__xlx_apatb_param_D_15) {
tr.import<8>((char*)__xlx_apatb_param_D_15, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_D_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.D_15_depth);
#else
// print D_15 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_D_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_15 = 0*8;
  if (__xlx_apatb_param_D_15) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_15)[j];
aesl_fh.write(AUTOTB_TVOUT_D_15, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.D_15_depth);
aesl_fh.write(AUTOTB_TVOUT_D_15, end_str());
}

#endif
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
