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
#define AUTOTB_TVIN_r_0 "../tv/cdatafile/c.kp_502_15.autotvin_r_0.dat"
#define AUTOTB_TVOUT_r_0 "../tv/cdatafile/c.kp_502_15.autotvout_r_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_1 "../tv/cdatafile/c.kp_502_15.autotvin_r_1.dat"
#define AUTOTB_TVOUT_r_1 "../tv/cdatafile/c.kp_502_15.autotvout_r_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_2 "../tv/cdatafile/c.kp_502_15.autotvin_r_2.dat"
#define AUTOTB_TVOUT_r_2 "../tv/cdatafile/c.kp_502_15.autotvout_r_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_3 "../tv/cdatafile/c.kp_502_15.autotvin_r_3.dat"
#define AUTOTB_TVOUT_r_3 "../tv/cdatafile/c.kp_502_15.autotvout_r_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_4 "../tv/cdatafile/c.kp_502_15.autotvin_r_4.dat"
#define AUTOTB_TVOUT_r_4 "../tv/cdatafile/c.kp_502_15.autotvout_r_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_5 "../tv/cdatafile/c.kp_502_15.autotvin_r_5.dat"
#define AUTOTB_TVOUT_r_5 "../tv/cdatafile/c.kp_502_15.autotvout_r_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_6 "../tv/cdatafile/c.kp_502_15.autotvin_r_6.dat"
#define AUTOTB_TVOUT_r_6 "../tv/cdatafile/c.kp_502_15.autotvout_r_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_7 "../tv/cdatafile/c.kp_502_15.autotvin_r_7.dat"
#define AUTOTB_TVOUT_r_7 "../tv/cdatafile/c.kp_502_15.autotvout_r_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_8 "../tv/cdatafile/c.kp_502_15.autotvin_r_8.dat"
#define AUTOTB_TVOUT_r_8 "../tv/cdatafile/c.kp_502_15.autotvout_r_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_9 "../tv/cdatafile/c.kp_502_15.autotvin_r_9.dat"
#define AUTOTB_TVOUT_r_9 "../tv/cdatafile/c.kp_502_15.autotvout_r_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_10 "../tv/cdatafile/c.kp_502_15.autotvin_r_10.dat"
#define AUTOTB_TVOUT_r_10 "../tv/cdatafile/c.kp_502_15.autotvout_r_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_11 "../tv/cdatafile/c.kp_502_15.autotvin_r_11.dat"
#define AUTOTB_TVOUT_r_11 "../tv/cdatafile/c.kp_502_15.autotvout_r_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_12 "../tv/cdatafile/c.kp_502_15.autotvin_r_12.dat"
#define AUTOTB_TVOUT_r_12 "../tv/cdatafile/c.kp_502_15.autotvout_r_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_13 "../tv/cdatafile/c.kp_502_15.autotvin_r_13.dat"
#define AUTOTB_TVOUT_r_13 "../tv/cdatafile/c.kp_502_15.autotvout_r_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_14 "../tv/cdatafile/c.kp_502_15.autotvin_r_14.dat"
#define AUTOTB_TVOUT_r_14 "../tv/cdatafile/c.kp_502_15.autotvout_r_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_15 "../tv/cdatafile/c.kp_502_15.autotvin_r_15.dat"
#define AUTOTB_TVOUT_r_15 "../tv/cdatafile/c.kp_502_15.autotvout_r_15.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_0 "../tv/cdatafile/c.kp_502_15.autotvin_a_0.dat"
#define AUTOTB_TVOUT_a_0 "../tv/cdatafile/c.kp_502_15.autotvout_a_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_1 "../tv/cdatafile/c.kp_502_15.autotvin_a_1.dat"
#define AUTOTB_TVOUT_a_1 "../tv/cdatafile/c.kp_502_15.autotvout_a_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_2 "../tv/cdatafile/c.kp_502_15.autotvin_a_2.dat"
#define AUTOTB_TVOUT_a_2 "../tv/cdatafile/c.kp_502_15.autotvout_a_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_3 "../tv/cdatafile/c.kp_502_15.autotvin_a_3.dat"
#define AUTOTB_TVOUT_a_3 "../tv/cdatafile/c.kp_502_15.autotvout_a_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_4 "../tv/cdatafile/c.kp_502_15.autotvin_a_4.dat"
#define AUTOTB_TVOUT_a_4 "../tv/cdatafile/c.kp_502_15.autotvout_a_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_5 "../tv/cdatafile/c.kp_502_15.autotvin_a_5.dat"
#define AUTOTB_TVOUT_a_5 "../tv/cdatafile/c.kp_502_15.autotvout_a_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_6 "../tv/cdatafile/c.kp_502_15.autotvin_a_6.dat"
#define AUTOTB_TVOUT_a_6 "../tv/cdatafile/c.kp_502_15.autotvout_a_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_7 "../tv/cdatafile/c.kp_502_15.autotvin_a_7.dat"
#define AUTOTB_TVOUT_a_7 "../tv/cdatafile/c.kp_502_15.autotvout_a_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_8 "../tv/cdatafile/c.kp_502_15.autotvin_a_8.dat"
#define AUTOTB_TVOUT_a_8 "../tv/cdatafile/c.kp_502_15.autotvout_a_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_9 "../tv/cdatafile/c.kp_502_15.autotvin_a_9.dat"
#define AUTOTB_TVOUT_a_9 "../tv/cdatafile/c.kp_502_15.autotvout_a_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_10 "../tv/cdatafile/c.kp_502_15.autotvin_a_10.dat"
#define AUTOTB_TVOUT_a_10 "../tv/cdatafile/c.kp_502_15.autotvout_a_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_11 "../tv/cdatafile/c.kp_502_15.autotvin_a_11.dat"
#define AUTOTB_TVOUT_a_11 "../tv/cdatafile/c.kp_502_15.autotvout_a_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_12 "../tv/cdatafile/c.kp_502_15.autotvin_a_12.dat"
#define AUTOTB_TVOUT_a_12 "../tv/cdatafile/c.kp_502_15.autotvout_a_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_13 "../tv/cdatafile/c.kp_502_15.autotvin_a_13.dat"
#define AUTOTB_TVOUT_a_13 "../tv/cdatafile/c.kp_502_15.autotvout_a_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_14 "../tv/cdatafile/c.kp_502_15.autotvin_a_14.dat"
#define AUTOTB_TVOUT_a_14 "../tv/cdatafile/c.kp_502_15.autotvout_a_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_15 "../tv/cdatafile/c.kp_502_15.autotvin_a_15.dat"
#define AUTOTB_TVOUT_a_15 "../tv/cdatafile/c.kp_502_15.autotvout_a_15.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_0 "../tv/cdatafile/c.kp_502_15.autotvin_b_0.dat"
#define AUTOTB_TVOUT_b_0 "../tv/cdatafile/c.kp_502_15.autotvout_b_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_1 "../tv/cdatafile/c.kp_502_15.autotvin_b_1.dat"
#define AUTOTB_TVOUT_b_1 "../tv/cdatafile/c.kp_502_15.autotvout_b_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_2 "../tv/cdatafile/c.kp_502_15.autotvin_b_2.dat"
#define AUTOTB_TVOUT_b_2 "../tv/cdatafile/c.kp_502_15.autotvout_b_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_3 "../tv/cdatafile/c.kp_502_15.autotvin_b_3.dat"
#define AUTOTB_TVOUT_b_3 "../tv/cdatafile/c.kp_502_15.autotvout_b_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_4 "../tv/cdatafile/c.kp_502_15.autotvin_b_4.dat"
#define AUTOTB_TVOUT_b_4 "../tv/cdatafile/c.kp_502_15.autotvout_b_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_5 "../tv/cdatafile/c.kp_502_15.autotvin_b_5.dat"
#define AUTOTB_TVOUT_b_5 "../tv/cdatafile/c.kp_502_15.autotvout_b_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_6 "../tv/cdatafile/c.kp_502_15.autotvin_b_6.dat"
#define AUTOTB_TVOUT_b_6 "../tv/cdatafile/c.kp_502_15.autotvout_b_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_7 "../tv/cdatafile/c.kp_502_15.autotvin_b_7.dat"
#define AUTOTB_TVOUT_b_7 "../tv/cdatafile/c.kp_502_15.autotvout_b_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_8 "../tv/cdatafile/c.kp_502_15.autotvin_b_8.dat"
#define AUTOTB_TVOUT_b_8 "../tv/cdatafile/c.kp_502_15.autotvout_b_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_9 "../tv/cdatafile/c.kp_502_15.autotvin_b_9.dat"
#define AUTOTB_TVOUT_b_9 "../tv/cdatafile/c.kp_502_15.autotvout_b_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_10 "../tv/cdatafile/c.kp_502_15.autotvin_b_10.dat"
#define AUTOTB_TVOUT_b_10 "../tv/cdatafile/c.kp_502_15.autotvout_b_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_11 "../tv/cdatafile/c.kp_502_15.autotvin_b_11.dat"
#define AUTOTB_TVOUT_b_11 "../tv/cdatafile/c.kp_502_15.autotvout_b_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_12 "../tv/cdatafile/c.kp_502_15.autotvin_b_12.dat"
#define AUTOTB_TVOUT_b_12 "../tv/cdatafile/c.kp_502_15.autotvout_b_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_13 "../tv/cdatafile/c.kp_502_15.autotvin_b_13.dat"
#define AUTOTB_TVOUT_b_13 "../tv/cdatafile/c.kp_502_15.autotvout_b_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_14 "../tv/cdatafile/c.kp_502_15.autotvin_b_14.dat"
#define AUTOTB_TVOUT_b_14 "../tv/cdatafile/c.kp_502_15.autotvout_b_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_15 "../tv/cdatafile/c.kp_502_15.autotvin_b_15.dat"
#define AUTOTB_TVOUT_b_15 "../tv/cdatafile/c.kp_502_15.autotvout_b_15.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_0 "../tv/cdatafile/c.kp_502_15.autotvin_c_0.dat"
#define AUTOTB_TVOUT_c_0 "../tv/cdatafile/c.kp_502_15.autotvout_c_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_1 "../tv/cdatafile/c.kp_502_15.autotvin_c_1.dat"
#define AUTOTB_TVOUT_c_1 "../tv/cdatafile/c.kp_502_15.autotvout_c_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_2 "../tv/cdatafile/c.kp_502_15.autotvin_c_2.dat"
#define AUTOTB_TVOUT_c_2 "../tv/cdatafile/c.kp_502_15.autotvout_c_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_3 "../tv/cdatafile/c.kp_502_15.autotvin_c_3.dat"
#define AUTOTB_TVOUT_c_3 "../tv/cdatafile/c.kp_502_15.autotvout_c_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_4 "../tv/cdatafile/c.kp_502_15.autotvin_c_4.dat"
#define AUTOTB_TVOUT_c_4 "../tv/cdatafile/c.kp_502_15.autotvout_c_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_5 "../tv/cdatafile/c.kp_502_15.autotvin_c_5.dat"
#define AUTOTB_TVOUT_c_5 "../tv/cdatafile/c.kp_502_15.autotvout_c_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_6 "../tv/cdatafile/c.kp_502_15.autotvin_c_6.dat"
#define AUTOTB_TVOUT_c_6 "../tv/cdatafile/c.kp_502_15.autotvout_c_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_7 "../tv/cdatafile/c.kp_502_15.autotvin_c_7.dat"
#define AUTOTB_TVOUT_c_7 "../tv/cdatafile/c.kp_502_15.autotvout_c_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_8 "../tv/cdatafile/c.kp_502_15.autotvin_c_8.dat"
#define AUTOTB_TVOUT_c_8 "../tv/cdatafile/c.kp_502_15.autotvout_c_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_9 "../tv/cdatafile/c.kp_502_15.autotvin_c_9.dat"
#define AUTOTB_TVOUT_c_9 "../tv/cdatafile/c.kp_502_15.autotvout_c_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_10 "../tv/cdatafile/c.kp_502_15.autotvin_c_10.dat"
#define AUTOTB_TVOUT_c_10 "../tv/cdatafile/c.kp_502_15.autotvout_c_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_11 "../tv/cdatafile/c.kp_502_15.autotvin_c_11.dat"
#define AUTOTB_TVOUT_c_11 "../tv/cdatafile/c.kp_502_15.autotvout_c_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_12 "../tv/cdatafile/c.kp_502_15.autotvin_c_12.dat"
#define AUTOTB_TVOUT_c_12 "../tv/cdatafile/c.kp_502_15.autotvout_c_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_13 "../tv/cdatafile/c.kp_502_15.autotvin_c_13.dat"
#define AUTOTB_TVOUT_c_13 "../tv/cdatafile/c.kp_502_15.autotvout_c_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_14 "../tv/cdatafile/c.kp_502_15.autotvin_c_14.dat"
#define AUTOTB_TVOUT_c_14 "../tv/cdatafile/c.kp_502_15.autotvout_c_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_15 "../tv/cdatafile/c.kp_502_15.autotvin_c_15.dat"
#define AUTOTB_TVOUT_c_15 "../tv/cdatafile/c.kp_502_15.autotvout_c_15.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_0 "../tv/cdatafile/c.kp_502_15.autotvin_x_0.dat"
#define AUTOTB_TVOUT_x_0 "../tv/cdatafile/c.kp_502_15.autotvout_x_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_1 "../tv/cdatafile/c.kp_502_15.autotvin_x_1.dat"
#define AUTOTB_TVOUT_x_1 "../tv/cdatafile/c.kp_502_15.autotvout_x_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_2 "../tv/cdatafile/c.kp_502_15.autotvin_x_2.dat"
#define AUTOTB_TVOUT_x_2 "../tv/cdatafile/c.kp_502_15.autotvout_x_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_3 "../tv/cdatafile/c.kp_502_15.autotvin_x_3.dat"
#define AUTOTB_TVOUT_x_3 "../tv/cdatafile/c.kp_502_15.autotvout_x_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_4 "../tv/cdatafile/c.kp_502_15.autotvin_x_4.dat"
#define AUTOTB_TVOUT_x_4 "../tv/cdatafile/c.kp_502_15.autotvout_x_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_5 "../tv/cdatafile/c.kp_502_15.autotvin_x_5.dat"
#define AUTOTB_TVOUT_x_5 "../tv/cdatafile/c.kp_502_15.autotvout_x_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_6 "../tv/cdatafile/c.kp_502_15.autotvin_x_6.dat"
#define AUTOTB_TVOUT_x_6 "../tv/cdatafile/c.kp_502_15.autotvout_x_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_7 "../tv/cdatafile/c.kp_502_15.autotvin_x_7.dat"
#define AUTOTB_TVOUT_x_7 "../tv/cdatafile/c.kp_502_15.autotvout_x_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_8 "../tv/cdatafile/c.kp_502_15.autotvin_x_8.dat"
#define AUTOTB_TVOUT_x_8 "../tv/cdatafile/c.kp_502_15.autotvout_x_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_9 "../tv/cdatafile/c.kp_502_15.autotvin_x_9.dat"
#define AUTOTB_TVOUT_x_9 "../tv/cdatafile/c.kp_502_15.autotvout_x_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_10 "../tv/cdatafile/c.kp_502_15.autotvin_x_10.dat"
#define AUTOTB_TVOUT_x_10 "../tv/cdatafile/c.kp_502_15.autotvout_x_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_11 "../tv/cdatafile/c.kp_502_15.autotvin_x_11.dat"
#define AUTOTB_TVOUT_x_11 "../tv/cdatafile/c.kp_502_15.autotvout_x_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_12 "../tv/cdatafile/c.kp_502_15.autotvin_x_12.dat"
#define AUTOTB_TVOUT_x_12 "../tv/cdatafile/c.kp_502_15.autotvout_x_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_13 "../tv/cdatafile/c.kp_502_15.autotvin_x_13.dat"
#define AUTOTB_TVOUT_x_13 "../tv/cdatafile/c.kp_502_15.autotvout_x_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_14 "../tv/cdatafile/c.kp_502_15.autotvin_x_14.dat"
#define AUTOTB_TVOUT_x_14 "../tv/cdatafile/c.kp_502_15.autotvout_x_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_15 "../tv/cdatafile/c.kp_502_15.autotvin_x_15.dat"
#define AUTOTB_TVOUT_x_15 "../tv/cdatafile/c.kp_502_15.autotvout_x_15.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_r_0 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_1 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_2 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_3 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_4 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_5 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_6 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_7 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_8 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_9 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_10 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_11 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_12 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_13 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_14 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_15 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_15.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_0 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_1 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_2 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_3 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_4 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_5 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_6 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_7 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_8 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_9 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_10 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_11 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_12 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_13 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_14 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_15 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_15.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_0 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_1 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_2 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_3 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_4 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_5 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_6 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_7 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_8 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_9 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_10 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_11 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_12 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_13 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_14 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_15 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_15.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_0 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_1 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_2 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_3 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_4 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_5 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_6 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_7 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_8 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_9 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_10 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_11 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_12 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_13 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_14 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_15 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_15.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_0 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_1 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_2 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_3 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_4 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_5 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_6 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_7 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_8 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_9 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_10 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_11 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_12 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_13 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_14 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_15 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_15.dat"


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
  r_0_depth = 0;
  r_1_depth = 0;
  r_2_depth = 0;
  r_3_depth = 0;
  r_4_depth = 0;
  r_5_depth = 0;
  r_6_depth = 0;
  r_7_depth = 0;
  r_8_depth = 0;
  r_9_depth = 0;
  r_10_depth = 0;
  r_11_depth = 0;
  r_12_depth = 0;
  r_13_depth = 0;
  r_14_depth = 0;
  r_15_depth = 0;
  a_0_depth = 0;
  a_1_depth = 0;
  a_2_depth = 0;
  a_3_depth = 0;
  a_4_depth = 0;
  a_5_depth = 0;
  a_6_depth = 0;
  a_7_depth = 0;
  a_8_depth = 0;
  a_9_depth = 0;
  a_10_depth = 0;
  a_11_depth = 0;
  a_12_depth = 0;
  a_13_depth = 0;
  a_14_depth = 0;
  a_15_depth = 0;
  b_0_depth = 0;
  b_1_depth = 0;
  b_2_depth = 0;
  b_3_depth = 0;
  b_4_depth = 0;
  b_5_depth = 0;
  b_6_depth = 0;
  b_7_depth = 0;
  b_8_depth = 0;
  b_9_depth = 0;
  b_10_depth = 0;
  b_11_depth = 0;
  b_12_depth = 0;
  b_13_depth = 0;
  b_14_depth = 0;
  b_15_depth = 0;
  c_0_depth = 0;
  c_1_depth = 0;
  c_2_depth = 0;
  c_3_depth = 0;
  c_4_depth = 0;
  c_5_depth = 0;
  c_6_depth = 0;
  c_7_depth = 0;
  c_8_depth = 0;
  c_9_depth = 0;
  c_10_depth = 0;
  c_11_depth = 0;
  c_12_depth = 0;
  c_13_depth = 0;
  c_14_depth = 0;
  c_15_depth = 0;
  x_0_depth = 0;
  x_1_depth = 0;
  x_2_depth = 0;
  x_3_depth = 0;
  x_4_depth = 0;
  x_5_depth = 0;
  x_6_depth = 0;
  x_7_depth = 0;
  x_8_depth = 0;
  x_9_depth = 0;
  x_10_depth = 0;
  x_11_depth = 0;
  x_12_depth = 0;
  x_13_depth = 0;
  x_14_depth = 0;
  x_15_depth = 0;
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
  total_list << "{r_0 " << r_0_depth << "}\n";
  total_list << "{r_1 " << r_1_depth << "}\n";
  total_list << "{r_2 " << r_2_depth << "}\n";
  total_list << "{r_3 " << r_3_depth << "}\n";
  total_list << "{r_4 " << r_4_depth << "}\n";
  total_list << "{r_5 " << r_5_depth << "}\n";
  total_list << "{r_6 " << r_6_depth << "}\n";
  total_list << "{r_7 " << r_7_depth << "}\n";
  total_list << "{r_8 " << r_8_depth << "}\n";
  total_list << "{r_9 " << r_9_depth << "}\n";
  total_list << "{r_10 " << r_10_depth << "}\n";
  total_list << "{r_11 " << r_11_depth << "}\n";
  total_list << "{r_12 " << r_12_depth << "}\n";
  total_list << "{r_13 " << r_13_depth << "}\n";
  total_list << "{r_14 " << r_14_depth << "}\n";
  total_list << "{r_15 " << r_15_depth << "}\n";
  total_list << "{a_0 " << a_0_depth << "}\n";
  total_list << "{a_1 " << a_1_depth << "}\n";
  total_list << "{a_2 " << a_2_depth << "}\n";
  total_list << "{a_3 " << a_3_depth << "}\n";
  total_list << "{a_4 " << a_4_depth << "}\n";
  total_list << "{a_5 " << a_5_depth << "}\n";
  total_list << "{a_6 " << a_6_depth << "}\n";
  total_list << "{a_7 " << a_7_depth << "}\n";
  total_list << "{a_8 " << a_8_depth << "}\n";
  total_list << "{a_9 " << a_9_depth << "}\n";
  total_list << "{a_10 " << a_10_depth << "}\n";
  total_list << "{a_11 " << a_11_depth << "}\n";
  total_list << "{a_12 " << a_12_depth << "}\n";
  total_list << "{a_13 " << a_13_depth << "}\n";
  total_list << "{a_14 " << a_14_depth << "}\n";
  total_list << "{a_15 " << a_15_depth << "}\n";
  total_list << "{b_0 " << b_0_depth << "}\n";
  total_list << "{b_1 " << b_1_depth << "}\n";
  total_list << "{b_2 " << b_2_depth << "}\n";
  total_list << "{b_3 " << b_3_depth << "}\n";
  total_list << "{b_4 " << b_4_depth << "}\n";
  total_list << "{b_5 " << b_5_depth << "}\n";
  total_list << "{b_6 " << b_6_depth << "}\n";
  total_list << "{b_7 " << b_7_depth << "}\n";
  total_list << "{b_8 " << b_8_depth << "}\n";
  total_list << "{b_9 " << b_9_depth << "}\n";
  total_list << "{b_10 " << b_10_depth << "}\n";
  total_list << "{b_11 " << b_11_depth << "}\n";
  total_list << "{b_12 " << b_12_depth << "}\n";
  total_list << "{b_13 " << b_13_depth << "}\n";
  total_list << "{b_14 " << b_14_depth << "}\n";
  total_list << "{b_15 " << b_15_depth << "}\n";
  total_list << "{c_0 " << c_0_depth << "}\n";
  total_list << "{c_1 " << c_1_depth << "}\n";
  total_list << "{c_2 " << c_2_depth << "}\n";
  total_list << "{c_3 " << c_3_depth << "}\n";
  total_list << "{c_4 " << c_4_depth << "}\n";
  total_list << "{c_5 " << c_5_depth << "}\n";
  total_list << "{c_6 " << c_6_depth << "}\n";
  total_list << "{c_7 " << c_7_depth << "}\n";
  total_list << "{c_8 " << c_8_depth << "}\n";
  total_list << "{c_9 " << c_9_depth << "}\n";
  total_list << "{c_10 " << c_10_depth << "}\n";
  total_list << "{c_11 " << c_11_depth << "}\n";
  total_list << "{c_12 " << c_12_depth << "}\n";
  total_list << "{c_13 " << c_13_depth << "}\n";
  total_list << "{c_14 " << c_14_depth << "}\n";
  total_list << "{c_15 " << c_15_depth << "}\n";
  total_list << "{x_0 " << x_0_depth << "}\n";
  total_list << "{x_1 " << x_1_depth << "}\n";
  total_list << "{x_2 " << x_2_depth << "}\n";
  total_list << "{x_3 " << x_3_depth << "}\n";
  total_list << "{x_4 " << x_4_depth << "}\n";
  total_list << "{x_5 " << x_5_depth << "}\n";
  total_list << "{x_6 " << x_6_depth << "}\n";
  total_list << "{x_7 " << x_7_depth << "}\n";
  total_list << "{x_8 " << x_8_depth << "}\n";
  total_list << "{x_9 " << x_9_depth << "}\n";
  total_list << "{x_10 " << x_10_depth << "}\n";
  total_list << "{x_11 " << x_11_depth << "}\n";
  total_list << "{x_12 " << x_12_depth << "}\n";
  total_list << "{x_13 " << x_13_depth << "}\n";
  total_list << "{x_14 " << x_14_depth << "}\n";
  total_list << "{x_15 " << x_15_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int r_0_depth;
    int r_1_depth;
    int r_2_depth;
    int r_3_depth;
    int r_4_depth;
    int r_5_depth;
    int r_6_depth;
    int r_7_depth;
    int r_8_depth;
    int r_9_depth;
    int r_10_depth;
    int r_11_depth;
    int r_12_depth;
    int r_13_depth;
    int r_14_depth;
    int r_15_depth;
    int a_0_depth;
    int a_1_depth;
    int a_2_depth;
    int a_3_depth;
    int a_4_depth;
    int a_5_depth;
    int a_6_depth;
    int a_7_depth;
    int a_8_depth;
    int a_9_depth;
    int a_10_depth;
    int a_11_depth;
    int a_12_depth;
    int a_13_depth;
    int a_14_depth;
    int a_15_depth;
    int b_0_depth;
    int b_1_depth;
    int b_2_depth;
    int b_3_depth;
    int b_4_depth;
    int b_5_depth;
    int b_6_depth;
    int b_7_depth;
    int b_8_depth;
    int b_9_depth;
    int b_10_depth;
    int b_11_depth;
    int b_12_depth;
    int b_13_depth;
    int b_14_depth;
    int b_15_depth;
    int c_0_depth;
    int c_1_depth;
    int c_2_depth;
    int c_3_depth;
    int c_4_depth;
    int c_5_depth;
    int c_6_depth;
    int c_7_depth;
    int c_8_depth;
    int c_9_depth;
    int c_10_depth;
    int c_11_depth;
    int c_12_depth;
    int c_13_depth;
    int c_14_depth;
    int c_15_depth;
    int x_0_depth;
    int x_1_depth;
    int x_2_depth;
    int x_3_depth;
    int x_4_depth;
    int x_5_depth;
    int x_6_depth;
    int x_7_depth;
    int x_8_depth;
    int x_9_depth;
    int x_10_depth;
    int x_11_depth;
    int x_12_depth;
    int x_13_depth;
    int x_14_depth;
    int x_15_depth;
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
extern "C" void kp_502_15_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_kp_502_15_hw(volatile void * __xlx_apatb_param_r_0, volatile void * __xlx_apatb_param_r_1, volatile void * __xlx_apatb_param_r_2, volatile void * __xlx_apatb_param_r_3, volatile void * __xlx_apatb_param_r_4, volatile void * __xlx_apatb_param_r_5, volatile void * __xlx_apatb_param_r_6, volatile void * __xlx_apatb_param_r_7, volatile void * __xlx_apatb_param_r_8, volatile void * __xlx_apatb_param_r_9, volatile void * __xlx_apatb_param_r_10, volatile void * __xlx_apatb_param_r_11, volatile void * __xlx_apatb_param_r_12, volatile void * __xlx_apatb_param_r_13, volatile void * __xlx_apatb_param_r_14, volatile void * __xlx_apatb_param_r_15, volatile void * __xlx_apatb_param_a_0, volatile void * __xlx_apatb_param_a_1, volatile void * __xlx_apatb_param_a_2, volatile void * __xlx_apatb_param_a_3, volatile void * __xlx_apatb_param_a_4, volatile void * __xlx_apatb_param_a_5, volatile void * __xlx_apatb_param_a_6, volatile void * __xlx_apatb_param_a_7, volatile void * __xlx_apatb_param_a_8, volatile void * __xlx_apatb_param_a_9, volatile void * __xlx_apatb_param_a_10, volatile void * __xlx_apatb_param_a_11, volatile void * __xlx_apatb_param_a_12, volatile void * __xlx_apatb_param_a_13, volatile void * __xlx_apatb_param_a_14, volatile void * __xlx_apatb_param_a_15, volatile void * __xlx_apatb_param_b_0, volatile void * __xlx_apatb_param_b_1, volatile void * __xlx_apatb_param_b_2, volatile void * __xlx_apatb_param_b_3, volatile void * __xlx_apatb_param_b_4, volatile void * __xlx_apatb_param_b_5, volatile void * __xlx_apatb_param_b_6, volatile void * __xlx_apatb_param_b_7, volatile void * __xlx_apatb_param_b_8, volatile void * __xlx_apatb_param_b_9, volatile void * __xlx_apatb_param_b_10, volatile void * __xlx_apatb_param_b_11, volatile void * __xlx_apatb_param_b_12, volatile void * __xlx_apatb_param_b_13, volatile void * __xlx_apatb_param_b_14, volatile void * __xlx_apatb_param_b_15, volatile void * __xlx_apatb_param_c_0, volatile void * __xlx_apatb_param_c_1, volatile void * __xlx_apatb_param_c_2, volatile void * __xlx_apatb_param_c_3, volatile void * __xlx_apatb_param_c_4, volatile void * __xlx_apatb_param_c_5, volatile void * __xlx_apatb_param_c_6, volatile void * __xlx_apatb_param_c_7, volatile void * __xlx_apatb_param_c_8, volatile void * __xlx_apatb_param_c_9, volatile void * __xlx_apatb_param_c_10, volatile void * __xlx_apatb_param_c_11, volatile void * __xlx_apatb_param_c_12, volatile void * __xlx_apatb_param_c_13, volatile void * __xlx_apatb_param_c_14, volatile void * __xlx_apatb_param_c_15, volatile void * __xlx_apatb_param_x_0, volatile void * __xlx_apatb_param_x_1, volatile void * __xlx_apatb_param_x_2, volatile void * __xlx_apatb_param_x_3, volatile void * __xlx_apatb_param_x_4, volatile void * __xlx_apatb_param_x_5, volatile void * __xlx_apatb_param_x_6, volatile void * __xlx_apatb_param_x_7, volatile void * __xlx_apatb_param_x_8, volatile void * __xlx_apatb_param_x_9, volatile void * __xlx_apatb_param_x_10, volatile void * __xlx_apatb_param_x_11, volatile void * __xlx_apatb_param_x_12, volatile void * __xlx_apatb_param_x_13, volatile void * __xlx_apatb_param_x_14, volatile void * __xlx_apatb_param_x_15) {
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
aesl_fh.read(AUTOTB_TVOUT_PC_r_0, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_r_0, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_0);
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
          std::vector<sc_bv<64> > r_0_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_0_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_0)[j*8+0] = r_0_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_0)[j*8+1] = r_0_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_0)[j*8+2] = r_0_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_0)[j*8+3] = r_0_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_r_0)[j*8+4] = r_0_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_r_0)[j*8+5] = r_0_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_r_0)[j*8+6] = r_0_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_r_0)[j*8+7] = r_0_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_r_1, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_r_1, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_1);
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
          std::vector<sc_bv<64> > r_1_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_1)[j*8+0] = r_1_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_1)[j*8+1] = r_1_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_1)[j*8+2] = r_1_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_1)[j*8+3] = r_1_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_r_1)[j*8+4] = r_1_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_r_1)[j*8+5] = r_1_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_r_1)[j*8+6] = r_1_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_r_1)[j*8+7] = r_1_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_r_2, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_r_2, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_2);
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
          std::vector<sc_bv<64> > r_2_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_2" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_2)[j*8+0] = r_2_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_2)[j*8+1] = r_2_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_2)[j*8+2] = r_2_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_2)[j*8+3] = r_2_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_r_2)[j*8+4] = r_2_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_r_2)[j*8+5] = r_2_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_r_2)[j*8+6] = r_2_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_r_2)[j*8+7] = r_2_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_r_3, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_r_3, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_3);
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
          std::vector<sc_bv<64> > r_3_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_3");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_3_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_3" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_3)[j*8+0] = r_3_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_3)[j*8+1] = r_3_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_3)[j*8+2] = r_3_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_3)[j*8+3] = r_3_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_r_3)[j*8+4] = r_3_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_r_3)[j*8+5] = r_3_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_r_3)[j*8+6] = r_3_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_r_3)[j*8+7] = r_3_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_r_4, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_r_4, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_4);
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
          std::vector<sc_bv<64> > r_4_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_4");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_4_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_4" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_4)[j*8+0] = r_4_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_4)[j*8+1] = r_4_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_4)[j*8+2] = r_4_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_4)[j*8+3] = r_4_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_r_4)[j*8+4] = r_4_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_r_4)[j*8+5] = r_4_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_r_4)[j*8+6] = r_4_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_r_4)[j*8+7] = r_4_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_r_5, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_r_5, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_5);
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
          std::vector<sc_bv<64> > r_5_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_5");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_5_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_5" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_5)[j*8+0] = r_5_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_5)[j*8+1] = r_5_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_5)[j*8+2] = r_5_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_5)[j*8+3] = r_5_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_r_5)[j*8+4] = r_5_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_r_5)[j*8+5] = r_5_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_r_5)[j*8+6] = r_5_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_r_5)[j*8+7] = r_5_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_r_6, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_r_6, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_6);
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
          std::vector<sc_bv<64> > r_6_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_6");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_6_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_6" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_6)[j*8+0] = r_6_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_6)[j*8+1] = r_6_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_6)[j*8+2] = r_6_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_6)[j*8+3] = r_6_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_r_6)[j*8+4] = r_6_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_r_6)[j*8+5] = r_6_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_r_6)[j*8+6] = r_6_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_r_6)[j*8+7] = r_6_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_r_7, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_r_7, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_7);
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
          std::vector<sc_bv<64> > r_7_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_7");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_7_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_7" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_7)[j*8+0] = r_7_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_7)[j*8+1] = r_7_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_7)[j*8+2] = r_7_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_7)[j*8+3] = r_7_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_r_7)[j*8+4] = r_7_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_r_7)[j*8+5] = r_7_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_r_7)[j*8+6] = r_7_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_r_7)[j*8+7] = r_7_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_r_8, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_r_8, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_8);
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
          std::vector<sc_bv<64> > r_8_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_8");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_8_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_8" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_8)[j*8+0] = r_8_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_8)[j*8+1] = r_8_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_8)[j*8+2] = r_8_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_8)[j*8+3] = r_8_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_r_8)[j*8+4] = r_8_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_r_8)[j*8+5] = r_8_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_r_8)[j*8+6] = r_8_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_r_8)[j*8+7] = r_8_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_r_9, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_r_9, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_9);
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
          std::vector<sc_bv<64> > r_9_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_9");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_9_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_9" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_9)[j*8+0] = r_9_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_9)[j*8+1] = r_9_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_9)[j*8+2] = r_9_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_9)[j*8+3] = r_9_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_r_9)[j*8+4] = r_9_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_r_9)[j*8+5] = r_9_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_r_9)[j*8+6] = r_9_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_r_9)[j*8+7] = r_9_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_r_10, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_r_10, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_10);
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
          std::vector<sc_bv<64> > r_10_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_10");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_10_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_10" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_10)[j*8+0] = r_10_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_10)[j*8+1] = r_10_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_10)[j*8+2] = r_10_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_10)[j*8+3] = r_10_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_r_10)[j*8+4] = r_10_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_r_10)[j*8+5] = r_10_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_r_10)[j*8+6] = r_10_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_r_10)[j*8+7] = r_10_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_r_11, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_r_11, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_11);
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
          std::vector<sc_bv<64> > r_11_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_11");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_11_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_11" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_11)[j*8+0] = r_11_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_11)[j*8+1] = r_11_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_11)[j*8+2] = r_11_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_11)[j*8+3] = r_11_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_r_11)[j*8+4] = r_11_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_r_11)[j*8+5] = r_11_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_r_11)[j*8+6] = r_11_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_r_11)[j*8+7] = r_11_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_r_12, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_r_12, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_12);
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
          std::vector<sc_bv<64> > r_12_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_12");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_12_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_12" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_12)[j*8+0] = r_12_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_12)[j*8+1] = r_12_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_12)[j*8+2] = r_12_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_12)[j*8+3] = r_12_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_r_12)[j*8+4] = r_12_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_r_12)[j*8+5] = r_12_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_r_12)[j*8+6] = r_12_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_r_12)[j*8+7] = r_12_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_r_13, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_r_13, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_13);
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
          std::vector<sc_bv<64> > r_13_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_13");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_13_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_13" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_13)[j*8+0] = r_13_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_13)[j*8+1] = r_13_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_13)[j*8+2] = r_13_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_13)[j*8+3] = r_13_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_r_13)[j*8+4] = r_13_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_r_13)[j*8+5] = r_13_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_r_13)[j*8+6] = r_13_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_r_13)[j*8+7] = r_13_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_r_14, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_r_14, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_14);
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
          std::vector<sc_bv<64> > r_14_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_14");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_14_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_14" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_14)[j*8+0] = r_14_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_14)[j*8+1] = r_14_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_14)[j*8+2] = r_14_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_14)[j*8+3] = r_14_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_r_14)[j*8+4] = r_14_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_r_14)[j*8+5] = r_14_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_r_14)[j*8+6] = r_14_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_r_14)[j*8+7] = r_14_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_r_15, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_r_15, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_15);
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
          std::vector<sc_bv<64> > r_15_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_15");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_15_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_15" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_15)[j*8+0] = r_15_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_15)[j*8+1] = r_15_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_15)[j*8+2] = r_15_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_15)[j*8+3] = r_15_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_r_15)[j*8+4] = r_15_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_r_15)[j*8+5] = r_15_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_r_15)[j*8+6] = r_15_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_r_15)[j*8+7] = r_15_pc_buffer[i].range(63, 56).to_int64();
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
unsigned __xlx_offset_byte_param_r_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_0, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_0 = 0*8;
  if (__xlx_apatb_param_r_0) {
tr.import<8>((char*)__xlx_apatb_param_r_0, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_0_depth);
#else
// print r_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_0 = 0*8;
  if (__xlx_apatb_param_r_0) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_0)[j];
