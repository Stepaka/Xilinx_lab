#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
struct __cosim_s10__ { char data[16]; };
extern "C" void kp_502_7(__cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*);
extern "C" void apatb_kp_502_7_hw(volatile void * __xlx_apatb_param_A, volatile void * __xlx_apatb_param_B, volatile void * __xlx_apatb_param_C, volatile void * __xlx_apatb_param_X1, volatile void * __xlx_apatb_param_X2, volatile void * __xlx_apatb_param_D) {
  // Collect __xlx_A__tmp_vec
  vector<sc_bv<128> >__xlx_A__tmp_vec;
  for (int j = 0, e = 4; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_A)[j*16+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_A)[j*16+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_A)[j*16+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_A)[j*16+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_A)[j*16+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_A)[j*16+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_A)[j*16+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_A)[j*16+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_A)[j*16+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_A)[j*16+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_A)[j*16+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_A)[j*16+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_A)[j*16+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_A)[j*16+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_A)[j*16+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_A)[j*16+15];
    __xlx_A__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A = 4;
  int __xlx_offset_param_A = 0;
  int __xlx_offset_byte_param_A = 0*16;
  __cosim_s10__* __xlx_A__input_buffer= new __cosim_s10__[__xlx_A__tmp_vec.size()];
  for (int i = 0; i < __xlx_A__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A__input_buffer)[i*2+0] = __xlx_A__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A__input_buffer)[i*2+1] = __xlx_A__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B__tmp_vec
  vector<sc_bv<128> >__xlx_B__tmp_vec;
  for (int j = 0, e = 4; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_B)[j*16+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_B)[j*16+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_B)[j*16+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_B)[j*16+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_B)[j*16+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_B)[j*16+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_B)[j*16+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_B)[j*16+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_B)[j*16+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_B)[j*16+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_B)[j*16+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_B)[j*16+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_B)[j*16+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_B)[j*16+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_B)[j*16+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_B)[j*16+15];
    __xlx_B__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B = 4;
  int __xlx_offset_param_B = 0;
  int __xlx_offset_byte_param_B = 0*16;
  __cosim_s10__* __xlx_B__input_buffer= new __cosim_s10__[__xlx_B__tmp_vec.size()];
  for (int i = 0; i < __xlx_B__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B__input_buffer)[i*2+0] = __xlx_B__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B__input_buffer)[i*2+1] = __xlx_B__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_C__tmp_vec
  vector<sc_bv<128> >__xlx_C__tmp_vec;
  for (int j = 0, e = 4; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_C)[j*16+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_C)[j*16+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_C)[j*16+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_C)[j*16+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_C)[j*16+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_C)[j*16+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_C)[j*16+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_C)[j*16+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_C)[j*16+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_C)[j*16+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_C)[j*16+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_C)[j*16+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_C)[j*16+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_C)[j*16+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_C)[j*16+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_C)[j*16+15];
    __xlx_C__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_C = 4;
  int __xlx_offset_param_C = 0;
  int __xlx_offset_byte_param_C = 0*16;
  __cosim_s10__* __xlx_C__input_buffer= new __cosim_s10__[__xlx_C__tmp_vec.size()];
  for (int i = 0; i < __xlx_C__tmp_vec.size(); ++i) {
    ((long long*)__xlx_C__input_buffer)[i*2+0] = __xlx_C__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_C__input_buffer)[i*2+1] = __xlx_C__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_X1__tmp_vec
  vector<sc_bv<128> >__xlx_X1__tmp_vec;
  for (int j = 0, e = 4; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_X1)[j*16+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_X1)[j*16+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_X1)[j*16+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_X1)[j*16+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_X1)[j*16+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_X1)[j*16+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_X1)[j*16+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_X1)[j*16+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_X1)[j*16+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_X1)[j*16+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_X1)[j*16+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_X1)[j*16+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_X1)[j*16+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_X1)[j*16+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_X1)[j*16+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_X1)[j*16+15];
    __xlx_X1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_X1 = 4;
  int __xlx_offset_param_X1 = 0;
  int __xlx_offset_byte_param_X1 = 0*16;
  __cosim_s10__* __xlx_X1__input_buffer= new __cosim_s10__[__xlx_X1__tmp_vec.size()];
  for (int i = 0; i < __xlx_X1__tmp_vec.size(); ++i) {
    ((long long*)__xlx_X1__input_buffer)[i*2+0] = __xlx_X1__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_X1__input_buffer)[i*2+1] = __xlx_X1__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_X2__tmp_vec
  vector<sc_bv<128> >__xlx_X2__tmp_vec;
  for (int j = 0, e = 4; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_X2)[j*16+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_X2)[j*16+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_X2)[j*16+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_X2)[j*16+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_X2)[j*16+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_X2)[j*16+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_X2)[j*16+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_X2)[j*16+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_X2)[j*16+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_X2)[j*16+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_X2)[j*16+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_X2)[j*16+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_X2)[j*16+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_X2)[j*16+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_X2)[j*16+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_X2)[j*16+15];
    __xlx_X2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_X2 = 4;
  int __xlx_offset_param_X2 = 0;
  int __xlx_offset_byte_param_X2 = 0*16;
  __cosim_s10__* __xlx_X2__input_buffer= new __cosim_s10__[__xlx_X2__tmp_vec.size()];
  for (int i = 0; i < __xlx_X2__tmp_vec.size(); ++i) {
    ((long long*)__xlx_X2__input_buffer)[i*2+0] = __xlx_X2__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_X2__input_buffer)[i*2+1] = __xlx_X2__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_D__tmp_vec
  vector<sc_bv<128> >__xlx_D__tmp_vec;
  for (int j = 0, e = 4; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_D)[j*16+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_D)[j*16+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_D)[j*16+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_D)[j*16+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_D)[j*16+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_D)[j*16+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_D)[j*16+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_D)[j*16+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_D)[j*16+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_D)[j*16+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_D)[j*16+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_D)[j*16+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_D)[j*16+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_D)[j*16+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_D)[j*16+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_D)[j*16+15];
    __xlx_D__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_D = 4;
  int __xlx_offset_param_D = 0;
  int __xlx_offset_byte_param_D = 0*16;
  __cosim_s10__* __xlx_D__input_buffer= new __cosim_s10__[__xlx_D__tmp_vec.size()];
  for (int i = 0; i < __xlx_D__tmp_vec.size(); ++i) {
    ((long long*)__xlx_D__input_buffer)[i*2+0] = __xlx_D__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_D__input_buffer)[i*2+1] = __xlx_D__tmp_vec[i].range(127, 64).to_uint64();
  }
  // DUT call
  kp_502_7(__xlx_A__input_buffer, __xlx_B__input_buffer, __xlx_C__input_buffer, __xlx_X1__input_buffer, __xlx_X2__input_buffer, __xlx_D__input_buffer);