aesl_fh.write(AUTOTB_TVIN_r_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_0_depth);
aesl_fh.write(AUTOTB_TVIN_r_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_r_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_1, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_1 = 0*8;
  if (__xlx_apatb_param_r_1) {
tr.import<8>((char*)__xlx_apatb_param_r_1, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_1_depth);
#else
// print r_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_1 = 0*8;
  if (__xlx_apatb_param_r_1) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_1)[j];
aesl_fh.write(AUTOTB_TVIN_r_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_1_depth);
aesl_fh.write(AUTOTB_TVIN_r_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_r_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_2, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_2 = 0*8;
  if (__xlx_apatb_param_r_2) {
tr.import<8>((char*)__xlx_apatb_param_r_2, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_2_depth);
#else
// print r_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_2 = 0*8;
  if (__xlx_apatb_param_r_2) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_2)[j];
aesl_fh.write(AUTOTB_TVIN_r_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_2_depth);
aesl_fh.write(AUTOTB_TVIN_r_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_r_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_3, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_3 = 0*8;
  if (__xlx_apatb_param_r_3) {
tr.import<8>((char*)__xlx_apatb_param_r_3, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_3_depth);
#else
// print r_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_3 = 0*8;
  if (__xlx_apatb_param_r_3) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_3)[j];
aesl_fh.write(AUTOTB_TVIN_r_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_3_depth);
aesl_fh.write(AUTOTB_TVIN_r_3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_r_4 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_4, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_4 = 0*8;
  if (__xlx_apatb_param_r_4) {
tr.import<8>((char*)__xlx_apatb_param_r_4, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_4_depth);
#else
// print r_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_4 = 0*8;
  if (__xlx_apatb_param_r_4) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_4)[j];
aesl_fh.write(AUTOTB_TVIN_r_4, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_4_depth);
aesl_fh.write(AUTOTB_TVIN_r_4, end_str());
}

#endif
unsigned __xlx_offset_byte_param_r_5 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_5, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_5 = 0*8;
  if (__xlx_apatb_param_r_5) {
tr.import<8>((char*)__xlx_apatb_param_r_5, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_5_depth);
#else
// print r_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_5 = 0*8;
  if (__xlx_apatb_param_r_5) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_5)[j];
aesl_fh.write(AUTOTB_TVIN_r_5, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_5_depth);
aesl_fh.write(AUTOTB_TVIN_r_5, end_str());
}

#endif
unsigned __xlx_offset_byte_param_r_6 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_6, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_6 = 0*8;
  if (__xlx_apatb_param_r_6) {
tr.import<8>((char*)__xlx_apatb_param_r_6, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_6_depth);
#else
// print r_6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_6 = 0*8;
  if (__xlx_apatb_param_r_6) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_6)[j];
aesl_fh.write(AUTOTB_TVIN_r_6, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_6_depth);
aesl_fh.write(AUTOTB_TVIN_r_6, end_str());
}

#endif
unsigned __xlx_offset_byte_param_r_7 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_7, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_7 = 0*8;
  if (__xlx_apatb_param_r_7) {
tr.import<8>((char*)__xlx_apatb_param_r_7, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_7_depth);
#else
// print r_7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_7 = 0*8;
  if (__xlx_apatb_param_r_7) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_7)[j];
aesl_fh.write(AUTOTB_TVIN_r_7, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_7_depth);
aesl_fh.write(AUTOTB_TVIN_r_7, end_str());
}

#endif
unsigned __xlx_offset_byte_param_r_8 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_8, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_8 = 0*8;
  if (__xlx_apatb_param_r_8) {
tr.import<8>((char*)__xlx_apatb_param_r_8, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_8_depth);
#else
// print r_8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_8 = 0*8;
  if (__xlx_apatb_param_r_8) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_8)[j];
aesl_fh.write(AUTOTB_TVIN_r_8, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_8_depth);
aesl_fh.write(AUTOTB_TVIN_r_8, end_str());
}

#endif
unsigned __xlx_offset_byte_param_r_9 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_9, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_9 = 0*8;
  if (__xlx_apatb_param_r_9) {
tr.import<8>((char*)__xlx_apatb_param_r_9, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_9_depth);
#else
// print r_9 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_9 = 0*8;
  if (__xlx_apatb_param_r_9) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_9)[j];
aesl_fh.write(AUTOTB_TVIN_r_9, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_9_depth);
aesl_fh.write(AUTOTB_TVIN_r_9, end_str());
}

#endif
unsigned __xlx_offset_byte_param_r_10 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_10, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_10 = 0*8;
  if (__xlx_apatb_param_r_10) {
tr.import<8>((char*)__xlx_apatb_param_r_10, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_10_depth);
#else
// print r_10 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_10 = 0*8;
  if (__xlx_apatb_param_r_10) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_10)[j];