// print __xlx_apatb_param_A
  sc_bv<128>*__xlx_A_output_buffer = new sc_bv<128>[__xlx_size_param_A];
  for (int i = 0; i < __xlx_size_param_A; ++i) {
    char* start = (char*)(&(__xlx_A__input_buffer[__xlx_offset_param_A]));
    __xlx_A_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A; ++i) {
    ((char*)__xlx_apatb_param_A)[i*16+0] = __xlx_A_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_A)[i*16+1] = __xlx_A_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_A)[i*16+2] = __xlx_A_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_A)[i*16+3] = __xlx_A_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_A)[i*16+4] = __xlx_A_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_A)[i*16+5] = __xlx_A_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_A)[i*16+6] = __xlx_A_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_A)[i*16+7] = __xlx_A_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_A)[i*16+8] = __xlx_A_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_A)[i*16+9] = __xlx_A_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_A)[i*16+10] = __xlx_A_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_A)[i*16+11] = __xlx_A_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_A)[i*16+12] = __xlx_A_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_A)[i*16+13] = __xlx_A_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_A)[i*16+14] = __xlx_A_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_A)[i*16+15] = __xlx_A_output_buffer[i].range(127, 120).to_uint();
  }
// print __xlx_apatb_param_B
  sc_bv<128>*__xlx_B_output_buffer = new sc_bv<128>[__xlx_size_param_B];
  for (int i = 0; i < __xlx_size_param_B; ++i) {
    char* start = (char*)(&(__xlx_B__input_buffer[__xlx_offset_param_B]));
    __xlx_B_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B; ++i) {
    ((char*)__xlx_apatb_param_B)[i*16+0] = __xlx_B_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_B)[i*16+1] = __xlx_B_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_B)[i*16+2] = __xlx_B_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_B)[i*16+3] = __xlx_B_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_B)[i*16+4] = __xlx_B_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_B)[i*16+5] = __xlx_B_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_B)[i*16+6] = __xlx_B_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_B)[i*16+7] = __xlx_B_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_B)[i*16+8] = __xlx_B_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_B)[i*16+9] = __xlx_B_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_B)[i*16+10] = __xlx_B_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_B)[i*16+11] = __xlx_B_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_B)[i*16+12] = __xlx_B_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_B)[i*16+13] = __xlx_B_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_B)[i*16+14] = __xlx_B_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_B)[i*16+15] = __xlx_B_output_buffer[i].range(127, 120).to_uint();
  }
// print __xlx_apatb_param_C
  sc_bv<128>*__xlx_C_output_buffer = new sc_bv<128>[__xlx_size_param_C];
  for (int i = 0; i < __xlx_size_param_C; ++i) {
    char* start = (char*)(&(__xlx_C__input_buffer[__xlx_offset_param_C]));
    __xlx_C_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_C_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_C; ++i) {
    ((char*)__xlx_apatb_param_C)[i*16+0] = __xlx_C_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_C)[i*16+1] = __xlx_C_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_C)[i*16+2] = __xlx_C_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_C)[i*16+3] = __xlx_C_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_C)[i*16+4] = __xlx_C_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_C)[i*16+5] = __xlx_C_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_C)[i*16+6] = __xlx_C_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_C)[i*16+7] = __xlx_C_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_C)[i*16+8] = __xlx_C_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_C)[i*16+9] = __xlx_C_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_C)[i*16+10] = __xlx_C_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_C)[i*16+11] = __xlx_C_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_C)[i*16+12] = __xlx_C_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_C)[i*16+13] = __xlx_C_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_C)[i*16+14] = __xlx_C_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_C)[i*16+15] = __xlx_C_output_buffer[i].range(127, 120).to_uint();
  }
// print __xlx_apatb_param_X1
  sc_bv<128>*__xlx_X1_output_buffer = new sc_bv<128>[__xlx_size_param_X1];
  for (int i = 0; i < __xlx_size_param_X1; ++i) {
    char* start = (char*)(&(__xlx_X1__input_buffer[__xlx_offset_param_X1]));
    __xlx_X1_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_X1_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_X1; ++i) {
    ((char*)__xlx_apatb_param_X1)[i*16+0] = __xlx_X1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_X1)[i*16+1] = __xlx_X1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_X1)[i*16+2] = __xlx_X1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_X1)[i*16+3] = __xlx_X1_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_X1)[i*16+4] = __xlx_X1_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_X1)[i*16+5] = __xlx_X1_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_X1)[i*16+6] = __xlx_X1_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_X1)[i*16+7] = __xlx_X1_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_X1)[i*16+8] = __xlx_X1_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_X1)[i*16+9] = __xlx_X1_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_X1)[i*16+10] = __xlx_X1_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_X1)[i*16+11] = __xlx_X1_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_X1)[i*16+12] = __xlx_X1_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_X1)[i*16+13] = __xlx_X1_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_X1)[i*16+14] = __xlx_X1_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_X1)[i*16+15] = __xlx_X1_output_buffer[i].range(127, 120).to_uint();
  }
// print __xlx_apatb_param_X2
  sc_bv<128>*__xlx_X2_output_buffer = new sc_bv<128>[__xlx_size_param_X2];
  for (int i = 0; i < __xlx_size_param_X2; ++i) {
    char* start = (char*)(&(__xlx_X2__input_buffer[__xlx_offset_param_X2]));
    __xlx_X2_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_X2_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_X2; ++i) {
    ((char*)__xlx_apatb_param_X2)[i*16+0] = __xlx_X2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_X2)[i*16+1] = __xlx_X2_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_X2)[i*16+2] = __xlx_X2_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_X2)[i*16+3] = __xlx_X2_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_X2)[i*16+4] = __xlx_X2_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_X2)[i*16+5] = __xlx_X2_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_X2)[i*16+6] = __xlx_X2_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_X2)[i*16+7] = __xlx_X2_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_X2)[i*16+8] = __xlx_X2_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_X2)[i*16+9] = __xlx_X2_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_X2)[i*16+10] = __xlx_X2_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_X2)[i*16+11] = __xlx_X2_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_X2)[i*16+12] = __xlx_X2_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_X2)[i*16+13] = __xlx_X2_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_X2)[i*16+14] = __xlx_X2_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_X2)[i*16+15] = __xlx_X2_output_buffer[i].range(127, 120).to_uint();
  }
// print __xlx_apatb_param_D
  sc_bv<128>*__xlx_D_output_buffer = new sc_bv<128>[__xlx_size_param_D];
  for (int i = 0; i < __xlx_size_param_D; ++i) {
    char* start = (char*)(&(__xlx_D__input_buffer[__xlx_offset_param_D]));
    __xlx_D_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_D_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_D; ++i) {
    ((char*)__xlx_apatb_param_D)[i*16+0] = __xlx_D_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_D)[i*16+1] = __xlx_D_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_D)[i*16+2] = __xlx_D_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_D)[i*16+3] = __xlx_D_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_D)[i*16+4] = __xlx_D_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_D)[i*16+5] = __xlx_D_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_D)[i*16+6] = __xlx_D_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_D)[i*16+7] = __xlx_D_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_D)[i*16+8] = __xlx_D_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_D)[i*16+9] = __xlx_D_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_D)[i*16+10] = __xlx_D_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_D)[i*16+11] = __xlx_D_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_D)[i*16+12] = __xlx_D_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_D)[i*16+13] = __xlx_D_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_D)[i*16+14] = __xlx_D_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_D)[i*16+15] = __xlx_D_output_buffer[i].range(127, 120).to_uint();
  }
}