aesl_fh.write(AUTOTB_TVIN_r_10, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_10_depth);
aesl_fh.write(AUTOTB_TVIN_r_10, end_str());
}

#endif
unsigned __xlx_offset_byte_param_r_11 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_11, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_11 = 0*8;
  if (__xlx_apatb_param_r_11) {
tr.import<8>((char*)__xlx_apatb_param_r_11, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_11_depth);
#else
// print r_11 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_11 = 0*8;
  if (__xlx_apatb_param_r_11) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_11)[j];
aesl_fh.write(AUTOTB_TVIN_r_11, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_11_depth);
aesl_fh.write(AUTOTB_TVIN_r_11, end_str());
}

#endif
unsigned __xlx_offset_byte_param_r_12 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_12, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_12 = 0*8;
  if (__xlx_apatb_param_r_12) {
tr.import<8>((char*)__xlx_apatb_param_r_12, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_12_depth);
#else
// print r_12 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_12 = 0*8;
  if (__xlx_apatb_param_r_12) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_12)[j];
aesl_fh.write(AUTOTB_TVIN_r_12, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_12_depth);
aesl_fh.write(AUTOTB_TVIN_r_12, end_str());
}

#endif
unsigned __xlx_offset_byte_param_r_13 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_13, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_13 = 0*8;
  if (__xlx_apatb_param_r_13) {
tr.import<8>((char*)__xlx_apatb_param_r_13, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_13_depth);
#else
// print r_13 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_13 = 0*8;
  if (__xlx_apatb_param_r_13) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_13)[j];
aesl_fh.write(AUTOTB_TVIN_r_13, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_13_depth);
aesl_fh.write(AUTOTB_TVIN_r_13, end_str());
}

#endif
unsigned __xlx_offset_byte_param_r_14 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_14, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_14 = 0*8;
  if (__xlx_apatb_param_r_14) {
tr.import<8>((char*)__xlx_apatb_param_r_14, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_14_depth);
#else
// print r_14 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_14 = 0*8;
  if (__xlx_apatb_param_r_14) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_14)[j];
aesl_fh.write(AUTOTB_TVIN_r_14, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_14_depth);
aesl_fh.write(AUTOTB_TVIN_r_14, end_str());
}

#endif
unsigned __xlx_offset_byte_param_r_15 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_15, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_15 = 0*8;
  if (__xlx_apatb_param_r_15) {
tr.import<8>((char*)__xlx_apatb_param_r_15, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_15_depth);
#else
// print r_15 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_15 = 0*8;
  if (__xlx_apatb_param_r_15) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_15)[j];
aesl_fh.write(AUTOTB_TVIN_r_15, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_15_depth);
aesl_fh.write(AUTOTB_TVIN_r_15, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_0, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_a_0 = 0*8;
  if (__xlx_apatb_param_a_0) {
tr.import<8>((char*)__xlx_apatb_param_a_0, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.a_0_depth);
#else
// print a_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_0 = 0*8;
  if (__xlx_apatb_param_a_0) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_a_0)[j];
aesl_fh.write(AUTOTB_TVIN_a_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.a_0_depth);
aesl_fh.write(AUTOTB_TVIN_a_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_1, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_a_1 = 0*8;
  if (__xlx_apatb_param_a_1) {
tr.import<8>((char*)__xlx_apatb_param_a_1, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.a_1_depth);
#else
// print a_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_1 = 0*8;
  if (__xlx_apatb_param_a_1) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_a_1)[j];
aesl_fh.write(AUTOTB_TVIN_a_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.a_1_depth);
aesl_fh.write(AUTOTB_TVIN_a_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_2, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_a_2 = 0*8;
  if (__xlx_apatb_param_a_2) {
tr.import<8>((char*)__xlx_apatb_param_a_2, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.a_2_depth);
#else
// print a_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_2 = 0*8;
  if (__xlx_apatb_param_a_2) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_a_2)[j];
aesl_fh.write(AUTOTB_TVIN_a_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.a_2_depth);
aesl_fh.write(AUTOTB_TVIN_a_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_3, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_a_3 = 0*8;
  if (__xlx_apatb_param_a_3) {
tr.import<8>((char*)__xlx_apatb_param_a_3, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.a_3_depth);
#else
// print a_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_3 = 0*8;
  if (__xlx_apatb_param_a_3) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_a_3)[j];
aesl_fh.write(AUTOTB_TVIN_a_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.a_3_depth);
aesl_fh.write(AUTOTB_TVIN_a_3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_4 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_4, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_a_4 = 0*8;
  if (__xlx_apatb_param_a_4) {
tr.import<8>((char*)__xlx_apatb_param_a_4, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.a_4_depth);
#else
// print a_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_4 = 0*8;
  if (__xlx_apatb_param_a_4) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_a_4)[j];
aesl_fh.write(AUTOTB_TVIN_a_4, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.a_4_depth);
aesl_fh.write(AUTOTB_TVIN_a_4, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_5 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_5, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_a_5 = 0*8;
  if (__xlx_apatb_param_a_5) {
tr.import<8>((char*)__xlx_apatb_param_a_5, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.a_5_depth);
#else
// print a_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_5 = 0*8;
  if (__xlx_apatb_param_a_5) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_a_5)[j];
aesl_fh.write(AUTOTB_TVIN_a_5, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.a_5_depth);
aesl_fh.write(AUTOTB_TVIN_a_5, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_6 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_6, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_a_6 = 0*8;
  if (__xlx_apatb_param_a_6) {
tr.import<8>((char*)__xlx_apatb_param_a_6, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.a_6_depth);
#else
// print a_6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_6 = 0*8;
  if (__xlx_apatb_param_a_6) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_a_6)[j];
aesl_fh.write(AUTOTB_TVIN_a_6, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.a_6_depth);
aesl_fh.write(AUTOTB_TVIN_a_6, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_7 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_7, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_a_7 = 0*8;
  if (__xlx_apatb_param_a_7) {
tr.import<8>((char*)__xlx_apatb_param_a_7, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.a_7_depth);
#else
// print a_7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_7 = 0*8;
  if (__xlx_apatb_param_a_7) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_a_7)[j];
aesl_fh.write(AUTOTB_TVIN_a_7, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.a_7_depth);
aesl_fh.write(AUTOTB_TVIN_a_7, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_8 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_8, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_a_8 = 0*8;
  if (__xlx_apatb_param_a_8) {
tr.import<8>((char*)__xlx_apatb_param_a_8, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.a_8_depth);
#else
// print a_8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_8 = 0*8;
  if (__xlx_apatb_param_a_8) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_a_8)[j];
aesl_fh.write(AUTOTB_TVIN_a_8, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.a_8_depth);
aesl_fh.write(AUTOTB_TVIN_a_8, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_9 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_9, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_a_9 = 0*8;
  if (__xlx_apatb_param_a_9) {
tr.import<8>((char*)__xlx_apatb_param_a_9, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.a_9_depth);
#else
// print a_9 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_9 = 0*8;
  if (__xlx_apatb_param_a_9) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_a_9)[j];
aesl_fh.write(AUTOTB_TVIN_a_9, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.a_9_depth);
aesl_fh.write(AUTOTB_TVIN_a_9, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_10 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_10, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_a_10 = 0*8;
  if (__xlx_apatb_param_a_10) {
tr.import<8>((char*)__xlx_apatb_param_a_10, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.a_10_depth);
#else
// print a_10 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_10 = 0*8;
  if (__xlx_apatb_param_a_10) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_a_10)[j];
aesl_fh.write(AUTOTB_TVIN_a_10, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.a_10_depth);
aesl_fh.write(AUTOTB_TVIN_a_10, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_11 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_11, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_a_11 = 0*8;
  if (__xlx_apatb_param_a_11) {
tr.import<8>((char*)__xlx_apatb_param_a_11, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.a_11_depth);
#else
// print a_11 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_11 = 0*8;
  if (__xlx_apatb_param_a_11) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_a_11)[j];
aesl_fh.write(AUTOTB_TVIN_a_11, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.a_11_depth);
aesl_fh.write(AUTOTB_TVIN_a_11, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_12 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_12, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_a_12 = 0*8;
  if (__xlx_apatb_param_a_12) {
tr.import<8>((char*)__xlx_apatb_param_a_12, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.a_12_depth);
#else
// print a_12 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_12 = 0*8;
  if (__xlx_apatb_param_a_12) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_a_12)[j];
aesl_fh.write(AUTOTB_TVIN_a_12, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.a_12_depth);
aesl_fh.write(AUTOTB_TVIN_a_12, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_13 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_13, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_a_13 = 0*8;
  if (__xlx_apatb_param_a_13) {
tr.import<8>((char*)__xlx_apatb_param_a_13, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.a_13_depth);
#else
// print a_13 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_13 = 0*8;
  if (__xlx_apatb_param_a_13) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_a_13)[j];
aesl_fh.write(AUTOTB_TVIN_a_13, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.a_13_depth);
aesl_fh.write(AUTOTB_TVIN_a_13, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_14 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_14, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_a_14 = 0*8;
  if (__xlx_apatb_param_a_14) {
tr.import<8>((char*)__xlx_apatb_param_a_14, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.a_14_depth);
#else
// print a_14 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_14 = 0*8;
  if (__xlx_apatb_param_a_14) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_a_14)[j];
aesl_fh.write(AUTOTB_TVIN_a_14, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.a_14_depth);
aesl_fh.write(AUTOTB_TVIN_a_14, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_15 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_15, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_a_15 = 0*8;
  if (__xlx_apatb_param_a_15) {
tr.import<8>((char*)__xlx_apatb_param_a_15, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.a_15_depth);
#else
// print a_15 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_15 = 0*8;
  if (__xlx_apatb_param_a_15) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_a_15)[j];
aesl_fh.write(AUTOTB_TVIN_a_15, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.a_15_depth);
aesl_fh.write(AUTOTB_TVIN_a_15, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_0, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_b_0 = 0*8;
  if (__xlx_apatb_param_b_0) {
tr.import<8>((char*)__xlx_apatb_param_b_0, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.b_0_depth);
#else
// print b_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_0 = 0*8;
  if (__xlx_apatb_param_b_0) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_b_0)[j];
aesl_fh.write(AUTOTB_TVIN_b_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.b_0_depth);
aesl_fh.write(AUTOTB_TVIN_b_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_1, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_b_1 = 0*8;
  if (__xlx_apatb_param_b_1) {
tr.import<8>((char*)__xlx_apatb_param_b_1, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.b_1_depth);
#else
// print b_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_1 = 0*8;
  if (__xlx_apatb_param_b_1) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_b_1)[j];
aesl_fh.write(AUTOTB_TVIN_b_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.b_1_depth);
aesl_fh.write(AUTOTB_TVIN_b_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_2, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_b_2 = 0*8;
  if (__xlx_apatb_param_b_2) {
tr.import<8>((char*)__xlx_apatb_param_b_2, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.b_2_depth);
#else
// print b_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_2 = 0*8;
  if (__xlx_apatb_param_b_2) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_b_2)[j];
aesl_fh.write(AUTOTB_TVIN_b_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.b_2_depth);
aesl_fh.write(AUTOTB_TVIN_b_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_3, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_b_3 = 0*8;
  if (__xlx_apatb_param_b_3) {
tr.import<8>((char*)__xlx_apatb_param_b_3, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.b_3_depth);
#else
// print b_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_3 = 0*8;
  if (__xlx_apatb_param_b_3) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_b_3)[j];
aesl_fh.write(AUTOTB_TVIN_b_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.b_3_depth);
aesl_fh.write(AUTOTB_TVIN_b_3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_4 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_4, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_b_4 = 0*8;
  if (__xlx_apatb_param_b_4) {
tr.import<8>((char*)__xlx_apatb_param_b_4, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.b_4_depth);
#else
// print b_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_4 = 0*8;
  if (__xlx_apatb_param_b_4) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_b_4)[j];
aesl_fh.write(AUTOTB_TVIN_b_4, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.b_4_depth);
aesl_fh.write(AUTOTB_TVIN_b_4, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_5 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_5, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_b_5 = 0*8;
  if (__xlx_apatb_param_b_5) {
tr.import<8>((char*)__xlx_apatb_param_b_5, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.b_5_depth);
#else
// print b_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_5 = 0*8;
  if (__xlx_apatb_param_b_5) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_b_5)[j];
aesl_fh.write(AUTOTB_TVIN_b_5, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.b_5_depth);
aesl_fh.write(AUTOTB_TVIN_b_5, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_6 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_6, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_b_6 = 0*8;
  if (__xlx_apatb_param_b_6) {
tr.import<8>((char*)__xlx_apatb_param_b_6, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.b_6_depth);
#else
// print b_6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_6 = 0*8;
  if (__xlx_apatb_param_b_6) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_b_6)[j];
aesl_fh.write(AUTOTB_TVIN_b_6, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.b_6_depth);
aesl_fh.write(AUTOTB_TVIN_b_6, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_7 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_7, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_b_7 = 0*8;
  if (__xlx_apatb_param_b_7) {
tr.import<8>((char*)__xlx_apatb_param_b_7, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.b_7_depth);
#else
// print b_7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_7 = 0*8;
  if (__xlx_apatb_param_b_7) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_b_7)[j];
aesl_fh.write(AUTOTB_TVIN_b_7, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.b_7_depth);
aesl_fh.write(AUTOTB_TVIN_b_7, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_8 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_8, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_b_8 = 0*8;
  if (__xlx_apatb_param_b_8) {
tr.import<8>((char*)__xlx_apatb_param_b_8, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.b_8_depth);
#else
// print b_8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_8 = 0*8;
  if (__xlx_apatb_param_b_8) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_b_8)[j];
aesl_fh.write(AUTOTB_TVIN_b_8, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.b_8_depth);
aesl_fh.write(AUTOTB_TVIN_b_8, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_9 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_9, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_b_9 = 0*8;
  if (__xlx_apatb_param_b_9) {
tr.import<8>((char*)__xlx_apatb_param_b_9, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.b_9_depth);
#else
// print b_9 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_9 = 0*8;
  if (__xlx_apatb_param_b_9) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_b_9)[j];
aesl_fh.write(AUTOTB_TVIN_b_9, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.b_9_depth);
aesl_fh.write(AUTOTB_TVIN_b_9, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_10 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_10, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_b_10 = 0*8;
  if (__xlx_apatb_param_b_10) {
tr.import<8>((char*)__xlx_apatb_param_b_10, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.b_10_depth);
#else
// print b_10 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_10 = 0*8;
  if (__xlx_apatb_param_b_10) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_b_10)[j];
aesl_fh.write(AUTOTB_TVIN_b_10, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.b_10_depth);
aesl_fh.write(AUTOTB_TVIN_b_10, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_11 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_11, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_b_11 = 0*8;
  if (__xlx_apatb_param_b_11) {
tr.import<8>((char*)__xlx_apatb_param_b_11, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.b_11_depth);
#else
// print b_11 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_11 = 0*8;
  if (__xlx_apatb_param_b_11) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_b_11)[j];
aesl_fh.write(AUTOTB_TVIN_b_11, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.b_11_depth);
aesl_fh.write(AUTOTB_TVIN_b_11, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_12 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_12, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_b_12 = 0*8;
  if (__xlx_apatb_param_b_12) {
tr.import<8>((char*)__xlx_apatb_param_b_12, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.b_12_depth);
#else
// print b_12 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_12 = 0*8;
  if (__xlx_apatb_param_b_12) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_b_12)[j];
aesl_fh.write(AUTOTB_TVIN_b_12, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.b_12_depth);
aesl_fh.write(AUTOTB_TVIN_b_12, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_13 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_13, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_b_13 = 0*8;
  if (__xlx_apatb_param_b_13) {
tr.import<8>((char*)__xlx_apatb_param_b_13, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.b_13_depth);
#else
// print b_13 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_13 = 0*8;
  if (__xlx_apatb_param_b_13) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_b_13)[j];
aesl_fh.write(AUTOTB_TVIN_b_13, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.b_13_depth);
aesl_fh.write(AUTOTB_TVIN_b_13, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_14 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_14, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_b_14 = 0*8;
  if (__xlx_apatb_param_b_14) {
tr.import<8>((char*)__xlx_apatb_param_b_14, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.b_14_depth);
#else
// print b_14 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_14 = 0*8;
  if (__xlx_apatb_param_b_14) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_b_14)[j];
aesl_fh.write(AUTOTB_TVIN_b_14, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.b_14_depth);
aesl_fh.write(AUTOTB_TVIN_b_14, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_15 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_15, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_b_15 = 0*8;
  if (__xlx_apatb_param_b_15) {
tr.import<8>((char*)__xlx_apatb_param_b_15, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.b_15_depth);
#else
// print b_15 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_15 = 0*8;
  if (__xlx_apatb_param_b_15) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_b_15)[j];
aesl_fh.write(AUTOTB_TVIN_b_15, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.b_15_depth);
aesl_fh.write(AUTOTB_TVIN_b_15, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_0, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_c_0 = 0*8;
  if (__xlx_apatb_param_c_0) {
tr.import<8>((char*)__xlx_apatb_param_c_0, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.c_0_depth);
#else
// print c_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_0 = 0*8;
  if (__xlx_apatb_param_c_0) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_c_0)[j];
aesl_fh.write(AUTOTB_TVIN_c_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.c_0_depth);
aesl_fh.write(AUTOTB_TVIN_c_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_1, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_c_1 = 0*8;
  if (__xlx_apatb_param_c_1) {
tr.import<8>((char*)__xlx_apatb_param_c_1, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.c_1_depth);
#else
// print c_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_1 = 0*8;
  if (__xlx_apatb_param_c_1) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_c_1)[j];
aesl_fh.write(AUTOTB_TVIN_c_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.c_1_depth);
aesl_fh.write(AUTOTB_TVIN_c_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_2, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_c_2 = 0*8;
  if (__xlx_apatb_param_c_2) {
tr.import<8>((char*)__xlx_apatb_param_c_2, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.c_2_depth);
#else
// print c_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_2 = 0*8;
  if (__xlx_apatb_param_c_2) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_c_2)[j];
aesl_fh.write(AUTOTB_TVIN_c_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.c_2_depth);
aesl_fh.write(AUTOTB_TVIN_c_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_3, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_c_3 = 0*8;
  if (__xlx_apatb_param_c_3) {
tr.import<8>((char*)__xlx_apatb_param_c_3, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.c_3_depth);
#else
// print c_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_3 = 0*8;
  if (__xlx_apatb_param_c_3) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_c_3)[j];
aesl_fh.write(AUTOTB_TVIN_c_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.c_3_depth);
aesl_fh.write(AUTOTB_TVIN_c_3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_4 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_4, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_c_4 = 0*8;
  if (__xlx_apatb_param_c_4) {
tr.import<8>((char*)__xlx_apatb_param_c_4, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.c_4_depth);
#else
// print c_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_4 = 0*8;
  if (__xlx_apatb_param_c_4) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_c_4)[j];
aesl_fh.write(AUTOTB_TVIN_c_4, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.c_4_depth);
aesl_fh.write(AUTOTB_TVIN_c_4, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_5 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_5, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_c_5 = 0*8;
  if (__xlx_apatb_param_c_5) {
tr.import<8>((char*)__xlx_apatb_param_c_5, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.c_5_depth);
#else
// print c_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_5 = 0*8;
  if (__xlx_apatb_param_c_5) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_c_5)[j];
aesl_fh.write(AUTOTB_TVIN_c_5, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.c_5_depth);
aesl_fh.write(AUTOTB_TVIN_c_5, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_6 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_6, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_c_6 = 0*8;
  if (__xlx_apatb_param_c_6) {
tr.import<8>((char*)__xlx_apatb_param_c_6, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.c_6_depth);
#else
// print c_6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_6 = 0*8;
  if (__xlx_apatb_param_c_6) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_c_6)[j];
aesl_fh.write(AUTOTB_TVIN_c_6, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.c_6_depth);
aesl_fh.write(AUTOTB_TVIN_c_6, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_7 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_7, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_c_7 = 0*8;
  if (__xlx_apatb_param_c_7) {
tr.import<8>((char*)__xlx_apatb_param_c_7, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.c_7_depth);
#else
// print c_7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_7 = 0*8;
  if (__xlx_apatb_param_c_7) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_c_7)[j];
aesl_fh.write(AUTOTB_TVIN_c_7, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.c_7_depth);
aesl_fh.write(AUTOTB_TVIN_c_7, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_8 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_8, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_c_8 = 0*8;
  if (__xlx_apatb_param_c_8) {
tr.import<8>((char*)__xlx_apatb_param_c_8, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.c_8_depth);
#else
// print c_8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_8 = 0*8;
  if (__xlx_apatb_param_c_8) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_c_8)[j];
aesl_fh.write(AUTOTB_TVIN_c_8, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.c_8_depth);
aesl_fh.write(AUTOTB_TVIN_c_8, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_9 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_9, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_c_9 = 0*8;
  if (__xlx_apatb_param_c_9) {
tr.import<8>((char*)__xlx_apatb_param_c_9, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.c_9_depth);
#else
// print c_9 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_9 = 0*8;
  if (__xlx_apatb_param_c_9) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_c_9)[j];
aesl_fh.write(AUTOTB_TVIN_c_9, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.c_9_depth);
aesl_fh.write(AUTOTB_TVIN_c_9, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_10 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_10, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_c_10 = 0*8;
  if (__xlx_apatb_param_c_10) {
tr.import<8>((char*)__xlx_apatb_param_c_10, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.c_10_depth);
#else
// print c_10 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_10 = 0*8;
  if (__xlx_apatb_param_c_10) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_c_10)[j];
aesl_fh.write(AUTOTB_TVIN_c_10, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.c_10_depth);
aesl_fh.write(AUTOTB_TVIN_c_10, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_11 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_11, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_c_11 = 0*8;
  if (__xlx_apatb_param_c_11) {
tr.import<8>((char*)__xlx_apatb_param_c_11, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.c_11_depth);
#else
// print c_11 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_11 = 0*8;
  if (__xlx_apatb_param_c_11) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_c_11)[j];
aesl_fh.write(AUTOTB_TVIN_c_11, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.c_11_depth);
aesl_fh.write(AUTOTB_TVIN_c_11, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_12 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_12, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_c_12 = 0*8;
  if (__xlx_apatb_param_c_12) {
tr.import<8>((char*)__xlx_apatb_param_c_12, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.c_12_depth);
#else
// print c_12 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_12 = 0*8;
  if (__xlx_apatb_param_c_12) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_c_12)[j];
aesl_fh.write(AUTOTB_TVIN_c_12, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.c_12_depth);
aesl_fh.write(AUTOTB_TVIN_c_12, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_13 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_13, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_c_13 = 0*8;
  if (__xlx_apatb_param_c_13) {
tr.import<8>((char*)__xlx_apatb_param_c_13, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.c_13_depth);
#else
// print c_13 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_13 = 0*8;
  if (__xlx_apatb_param_c_13) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_c_13)[j];
aesl_fh.write(AUTOTB_TVIN_c_13, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.c_13_depth);
aesl_fh.write(AUTOTB_TVIN_c_13, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_14 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_14, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_c_14 = 0*8;
  if (__xlx_apatb_param_c_14) {
tr.import<8>((char*)__xlx_apatb_param_c_14, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.c_14_depth);
#else
// print c_14 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_14 = 0*8;
  if (__xlx_apatb_param_c_14) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_c_14)[j];
aesl_fh.write(AUTOTB_TVIN_c_14, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.c_14_depth);
aesl_fh.write(AUTOTB_TVIN_c_14, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_15 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_15, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_c_15 = 0*8;
  if (__xlx_apatb_param_c_15) {
tr.import<8>((char*)__xlx_apatb_param_c_15, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.c_15_depth);
#else
// print c_15 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_15 = 0*8;
  if (__xlx_apatb_param_c_15) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_c_15)[j];
aesl_fh.write(AUTOTB_TVIN_c_15, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.c_15_depth);
aesl_fh.write(AUTOTB_TVIN_c_15, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_0, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_x_0 = 0*8;
  if (__xlx_apatb_param_x_0) {
tr.import<8>((char*)__xlx_apatb_param_x_0, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.x_0_depth);
#else
// print x_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_0 = 0*8;
  if (__xlx_apatb_param_x_0) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_x_0)[j];
aesl_fh.write(AUTOTB_TVIN_x_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.x_0_depth);
aesl_fh.write(AUTOTB_TVIN_x_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_1, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_x_1 = 0*8;
  if (__xlx_apatb_param_x_1) {
tr.import<8>((char*)__xlx_apatb_param_x_1, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.x_1_depth);
#else
// print x_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_1 = 0*8;
  if (__xlx_apatb_param_x_1) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_x_1)[j];
aesl_fh.write(AUTOTB_TVIN_x_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.x_1_depth);
aesl_fh.write(AUTOTB_TVIN_x_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_2, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_x_2 = 0*8;
  if (__xlx_apatb_param_x_2) {
tr.import<8>((char*)__xlx_apatb_param_x_2, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.x_2_depth);
#else
// print x_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_2 = 0*8;
  if (__xlx_apatb_param_x_2) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_x_2)[j];
aesl_fh.write(AUTOTB_TVIN_x_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.x_2_depth);
aesl_fh.write(AUTOTB_TVIN_x_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_3, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_x_3 = 0*8;
  if (__xlx_apatb_param_x_3) {
tr.import<8>((char*)__xlx_apatb_param_x_3, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.x_3_depth);
#else
// print x_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_3 = 0*8;
  if (__xlx_apatb_param_x_3) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_x_3)[j];
aesl_fh.write(AUTOTB_TVIN_x_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.x_3_depth);
aesl_fh.write(AUTOTB_TVIN_x_3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_4 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_4, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_x_4 = 0*8;
  if (__xlx_apatb_param_x_4) {
tr.import<8>((char*)__xlx_apatb_param_x_4, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.x_4_depth);
#else
// print x_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_4 = 0*8;
  if (__xlx_apatb_param_x_4) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_x_4)[j];
aesl_fh.write(AUTOTB_TVIN_x_4, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.x_4_depth);
aesl_fh.write(AUTOTB_TVIN_x_4, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_5 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_5, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_x_5 = 0*8;
  if (__xlx_apatb_param_x_5) {
tr.import<8>((char*)__xlx_apatb_param_x_5, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.x_5_depth);
#else
// print x_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_5 = 0*8;
  if (__xlx_apatb_param_x_5) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_x_5)[j];
aesl_fh.write(AUTOTB_TVIN_x_5, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.x_5_depth);
aesl_fh.write(AUTOTB_TVIN_x_5, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_6 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_6, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_x_6 = 0*8;
  if (__xlx_apatb_param_x_6) {
tr.import<8>((char*)__xlx_apatb_param_x_6, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.x_6_depth);
#else
// print x_6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_6 = 0*8;
  if (__xlx_apatb_param_x_6) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_x_6)[j];
aesl_fh.write(AUTOTB_TVIN_x_6, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.x_6_depth);
aesl_fh.write(AUTOTB_TVIN_x_6, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_7 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_7, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_x_7 = 0*8;
  if (__xlx_apatb_param_x_7) {
tr.import<8>((char*)__xlx_apatb_param_x_7, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.x_7_depth);
#else
// print x_7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_7 = 0*8;
  if (__xlx_apatb_param_x_7) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_x_7)[j];
aesl_fh.write(AUTOTB_TVIN_x_7, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.x_7_depth);
aesl_fh.write(AUTOTB_TVIN_x_7, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_8 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_8, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_x_8 = 0*8;
  if (__xlx_apatb_param_x_8) {
tr.import<8>((char*)__xlx_apatb_param_x_8, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.x_8_depth);
#else
// print x_8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_8 = 0*8;
  if (__xlx_apatb_param_x_8) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_x_8)[j];
aesl_fh.write(AUTOTB_TVIN_x_8, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.x_8_depth);
aesl_fh.write(AUTOTB_TVIN_x_8, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_9 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_9, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_x_9 = 0*8;
  if (__xlx_apatb_param_x_9) {
tr.import<8>((char*)__xlx_apatb_param_x_9, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.x_9_depth);
#else
// print x_9 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_9 = 0*8;
  if (__xlx_apatb_param_x_9) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_x_9)[j];
aesl_fh.write(AUTOTB_TVIN_x_9, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.x_9_depth);
aesl_fh.write(AUTOTB_TVIN_x_9, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_10 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_10, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_x_10 = 0*8;
  if (__xlx_apatb_param_x_10) {
tr.import<8>((char*)__xlx_apatb_param_x_10, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.x_10_depth);
#else
// print x_10 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_10 = 0*8;
  if (__xlx_apatb_param_x_10) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_x_10)[j];
aesl_fh.write(AUTOTB_TVIN_x_10, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.x_10_depth);
aesl_fh.write(AUTOTB_TVIN_x_10, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_11 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_11, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_x_11 = 0*8;
  if (__xlx_apatb_param_x_11) {
tr.import<8>((char*)__xlx_apatb_param_x_11, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.x_11_depth);
#else
// print x_11 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_11 = 0*8;
  if (__xlx_apatb_param_x_11) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_x_11)[j];
aesl_fh.write(AUTOTB_TVIN_x_11, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.x_11_depth);
aesl_fh.write(AUTOTB_TVIN_x_11, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_12 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_12, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_x_12 = 0*8;
  if (__xlx_apatb_param_x_12) {
tr.import<8>((char*)__xlx_apatb_param_x_12, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.x_12_depth);
#else
// print x_12 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_12 = 0*8;
  if (__xlx_apatb_param_x_12) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_x_12)[j];
aesl_fh.write(AUTOTB_TVIN_x_12, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.x_12_depth);
aesl_fh.write(AUTOTB_TVIN_x_12, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_13 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_13, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_x_13 = 0*8;
  if (__xlx_apatb_param_x_13) {
tr.import<8>((char*)__xlx_apatb_param_x_13, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.x_13_depth);
#else
// print x_13 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_13 = 0*8;
  if (__xlx_apatb_param_x_13) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_x_13)[j];
aesl_fh.write(AUTOTB_TVIN_x_13, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.x_13_depth);
aesl_fh.write(AUTOTB_TVIN_x_13, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_14 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_14, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_x_14 = 0*8;
  if (__xlx_apatb_param_x_14) {
tr.import<8>((char*)__xlx_apatb_param_x_14, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.x_14_depth);
#else
// print x_14 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_14 = 0*8;
  if (__xlx_apatb_param_x_14) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_x_14)[j];
aesl_fh.write(AUTOTB_TVIN_x_14, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.x_14_depth);
aesl_fh.write(AUTOTB_TVIN_x_14, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_15 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_15, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_x_15 = 0*8;
  if (__xlx_apatb_param_x_15) {
tr.import<8>((char*)__xlx_apatb_param_x_15, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.x_15_depth);
#else
// print x_15 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_15 = 0*8;
  if (__xlx_apatb_param_x_15) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_x_15)[j];
aesl_fh.write(AUTOTB_TVIN_x_15, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.x_15_depth);
aesl_fh.write(AUTOTB_TVIN_x_15, end_str());
}

#endif
CodeState = CALL_C_DUT;
kp_502_15_hw_stub_wrapper(__xlx_apatb_param_r_0, __xlx_apatb_param_r_1, __xlx_apatb_param_r_2, __xlx_apatb_param_r_3, __xlx_apatb_param_r_4, __xlx_apatb_param_r_5, __xlx_apatb_param_r_6, __xlx_apatb_param_r_7, __xlx_apatb_param_r_8, __xlx_apatb_param_r_9, __xlx_apatb_param_r_10, __xlx_apatb_param_r_11, __xlx_apatb_param_r_12, __xlx_apatb_param_r_13, __xlx_apatb_param_r_14, __xlx_apatb_param_r_15, __xlx_apatb_param_a_0, __xlx_apatb_param_a_1, __xlx_apatb_param_a_2, __xlx_apatb_param_a_3, __xlx_apatb_param_a_4, __xlx_apatb_param_a_5, __xlx_apatb_param_a_6, __xlx_apatb_param_a_7, __xlx_apatb_param_a_8, __xlx_apatb_param_a_9, __xlx_apatb_param_a_10, __xlx_apatb_param_a_11, __xlx_apatb_param_a_12, __xlx_apatb_param_a_13, __xlx_apatb_param_a_14, __xlx_apatb_param_a_15, __xlx_apatb_param_b_0, __xlx_apatb_param_b_1, __xlx_apatb_param_b_2, __xlx_apatb_param_b_3, __xlx_apatb_param_b_4, __xlx_apatb_param_b_5, __xlx_apatb_param_b_6, __xlx_apatb_param_b_7, __xlx_apatb_param_b_8, __xlx_apatb_param_b_9, __xlx_apatb_param_b_10, __xlx_apatb_param_b_11, __xlx_apatb_param_b_12, __xlx_apatb_param_b_13, __xlx_apatb_param_b_14, __xlx_apatb_param_b_15, __xlx_apatb_param_c_0, __xlx_apatb_param_c_1, __xlx_apatb_param_c_2, __xlx_apatb_param_c_3, __xlx_apatb_param_c_4, __xlx_apatb_param_c_5, __xlx_apatb_param_c_6, __xlx_apatb_param_c_7, __xlx_apatb_param_c_8, __xlx_apatb_param_c_9, __xlx_apatb_param_c_10, __xlx_apatb_param_c_11, __xlx_apatb_param_c_12, __xlx_apatb_param_c_13, __xlx_apatb_param_c_14, __xlx_apatb_param_c_15, __xlx_apatb_param_x_0, __xlx_apatb_param_x_1, __xlx_apatb_param_x_2, __xlx_apatb_param_x_3, __xlx_apatb_param_x_4, __xlx_apatb_param_x_5, __xlx_apatb_param_x_6, __xlx_apatb_param_x_7, __xlx_apatb_param_x_8, __xlx_apatb_param_x_9, __xlx_apatb_param_x_10, __xlx_apatb_param_x_11, __xlx_apatb_param_x_12, __xlx_apatb_param_x_13, __xlx_apatb_param_x_14, __xlx_apatb_param_x_15);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_0, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_0 = 0*8;
  if (__xlx_apatb_param_r_0) {
tr.import<8>((char*)__xlx_apatb_param_r_0, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_0_depth);
#else
// print r_0 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_0 = 0*8;
  if (__xlx_apatb_param_r_0) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_0)[j];
aesl_fh.write(AUTOTB_TVOUT_r_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_0_depth);
aesl_fh.write(AUTOTB_TVOUT_r_0, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_1, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_1 = 0*8;
  if (__xlx_apatb_param_r_1) {
tr.import<8>((char*)__xlx_apatb_param_r_1, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_1_depth);
#else
// print r_1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_1 = 0*8;
  if (__xlx_apatb_param_r_1) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_1)[j];
aesl_fh.write(AUTOTB_TVOUT_r_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_1_depth);
aesl_fh.write(AUTOTB_TVOUT_r_1, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_2, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_2 = 0*8;
  if (__xlx_apatb_param_r_2) {
tr.import<8>((char*)__xlx_apatb_param_r_2, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_2_depth);
#else
// print r_2 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_2 = 0*8;
  if (__xlx_apatb_param_r_2) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_2)[j];
aesl_fh.write(AUTOTB_TVOUT_r_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_2_depth);
aesl_fh.write(AUTOTB_TVOUT_r_2, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_3, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_3 = 0*8;
  if (__xlx_apatb_param_r_3) {
tr.import<8>((char*)__xlx_apatb_param_r_3, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_3_depth);
#else
// print r_3 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_3 = 0*8;
  if (__xlx_apatb_param_r_3) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_3)[j];
aesl_fh.write(AUTOTB_TVOUT_r_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_3_depth);
aesl_fh.write(AUTOTB_TVOUT_r_3, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_4, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_4 = 0*8;
  if (__xlx_apatb_param_r_4) {
tr.import<8>((char*)__xlx_apatb_param_r_4, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_4_depth);
#else
// print r_4 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_4 = 0*8;
  if (__xlx_apatb_param_r_4) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_4)[j];
aesl_fh.write(AUTOTB_TVOUT_r_4, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_4_depth);
aesl_fh.write(AUTOTB_TVOUT_r_4, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_5, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_5 = 0*8;
  if (__xlx_apatb_param_r_5) {
tr.import<8>((char*)__xlx_apatb_param_r_5, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_5_depth);
#else
// print r_5 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_5 = 0*8;
  if (__xlx_apatb_param_r_5) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_5)[j];
aesl_fh.write(AUTOTB_TVOUT_r_5, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_5_depth);
aesl_fh.write(AUTOTB_TVOUT_r_5, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_6, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_6 = 0*8;
  if (__xlx_apatb_param_r_6) {
tr.import<8>((char*)__xlx_apatb_param_r_6, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_6_depth);
#else
// print r_6 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_6 = 0*8;
  if (__xlx_apatb_param_r_6) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_6)[j];
aesl_fh.write(AUTOTB_TVOUT_r_6, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_6_depth);
aesl_fh.write(AUTOTB_TVOUT_r_6, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_7, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_7 = 0*8;
  if (__xlx_apatb_param_r_7) {
tr.import<8>((char*)__xlx_apatb_param_r_7, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_7_depth);
#else
// print r_7 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_7 = 0*8;
  if (__xlx_apatb_param_r_7) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_7)[j];
aesl_fh.write(AUTOTB_TVOUT_r_7, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_7_depth);
aesl_fh.write(AUTOTB_TVOUT_r_7, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_8, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_8 = 0*8;
  if (__xlx_apatb_param_r_8) {
tr.import<8>((char*)__xlx_apatb_param_r_8, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_8_depth);
#else
// print r_8 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_8 = 0*8;
  if (__xlx_apatb_param_r_8) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_8)[j];
aesl_fh.write(AUTOTB_TVOUT_r_8, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_8_depth);
aesl_fh.write(AUTOTB_TVOUT_r_8, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_9, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_9 = 0*8;
  if (__xlx_apatb_param_r_9) {
tr.import<8>((char*)__xlx_apatb_param_r_9, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_9_depth);
#else
// print r_9 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_9 = 0*8;
  if (__xlx_apatb_param_r_9) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_9)[j];
aesl_fh.write(AUTOTB_TVOUT_r_9, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_9_depth);
aesl_fh.write(AUTOTB_TVOUT_r_9, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_10, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_10 = 0*8;
  if (__xlx_apatb_param_r_10) {
tr.import<8>((char*)__xlx_apatb_param_r_10, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_10_depth);
#else
// print r_10 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_10 = 0*8;
  if (__xlx_apatb_param_r_10) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_10)[j];
aesl_fh.write(AUTOTB_TVOUT_r_10, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_10_depth);
aesl_fh.write(AUTOTB_TVOUT_r_10, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_11, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_11 = 0*8;
  if (__xlx_apatb_param_r_11) {
tr.import<8>((char*)__xlx_apatb_param_r_11, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_11_depth);
#else
// print r_11 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_11 = 0*8;
  if (__xlx_apatb_param_r_11) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_11)[j];
aesl_fh.write(AUTOTB_TVOUT_r_11, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_11_depth);
aesl_fh.write(AUTOTB_TVOUT_r_11, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_12, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_12 = 0*8;
  if (__xlx_apatb_param_r_12) {
tr.import<8>((char*)__xlx_apatb_param_r_12, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_12_depth);
#else
// print r_12 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_12 = 0*8;
  if (__xlx_apatb_param_r_12) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_12)[j];
aesl_fh.write(AUTOTB_TVOUT_r_12, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_12_depth);
aesl_fh.write(AUTOTB_TVOUT_r_12, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_13, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_13 = 0*8;
  if (__xlx_apatb_param_r_13) {
tr.import<8>((char*)__xlx_apatb_param_r_13, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_13_depth);
#else
// print r_13 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_13 = 0*8;
  if (__xlx_apatb_param_r_13) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_13)[j];
aesl_fh.write(AUTOTB_TVOUT_r_13, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_13_depth);
aesl_fh.write(AUTOTB_TVOUT_r_13, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_14, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_14 = 0*8;
  if (__xlx_apatb_param_r_14) {
tr.import<8>((char*)__xlx_apatb_param_r_14, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_14_depth);
#else
// print r_14 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_14 = 0*8;
  if (__xlx_apatb_param_r_14) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_14)[j];
aesl_fh.write(AUTOTB_TVOUT_r_14, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_14_depth);
aesl_fh.write(AUTOTB_TVOUT_r_14, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_15, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_r_15 = 0*8;
  if (__xlx_apatb_param_r_15) {
tr.import<8>((char*)__xlx_apatb_param_r_15, 4096, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.r_15_depth);
#else
// print r_15 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_15 = 0*8;
  if (__xlx_apatb_param_r_15) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_r_15)[j];
aesl_fh.write(AUTOTB_TVOUT_r_15, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4096, &tcl_file.r_15_depth);
aesl_fh.write(AUTOTB_TVOUT_r_15, end_str());
}

#endif
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
