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
extern "C" void lab7_z3(long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*);
extern "C" void apatb_lab7_z3_hw(volatile void * __xlx_apatb_param_a_0, volatile void * __xlx_apatb_param_a_1, volatile void * __xlx_apatb_param_a_2, volatile void * __xlx_apatb_param_a_3, volatile void * __xlx_apatb_param_a_4, volatile void * __xlx_apatb_param_a_5, volatile void * __xlx_apatb_param_a_6, volatile void * __xlx_apatb_param_a_7, volatile void * __xlx_apatb_param_a_8, volatile void * __xlx_apatb_param_a_9, volatile void * __xlx_apatb_param_a_10, volatile void * __xlx_apatb_param_a_11, volatile void * __xlx_apatb_param_a_12, volatile void * __xlx_apatb_param_a_13, volatile void * __xlx_apatb_param_a_14, volatile void * __xlx_apatb_param_a_15, volatile void * __xlx_apatb_param_b_0, volatile void * __xlx_apatb_param_b_1, volatile void * __xlx_apatb_param_b_2, volatile void * __xlx_apatb_param_b_3, volatile void * __xlx_apatb_param_b_4, volatile void * __xlx_apatb_param_b_5, volatile void * __xlx_apatb_param_b_6, volatile void * __xlx_apatb_param_b_7, volatile void * __xlx_apatb_param_b_8, volatile void * __xlx_apatb_param_b_9, volatile void * __xlx_apatb_param_b_10, volatile void * __xlx_apatb_param_b_11, volatile void * __xlx_apatb_param_b_12, volatile void * __xlx_apatb_param_b_13, volatile void * __xlx_apatb_param_b_14, volatile void * __xlx_apatb_param_b_15, volatile void * __xlx_apatb_param_c_0, volatile void * __xlx_apatb_param_c_1, volatile void * __xlx_apatb_param_c_2, volatile void * __xlx_apatb_param_c_3, volatile void * __xlx_apatb_param_c_4, volatile void * __xlx_apatb_param_c_5, volatile void * __xlx_apatb_param_c_6, volatile void * __xlx_apatb_param_c_7, volatile void * __xlx_apatb_param_c_8, volatile void * __xlx_apatb_param_c_9, volatile void * __xlx_apatb_param_c_10, volatile void * __xlx_apatb_param_c_11, volatile void * __xlx_apatb_param_c_12, volatile void * __xlx_apatb_param_c_13, volatile void * __xlx_apatb_param_c_14, volatile void * __xlx_apatb_param_c_15) {
  // Collect __xlx_a_0__tmp_vec
  vector<sc_bv<64> >__xlx_a_0__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a_0)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a_0)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a_0)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a_0)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_a_0)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_a_0)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_a_0)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_a_0)[j*8+7];
    __xlx_a_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a_0 = 8;
  int __xlx_offset_param_a_0 = 0;
  int __xlx_offset_byte_param_a_0 = 0*8;
  long long* __xlx_a_0__input_buffer= new long long[__xlx_a_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_a_0__tmp_vec.size(); ++i) {
    __xlx_a_0__input_buffer[i] = __xlx_a_0__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_a_1__tmp_vec
  vector<sc_bv<64> >__xlx_a_1__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a_1)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a_1)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a_1)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a_1)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_a_1)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_a_1)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_a_1)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_a_1)[j*8+7];
    __xlx_a_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a_1 = 8;
  int __xlx_offset_param_a_1 = 0;
  int __xlx_offset_byte_param_a_1 = 0*8;
  long long* __xlx_a_1__input_buffer= new long long[__xlx_a_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_a_1__tmp_vec.size(); ++i) {
    __xlx_a_1__input_buffer[i] = __xlx_a_1__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_a_2__tmp_vec
  vector<sc_bv<64> >__xlx_a_2__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a_2)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a_2)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a_2)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a_2)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_a_2)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_a_2)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_a_2)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_a_2)[j*8+7];
    __xlx_a_2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a_2 = 8;
  int __xlx_offset_param_a_2 = 0;
  int __xlx_offset_byte_param_a_2 = 0*8;
  long long* __xlx_a_2__input_buffer= new long long[__xlx_a_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_a_2__tmp_vec.size(); ++i) {
    __xlx_a_2__input_buffer[i] = __xlx_a_2__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_a_3__tmp_vec
  vector<sc_bv<64> >__xlx_a_3__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a_3)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a_3)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a_3)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a_3)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_a_3)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_a_3)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_a_3)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_a_3)[j*8+7];
    __xlx_a_3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a_3 = 8;
  int __xlx_offset_param_a_3 = 0;
  int __xlx_offset_byte_param_a_3 = 0*8;
  long long* __xlx_a_3__input_buffer= new long long[__xlx_a_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_a_3__tmp_vec.size(); ++i) {
    __xlx_a_3__input_buffer[i] = __xlx_a_3__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_a_4__tmp_vec
  vector<sc_bv<64> >__xlx_a_4__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a_4)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a_4)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a_4)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a_4)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_a_4)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_a_4)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_a_4)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_a_4)[j*8+7];
    __xlx_a_4__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a_4 = 8;
  int __xlx_offset_param_a_4 = 0;
  int __xlx_offset_byte_param_a_4 = 0*8;
  long long* __xlx_a_4__input_buffer= new long long[__xlx_a_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_a_4__tmp_vec.size(); ++i) {
    __xlx_a_4__input_buffer[i] = __xlx_a_4__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_a_5__tmp_vec
  vector<sc_bv<64> >__xlx_a_5__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a_5)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a_5)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a_5)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a_5)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_a_5)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_a_5)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_a_5)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_a_5)[j*8+7];
    __xlx_a_5__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a_5 = 8;
  int __xlx_offset_param_a_5 = 0;
  int __xlx_offset_byte_param_a_5 = 0*8;
  long long* __xlx_a_5__input_buffer= new long long[__xlx_a_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_a_5__tmp_vec.size(); ++i) {
    __xlx_a_5__input_buffer[i] = __xlx_a_5__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_a_6__tmp_vec
  vector<sc_bv<64> >__xlx_a_6__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a_6)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a_6)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a_6)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a_6)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_a_6)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_a_6)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_a_6)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_a_6)[j*8+7];
    __xlx_a_6__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a_6 = 8;
  int __xlx_offset_param_a_6 = 0;
  int __xlx_offset_byte_param_a_6 = 0*8;
  long long* __xlx_a_6__input_buffer= new long long[__xlx_a_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_a_6__tmp_vec.size(); ++i) {
    __xlx_a_6__input_buffer[i] = __xlx_a_6__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_a_7__tmp_vec
  vector<sc_bv<64> >__xlx_a_7__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a_7)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a_7)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a_7)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a_7)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_a_7)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_a_7)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_a_7)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_a_7)[j*8+7];
    __xlx_a_7__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a_7 = 8;
  int __xlx_offset_param_a_7 = 0;
  int __xlx_offset_byte_param_a_7 = 0*8;
  long long* __xlx_a_7__input_buffer= new long long[__xlx_a_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_a_7__tmp_vec.size(); ++i) {
    __xlx_a_7__input_buffer[i] = __xlx_a_7__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_a_8__tmp_vec
  vector<sc_bv<64> >__xlx_a_8__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a_8)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a_8)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a_8)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a_8)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_a_8)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_a_8)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_a_8)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_a_8)[j*8+7];
    __xlx_a_8__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a_8 = 8;
  int __xlx_offset_param_a_8 = 0;
  int __xlx_offset_byte_param_a_8 = 0*8;
  long long* __xlx_a_8__input_buffer= new long long[__xlx_a_8__tmp_vec.size()];
  for (int i = 0; i < __xlx_a_8__tmp_vec.size(); ++i) {
    __xlx_a_8__input_buffer[i] = __xlx_a_8__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_a_9__tmp_vec
  vector<sc_bv<64> >__xlx_a_9__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a_9)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a_9)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a_9)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a_9)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_a_9)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_a_9)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_a_9)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_a_9)[j*8+7];
    __xlx_a_9__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a_9 = 8;
  int __xlx_offset_param_a_9 = 0;
  int __xlx_offset_byte_param_a_9 = 0*8;
  long long* __xlx_a_9__input_buffer= new long long[__xlx_a_9__tmp_vec.size()];
  for (int i = 0; i < __xlx_a_9__tmp_vec.size(); ++i) {
    __xlx_a_9__input_buffer[i] = __xlx_a_9__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_a_10__tmp_vec
  vector<sc_bv<64> >__xlx_a_10__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a_10)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a_10)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a_10)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a_10)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_a_10)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_a_10)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_a_10)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_a_10)[j*8+7];
    __xlx_a_10__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a_10 = 8;
  int __xlx_offset_param_a_10 = 0;
  int __xlx_offset_byte_param_a_10 = 0*8;
  long long* __xlx_a_10__input_buffer= new long long[__xlx_a_10__tmp_vec.size()];
  for (int i = 0; i < __xlx_a_10__tmp_vec.size(); ++i) {
    __xlx_a_10__input_buffer[i] = __xlx_a_10__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_a_11__tmp_vec
  vector<sc_bv<64> >__xlx_a_11__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a_11)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a_11)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a_11)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a_11)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_a_11)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_a_11)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_a_11)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_a_11)[j*8+7];
    __xlx_a_11__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a_11 = 8;
  int __xlx_offset_param_a_11 = 0;
  int __xlx_offset_byte_param_a_11 = 0*8;
  long long* __xlx_a_11__input_buffer= new long long[__xlx_a_11__tmp_vec.size()];
  for (int i = 0; i < __xlx_a_11__tmp_vec.size(); ++i) {
    __xlx_a_11__input_buffer[i] = __xlx_a_11__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_a_12__tmp_vec
  vector<sc_bv<64> >__xlx_a_12__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a_12)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a_12)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a_12)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a_12)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_a_12)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_a_12)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_a_12)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_a_12)[j*8+7];
    __xlx_a_12__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a_12 = 8;
  int __xlx_offset_param_a_12 = 0;
  int __xlx_offset_byte_param_a_12 = 0*8;
  long long* __xlx_a_12__input_buffer= new long long[__xlx_a_12__tmp_vec.size()];
  for (int i = 0; i < __xlx_a_12__tmp_vec.size(); ++i) {
    __xlx_a_12__input_buffer[i] = __xlx_a_12__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_a_13__tmp_vec
  vector<sc_bv<64> >__xlx_a_13__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a_13)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a_13)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a_13)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a_13)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_a_13)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_a_13)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_a_13)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_a_13)[j*8+7];
    __xlx_a_13__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a_13 = 8;
  int __xlx_offset_param_a_13 = 0;
  int __xlx_offset_byte_param_a_13 = 0*8;
  long long* __xlx_a_13__input_buffer= new long long[__xlx_a_13__tmp_vec.size()];
  for (int i = 0; i < __xlx_a_13__tmp_vec.size(); ++i) {
    __xlx_a_13__input_buffer[i] = __xlx_a_13__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_a_14__tmp_vec
  vector<sc_bv<64> >__xlx_a_14__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a_14)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a_14)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a_14)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a_14)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_a_14)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_a_14)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_a_14)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_a_14)[j*8+7];
    __xlx_a_14__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a_14 = 8;
  int __xlx_offset_param_a_14 = 0;
  int __xlx_offset_byte_param_a_14 = 0*8;
  long long* __xlx_a_14__input_buffer= new long long[__xlx_a_14__tmp_vec.size()];
  for (int i = 0; i < __xlx_a_14__tmp_vec.size(); ++i) {
    __xlx_a_14__input_buffer[i] = __xlx_a_14__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_a_15__tmp_vec
  vector<sc_bv<64> >__xlx_a_15__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a_15)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a_15)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a_15)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a_15)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_a_15)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_a_15)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_a_15)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_a_15)[j*8+7];
    __xlx_a_15__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a_15 = 8;
  int __xlx_offset_param_a_15 = 0;
  int __xlx_offset_byte_param_a_15 = 0*8;
  long long* __xlx_a_15__input_buffer= new long long[__xlx_a_15__tmp_vec.size()];
  for (int i = 0; i < __xlx_a_15__tmp_vec.size(); ++i) {
    __xlx_a_15__input_buffer[i] = __xlx_a_15__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_b_0__tmp_vec
  vector<sc_bv<64> >__xlx_b_0__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b_0)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b_0)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b_0)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b_0)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_b_0)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_b_0)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_b_0)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_b_0)[j*8+7];
    __xlx_b_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b_0 = 8;
  int __xlx_offset_param_b_0 = 0;
  int __xlx_offset_byte_param_b_0 = 0*8;
  long long* __xlx_b_0__input_buffer= new long long[__xlx_b_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_b_0__tmp_vec.size(); ++i) {
    __xlx_b_0__input_buffer[i] = __xlx_b_0__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_b_1__tmp_vec
  vector<sc_bv<64> >__xlx_b_1__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b_1)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b_1)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b_1)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b_1)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_b_1)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_b_1)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_b_1)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_b_1)[j*8+7];
    __xlx_b_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b_1 = 8;
  int __xlx_offset_param_b_1 = 0;
  int __xlx_offset_byte_param_b_1 = 0*8;
  long long* __xlx_b_1__input_buffer= new long long[__xlx_b_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_b_1__tmp_vec.size(); ++i) {
    __xlx_b_1__input_buffer[i] = __xlx_b_1__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_b_2__tmp_vec
  vector<sc_bv<64> >__xlx_b_2__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b_2)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b_2)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b_2)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b_2)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_b_2)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_b_2)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_b_2)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_b_2)[j*8+7];
    __xlx_b_2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b_2 = 8;
  int __xlx_offset_param_b_2 = 0;
  int __xlx_offset_byte_param_b_2 = 0*8;
  long long* __xlx_b_2__input_buffer= new long long[__xlx_b_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_b_2__tmp_vec.size(); ++i) {
    __xlx_b_2__input_buffer[i] = __xlx_b_2__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_b_3__tmp_vec
  vector<sc_bv<64> >__xlx_b_3__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b_3)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b_3)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b_3)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b_3)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_b_3)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_b_3)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_b_3)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_b_3)[j*8+7];
    __xlx_b_3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b_3 = 8;
  int __xlx_offset_param_b_3 = 0;
  int __xlx_offset_byte_param_b_3 = 0*8;
  long long* __xlx_b_3__input_buffer= new long long[__xlx_b_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_b_3__tmp_vec.size(); ++i) {
    __xlx_b_3__input_buffer[i] = __xlx_b_3__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_b_4__tmp_vec
  vector<sc_bv<64> >__xlx_b_4__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b_4)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b_4)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b_4)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b_4)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_b_4)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_b_4)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_b_4)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_b_4)[j*8+7];
    __xlx_b_4__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b_4 = 8;
  int __xlx_offset_param_b_4 = 0;
  int __xlx_offset_byte_param_b_4 = 0*8;
  long long* __xlx_b_4__input_buffer= new long long[__xlx_b_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_b_4__tmp_vec.size(); ++i) {
    __xlx_b_4__input_buffer[i] = __xlx_b_4__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_b_5__tmp_vec
  vector<sc_bv<64> >__xlx_b_5__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b_5)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b_5)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b_5)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b_5)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_b_5)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_b_5)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_b_5)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_b_5)[j*8+7];
    __xlx_b_5__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b_5 = 8;
  int __xlx_offset_param_b_5 = 0;
  int __xlx_offset_byte_param_b_5 = 0*8;
  long long* __xlx_b_5__input_buffer= new long long[__xlx_b_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_b_5__tmp_vec.size(); ++i) {
    __xlx_b_5__input_buffer[i] = __xlx_b_5__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_b_6__tmp_vec
  vector<sc_bv<64> >__xlx_b_6__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b_6)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b_6)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b_6)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b_6)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_b_6)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_b_6)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_b_6)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_b_6)[j*8+7];
    __xlx_b_6__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b_6 = 8;
  int __xlx_offset_param_b_6 = 0;
  int __xlx_offset_byte_param_b_6 = 0*8;
  long long* __xlx_b_6__input_buffer= new long long[__xlx_b_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_b_6__tmp_vec.size(); ++i) {
    __xlx_b_6__input_buffer[i] = __xlx_b_6__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_b_7__tmp_vec
  vector<sc_bv<64> >__xlx_b_7__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b_7)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b_7)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b_7)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b_7)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_b_7)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_b_7)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_b_7)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_b_7)[j*8+7];
    __xlx_b_7__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b_7 = 8;
  int __xlx_offset_param_b_7 = 0;
  int __xlx_offset_byte_param_b_7 = 0*8;
  long long* __xlx_b_7__input_buffer= new long long[__xlx_b_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_b_7__tmp_vec.size(); ++i) {
    __xlx_b_7__input_buffer[i] = __xlx_b_7__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_b_8__tmp_vec
  vector<sc_bv<64> >__xlx_b_8__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b_8)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b_8)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b_8)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b_8)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_b_8)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_b_8)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_b_8)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_b_8)[j*8+7];
    __xlx_b_8__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b_8 = 8;
  int __xlx_offset_param_b_8 = 0;
  int __xlx_offset_byte_param_b_8 = 0*8;
  long long* __xlx_b_8__input_buffer= new long long[__xlx_b_8__tmp_vec.size()];
  for (int i = 0; i < __xlx_b_8__tmp_vec.size(); ++i) {
    __xlx_b_8__input_buffer[i] = __xlx_b_8__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_b_9__tmp_vec
  vector<sc_bv<64> >__xlx_b_9__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b_9)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b_9)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b_9)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b_9)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_b_9)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_b_9)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_b_9)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_b_9)[j*8+7];
    __xlx_b_9__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b_9 = 8;
  int __xlx_offset_param_b_9 = 0;
  int __xlx_offset_byte_param_b_9 = 0*8;
  long long* __xlx_b_9__input_buffer= new long long[__xlx_b_9__tmp_vec.size()];
  for (int i = 0; i < __xlx_b_9__tmp_vec.size(); ++i) {
    __xlx_b_9__input_buffer[i] = __xlx_b_9__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_b_10__tmp_vec
  vector<sc_bv<64> >__xlx_b_10__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b_10)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b_10)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b_10)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b_10)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_b_10)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_b_10)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_b_10)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_b_10)[j*8+7];
    __xlx_b_10__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b_10 = 8;
  int __xlx_offset_param_b_10 = 0;
  int __xlx_offset_byte_param_b_10 = 0*8;
  long long* __xlx_b_10__input_buffer= new long long[__xlx_b_10__tmp_vec.size()];
  for (int i = 0; i < __xlx_b_10__tmp_vec.size(); ++i) {
    __xlx_b_10__input_buffer[i] = __xlx_b_10__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_b_11__tmp_vec
  vector<sc_bv<64> >__xlx_b_11__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b_11)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b_11)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b_11)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b_11)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_b_11)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_b_11)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_b_11)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_b_11)[j*8+7];
    __xlx_b_11__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b_11 = 8;
  int __xlx_offset_param_b_11 = 0;
  int __xlx_offset_byte_param_b_11 = 0*8;
  long long* __xlx_b_11__input_buffer= new long long[__xlx_b_11__tmp_vec.size()];
  for (int i = 0; i < __xlx_b_11__tmp_vec.size(); ++i) {
    __xlx_b_11__input_buffer[i] = __xlx_b_11__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_b_12__tmp_vec
  vector<sc_bv<64> >__xlx_b_12__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b_12)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b_12)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b_12)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b_12)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_b_12)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_b_12)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_b_12)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_b_12)[j*8+7];
    __xlx_b_12__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b_12 = 8;
  int __xlx_offset_param_b_12 = 0;
  int __xlx_offset_byte_param_b_12 = 0*8;
  long long* __xlx_b_12__input_buffer= new long long[__xlx_b_12__tmp_vec.size()];
  for (int i = 0; i < __xlx_b_12__tmp_vec.size(); ++i) {
    __xlx_b_12__input_buffer[i] = __xlx_b_12__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_b_13__tmp_vec
  vector<sc_bv<64> >__xlx_b_13__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b_13)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b_13)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b_13)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b_13)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_b_13)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_b_13)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_b_13)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_b_13)[j*8+7];
    __xlx_b_13__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b_13 = 8;
  int __xlx_offset_param_b_13 = 0;
  int __xlx_offset_byte_param_b_13 = 0*8;
  long long* __xlx_b_13__input_buffer= new long long[__xlx_b_13__tmp_vec.size()];
  for (int i = 0; i < __xlx_b_13__tmp_vec.size(); ++i) {
    __xlx_b_13__input_buffer[i] = __xlx_b_13__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_b_14__tmp_vec
  vector<sc_bv<64> >__xlx_b_14__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b_14)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b_14)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b_14)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b_14)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_b_14)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_b_14)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_b_14)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_b_14)[j*8+7];
    __xlx_b_14__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b_14 = 8;
  int __xlx_offset_param_b_14 = 0;
  int __xlx_offset_byte_param_b_14 = 0*8;
  long long* __xlx_b_14__input_buffer= new long long[__xlx_b_14__tmp_vec.size()];
  for (int i = 0; i < __xlx_b_14__tmp_vec.size(); ++i) {
    __xlx_b_14__input_buffer[i] = __xlx_b_14__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_b_15__tmp_vec
  vector<sc_bv<64> >__xlx_b_15__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b_15)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b_15)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b_15)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b_15)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_b_15)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_b_15)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_b_15)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_b_15)[j*8+7];
    __xlx_b_15__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b_15 = 8;
  int __xlx_offset_param_b_15 = 0;
  int __xlx_offset_byte_param_b_15 = 0*8;
  long long* __xlx_b_15__input_buffer= new long long[__xlx_b_15__tmp_vec.size()];
  for (int i = 0; i < __xlx_b_15__tmp_vec.size(); ++i) {
    __xlx_b_15__input_buffer[i] = __xlx_b_15__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_c_0__tmp_vec
  vector<sc_bv<64> >__xlx_c_0__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c_0)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c_0)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c_0)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c_0)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_c_0)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_c_0)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_c_0)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_c_0)[j*8+7];
    __xlx_c_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c_0 = 8;
  int __xlx_offset_param_c_0 = 0;
  int __xlx_offset_byte_param_c_0 = 0*8;
  long long* __xlx_c_0__input_buffer= new long long[__xlx_c_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_c_0__tmp_vec.size(); ++i) {
    __xlx_c_0__input_buffer[i] = __xlx_c_0__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_c_1__tmp_vec
  vector<sc_bv<64> >__xlx_c_1__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c_1)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c_1)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c_1)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c_1)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_c_1)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_c_1)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_c_1)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_c_1)[j*8+7];
    __xlx_c_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c_1 = 8;
  int __xlx_offset_param_c_1 = 0;
  int __xlx_offset_byte_param_c_1 = 0*8;
  long long* __xlx_c_1__input_buffer= new long long[__xlx_c_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_c_1__tmp_vec.size(); ++i) {
    __xlx_c_1__input_buffer[i] = __xlx_c_1__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_c_2__tmp_vec
  vector<sc_bv<64> >__xlx_c_2__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c_2)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c_2)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c_2)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c_2)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_c_2)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_c_2)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_c_2)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_c_2)[j*8+7];
    __xlx_c_2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c_2 = 8;
  int __xlx_offset_param_c_2 = 0;
  int __xlx_offset_byte_param_c_2 = 0*8;
  long long* __xlx_c_2__input_buffer= new long long[__xlx_c_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_c_2__tmp_vec.size(); ++i) {
    __xlx_c_2__input_buffer[i] = __xlx_c_2__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_c_3__tmp_vec
  vector<sc_bv<64> >__xlx_c_3__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c_3)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c_3)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c_3)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c_3)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_c_3)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_c_3)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_c_3)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_c_3)[j*8+7];
    __xlx_c_3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c_3 = 8;
  int __xlx_offset_param_c_3 = 0;
  int __xlx_offset_byte_param_c_3 = 0*8;
  long long* __xlx_c_3__input_buffer= new long long[__xlx_c_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_c_3__tmp_vec.size(); ++i) {
    __xlx_c_3__input_buffer[i] = __xlx_c_3__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_c_4__tmp_vec
  vector<sc_bv<64> >__xlx_c_4__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c_4)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c_4)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c_4)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c_4)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_c_4)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_c_4)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_c_4)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_c_4)[j*8+7];
    __xlx_c_4__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c_4 = 8;
  int __xlx_offset_param_c_4 = 0;
  int __xlx_offset_byte_param_c_4 = 0*8;
  long long* __xlx_c_4__input_buffer= new long long[__xlx_c_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_c_4__tmp_vec.size(); ++i) {
    __xlx_c_4__input_buffer[i] = __xlx_c_4__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_c_5__tmp_vec
  vector<sc_bv<64> >__xlx_c_5__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c_5)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c_5)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c_5)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c_5)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_c_5)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_c_5)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_c_5)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_c_5)[j*8+7];
    __xlx_c_5__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c_5 = 8;
  int __xlx_offset_param_c_5 = 0;
  int __xlx_offset_byte_param_c_5 = 0*8;
  long long* __xlx_c_5__input_buffer= new long long[__xlx_c_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_c_5__tmp_vec.size(); ++i) {
    __xlx_c_5__input_buffer[i] = __xlx_c_5__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_c_6__tmp_vec
  vector<sc_bv<64> >__xlx_c_6__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c_6)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c_6)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c_6)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c_6)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_c_6)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_c_6)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_c_6)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_c_6)[j*8+7];
    __xlx_c_6__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c_6 = 8;
  int __xlx_offset_param_c_6 = 0;
  int __xlx_offset_byte_param_c_6 = 0*8;
  long long* __xlx_c_6__input_buffer= new long long[__xlx_c_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_c_6__tmp_vec.size(); ++i) {
    __xlx_c_6__input_buffer[i] = __xlx_c_6__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_c_7__tmp_vec
  vector<sc_bv<64> >__xlx_c_7__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c_7)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c_7)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c_7)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c_7)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_c_7)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_c_7)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_c_7)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_c_7)[j*8+7];
    __xlx_c_7__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c_7 = 8;
  int __xlx_offset_param_c_7 = 0;
  int __xlx_offset_byte_param_c_7 = 0*8;
  long long* __xlx_c_7__input_buffer= new long long[__xlx_c_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_c_7__tmp_vec.size(); ++i) {
    __xlx_c_7__input_buffer[i] = __xlx_c_7__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_c_8__tmp_vec
  vector<sc_bv<64> >__xlx_c_8__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c_8)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c_8)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c_8)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c_8)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_c_8)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_c_8)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_c_8)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_c_8)[j*8+7];
    __xlx_c_8__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c_8 = 8;
  int __xlx_offset_param_c_8 = 0;
  int __xlx_offset_byte_param_c_8 = 0*8;
  long long* __xlx_c_8__input_buffer= new long long[__xlx_c_8__tmp_vec.size()];
  for (int i = 0; i < __xlx_c_8__tmp_vec.size(); ++i) {
    __xlx_c_8__input_buffer[i] = __xlx_c_8__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_c_9__tmp_vec
  vector<sc_bv<64> >__xlx_c_9__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c_9)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c_9)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c_9)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c_9)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_c_9)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_c_9)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_c_9)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_c_9)[j*8+7];
    __xlx_c_9__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c_9 = 8;
  int __xlx_offset_param_c_9 = 0;
  int __xlx_offset_byte_param_c_9 = 0*8;
  long long* __xlx_c_9__input_buffer= new long long[__xlx_c_9__tmp_vec.size()];
  for (int i = 0; i < __xlx_c_9__tmp_vec.size(); ++i) {
    __xlx_c_9__input_buffer[i] = __xlx_c_9__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_c_10__tmp_vec
  vector<sc_bv<64> >__xlx_c_10__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c_10)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c_10)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c_10)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c_10)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_c_10)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_c_10)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_c_10)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_c_10)[j*8+7];
    __xlx_c_10__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c_10 = 8;
  int __xlx_offset_param_c_10 = 0;
  int __xlx_offset_byte_param_c_10 = 0*8;
  long long* __xlx_c_10__input_buffer= new long long[__xlx_c_10__tmp_vec.size()];
  for (int i = 0; i < __xlx_c_10__tmp_vec.size(); ++i) {
    __xlx_c_10__input_buffer[i] = __xlx_c_10__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_c_11__tmp_vec
  vector<sc_bv<64> >__xlx_c_11__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c_11)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c_11)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c_11)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c_11)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_c_11)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_c_11)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_c_11)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_c_11)[j*8+7];
    __xlx_c_11__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c_11 = 8;
  int __xlx_offset_param_c_11 = 0;
  int __xlx_offset_byte_param_c_11 = 0*8;
  long long* __xlx_c_11__input_buffer= new long long[__xlx_c_11__tmp_vec.size()];
  for (int i = 0; i < __xlx_c_11__tmp_vec.size(); ++i) {
    __xlx_c_11__input_buffer[i] = __xlx_c_11__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_c_12__tmp_vec
  vector<sc_bv<64> >__xlx_c_12__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c_12)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c_12)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c_12)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c_12)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_c_12)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_c_12)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_c_12)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_c_12)[j*8+7];
    __xlx_c_12__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c_12 = 8;
  int __xlx_offset_param_c_12 = 0;
  int __xlx_offset_byte_param_c_12 = 0*8;
  long long* __xlx_c_12__input_buffer= new long long[__xlx_c_12__tmp_vec.size()];
  for (int i = 0; i < __xlx_c_12__tmp_vec.size(); ++i) {
    __xlx_c_12__input_buffer[i] = __xlx_c_12__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_c_13__tmp_vec
  vector<sc_bv<64> >__xlx_c_13__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c_13)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c_13)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c_13)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c_13)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_c_13)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_c_13)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_c_13)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_c_13)[j*8+7];
    __xlx_c_13__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c_13 = 8;
  int __xlx_offset_param_c_13 = 0;
  int __xlx_offset_byte_param_c_13 = 0*8;
  long long* __xlx_c_13__input_buffer= new long long[__xlx_c_13__tmp_vec.size()];
  for (int i = 0; i < __xlx_c_13__tmp_vec.size(); ++i) {
    __xlx_c_13__input_buffer[i] = __xlx_c_13__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_c_14__tmp_vec
  vector<sc_bv<64> >__xlx_c_14__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c_14)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c_14)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c_14)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c_14)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_c_14)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_c_14)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_c_14)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_c_14)[j*8+7];
    __xlx_c_14__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c_14 = 8;
  int __xlx_offset_param_c_14 = 0;
  int __xlx_offset_byte_param_c_14 = 0*8;
  long long* __xlx_c_14__input_buffer= new long long[__xlx_c_14__tmp_vec.size()];
  for (int i = 0; i < __xlx_c_14__tmp_vec.size(); ++i) {
    __xlx_c_14__input_buffer[i] = __xlx_c_14__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_c_15__tmp_vec
  vector<sc_bv<64> >__xlx_c_15__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c_15)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c_15)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c_15)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c_15)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_c_15)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_c_15)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_c_15)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_c_15)[j*8+7];
    __xlx_c_15__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c_15 = 8;
  int __xlx_offset_param_c_15 = 0;
  int __xlx_offset_byte_param_c_15 = 0*8;
  long long* __xlx_c_15__input_buffer= new long long[__xlx_c_15__tmp_vec.size()];
  for (int i = 0; i < __xlx_c_15__tmp_vec.size(); ++i) {
    __xlx_c_15__input_buffer[i] = __xlx_c_15__tmp_vec[i].range(63, 0).to_uint64();
  }
  // DUT call
  lab7_z3(__xlx_a_0__input_buffer, __xlx_a_1__input_buffer, __xlx_a_2__input_buffer, __xlx_a_3__input_buffer, __xlx_a_4__input_buffer, __xlx_a_5__input_buffer, __xlx_a_6__input_buffer, __xlx_a_7__input_buffer, __xlx_a_8__input_buffer, __xlx_a_9__input_buffer, __xlx_a_10__input_buffer, __xlx_a_11__input_buffer, __xlx_a_12__input_buffer, __xlx_a_13__input_buffer, __xlx_a_14__input_buffer, __xlx_a_15__input_buffer, __xlx_b_0__input_buffer, __xlx_b_1__input_buffer, __xlx_b_2__input_buffer, __xlx_b_3__input_buffer, __xlx_b_4__input_buffer, __xlx_b_5__input_buffer, __xlx_b_6__input_buffer, __xlx_b_7__input_buffer, __xlx_b_8__input_buffer, __xlx_b_9__input_buffer, __xlx_b_10__input_buffer, __xlx_b_11__input_buffer, __xlx_b_12__input_buffer, __xlx_b_13__input_buffer, __xlx_b_14__input_buffer, __xlx_b_15__input_buffer, __xlx_c_0__input_buffer, __xlx_c_1__input_buffer, __xlx_c_2__input_buffer, __xlx_c_3__input_buffer, __xlx_c_4__input_buffer, __xlx_c_5__input_buffer, __xlx_c_6__input_buffer, __xlx_c_7__input_buffer, __xlx_c_8__input_buffer, __xlx_c_9__input_buffer, __xlx_c_10__input_buffer, __xlx_c_11__input_buffer, __xlx_c_12__input_buffer, __xlx_c_13__input_buffer, __xlx_c_14__input_buffer, __xlx_c_15__input_buffer);
// print __xlx_apatb_param_a_0
  sc_bv<64>*__xlx_a_0_output_buffer = new sc_bv<64>[__xlx_size_param_a_0];
  for (int i = 0; i < __xlx_size_param_a_0; ++i) {
    __xlx_a_0_output_buffer[i] = __xlx_a_0__input_buffer[i+__xlx_offset_param_a_0];
  }
  for (int i = 0; i < __xlx_size_param_a_0; ++i) {
    ((char*)__xlx_apatb_param_a_0)[i*8+0] = __xlx_a_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a_0)[i*8+1] = __xlx_a_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a_0)[i*8+2] = __xlx_a_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a_0)[i*8+3] = __xlx_a_0_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_a_0)[i*8+4] = __xlx_a_0_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_a_0)[i*8+5] = __xlx_a_0_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_a_0)[i*8+6] = __xlx_a_0_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_a_0)[i*8+7] = __xlx_a_0_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_a_1
  sc_bv<64>*__xlx_a_1_output_buffer = new sc_bv<64>[__xlx_size_param_a_1];
  for (int i = 0; i < __xlx_size_param_a_1; ++i) {
    __xlx_a_1_output_buffer[i] = __xlx_a_1__input_buffer[i+__xlx_offset_param_a_1];
  }
  for (int i = 0; i < __xlx_size_param_a_1; ++i) {
    ((char*)__xlx_apatb_param_a_1)[i*8+0] = __xlx_a_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a_1)[i*8+1] = __xlx_a_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a_1)[i*8+2] = __xlx_a_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a_1)[i*8+3] = __xlx_a_1_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_a_1)[i*8+4] = __xlx_a_1_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_a_1)[i*8+5] = __xlx_a_1_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_a_1)[i*8+6] = __xlx_a_1_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_a_1)[i*8+7] = __xlx_a_1_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_a_2
  sc_bv<64>*__xlx_a_2_output_buffer = new sc_bv<64>[__xlx_size_param_a_2];
  for (int i = 0; i < __xlx_size_param_a_2; ++i) {
    __xlx_a_2_output_buffer[i] = __xlx_a_2__input_buffer[i+__xlx_offset_param_a_2];
  }
  for (int i = 0; i < __xlx_size_param_a_2; ++i) {
    ((char*)__xlx_apatb_param_a_2)[i*8+0] = __xlx_a_2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a_2)[i*8+1] = __xlx_a_2_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a_2)[i*8+2] = __xlx_a_2_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a_2)[i*8+3] = __xlx_a_2_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_a_2)[i*8+4] = __xlx_a_2_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_a_2)[i*8+5] = __xlx_a_2_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_a_2)[i*8+6] = __xlx_a_2_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_a_2)[i*8+7] = __xlx_a_2_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_a_3
  sc_bv<64>*__xlx_a_3_output_buffer = new sc_bv<64>[__xlx_size_param_a_3];
  for (int i = 0; i < __xlx_size_param_a_3; ++i) {
    __xlx_a_3_output_buffer[i] = __xlx_a_3__input_buffer[i+__xlx_offset_param_a_3];
  }
  for (int i = 0; i < __xlx_size_param_a_3; ++i) {
    ((char*)__xlx_apatb_param_a_3)[i*8+0] = __xlx_a_3_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a_3)[i*8+1] = __xlx_a_3_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a_3)[i*8+2] = __xlx_a_3_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a_3)[i*8+3] = __xlx_a_3_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_a_3)[i*8+4] = __xlx_a_3_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_a_3)[i*8+5] = __xlx_a_3_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_a_3)[i*8+6] = __xlx_a_3_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_a_3)[i*8+7] = __xlx_a_3_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_a_4
  sc_bv<64>*__xlx_a_4_output_buffer = new sc_bv<64>[__xlx_size_param_a_4];
  for (int i = 0; i < __xlx_size_param_a_4; ++i) {
    __xlx_a_4_output_buffer[i] = __xlx_a_4__input_buffer[i+__xlx_offset_param_a_4];
  }
  for (int i = 0; i < __xlx_size_param_a_4; ++i) {
    ((char*)__xlx_apatb_param_a_4)[i*8+0] = __xlx_a_4_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a_4)[i*8+1] = __xlx_a_4_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a_4)[i*8+2] = __xlx_a_4_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a_4)[i*8+3] = __xlx_a_4_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_a_4)[i*8+4] = __xlx_a_4_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_a_4)[i*8+5] = __xlx_a_4_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_a_4)[i*8+6] = __xlx_a_4_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_a_4)[i*8+7] = __xlx_a_4_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_a_5
  sc_bv<64>*__xlx_a_5_output_buffer = new sc_bv<64>[__xlx_size_param_a_5];
  for (int i = 0; i < __xlx_size_param_a_5; ++i) {
    __xlx_a_5_output_buffer[i] = __xlx_a_5__input_buffer[i+__xlx_offset_param_a_5];
  }
  for (int i = 0; i < __xlx_size_param_a_5; ++i) {
    ((char*)__xlx_apatb_param_a_5)[i*8+0] = __xlx_a_5_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a_5)[i*8+1] = __xlx_a_5_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a_5)[i*8+2] = __xlx_a_5_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a_5)[i*8+3] = __xlx_a_5_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_a_5)[i*8+4] = __xlx_a_5_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_a_5)[i*8+5] = __xlx_a_5_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_a_5)[i*8+6] = __xlx_a_5_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_a_5)[i*8+7] = __xlx_a_5_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_a_6
  sc_bv<64>*__xlx_a_6_output_buffer = new sc_bv<64>[__xlx_size_param_a_6];
  for (int i = 0; i < __xlx_size_param_a_6; ++i) {
    __xlx_a_6_output_buffer[i] = __xlx_a_6__input_buffer[i+__xlx_offset_param_a_6];
  }
  for (int i = 0; i < __xlx_size_param_a_6; ++i) {
    ((char*)__xlx_apatb_param_a_6)[i*8+0] = __xlx_a_6_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a_6)[i*8+1] = __xlx_a_6_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a_6)[i*8+2] = __xlx_a_6_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a_6)[i*8+3] = __xlx_a_6_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_a_6)[i*8+4] = __xlx_a_6_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_a_6)[i*8+5] = __xlx_a_6_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_a_6)[i*8+6] = __xlx_a_6_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_a_6)[i*8+7] = __xlx_a_6_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_a_7
  sc_bv<64>*__xlx_a_7_output_buffer = new sc_bv<64>[__xlx_size_param_a_7];
  for (int i = 0; i < __xlx_size_param_a_7; ++i) {
    __xlx_a_7_output_buffer[i] = __xlx_a_7__input_buffer[i+__xlx_offset_param_a_7];
  }
  for (int i = 0; i < __xlx_size_param_a_7; ++i) {
    ((char*)__xlx_apatb_param_a_7)[i*8+0] = __xlx_a_7_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a_7)[i*8+1] = __xlx_a_7_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a_7)[i*8+2] = __xlx_a_7_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a_7)[i*8+3] = __xlx_a_7_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_a_7)[i*8+4] = __xlx_a_7_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_a_7)[i*8+5] = __xlx_a_7_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_a_7)[i*8+6] = __xlx_a_7_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_a_7)[i*8+7] = __xlx_a_7_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_a_8
  sc_bv<64>*__xlx_a_8_output_buffer = new sc_bv<64>[__xlx_size_param_a_8];
  for (int i = 0; i < __xlx_size_param_a_8; ++i) {
    __xlx_a_8_output_buffer[i] = __xlx_a_8__input_buffer[i+__xlx_offset_param_a_8];
  }
  for (int i = 0; i < __xlx_size_param_a_8; ++i) {
    ((char*)__xlx_apatb_param_a_8)[i*8+0] = __xlx_a_8_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a_8)[i*8+1] = __xlx_a_8_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a_8)[i*8+2] = __xlx_a_8_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a_8)[i*8+3] = __xlx_a_8_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_a_8)[i*8+4] = __xlx_a_8_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_a_8)[i*8+5] = __xlx_a_8_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_a_8)[i*8+6] = __xlx_a_8_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_a_8)[i*8+7] = __xlx_a_8_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_a_9
  sc_bv<64>*__xlx_a_9_output_buffer = new sc_bv<64>[__xlx_size_param_a_9];
  for (int i = 0; i < __xlx_size_param_a_9; ++i) {
    __xlx_a_9_output_buffer[i] = __xlx_a_9__input_buffer[i+__xlx_offset_param_a_9];
  }
  for (int i = 0; i < __xlx_size_param_a_9; ++i) {
    ((char*)__xlx_apatb_param_a_9)[i*8+0] = __xlx_a_9_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a_9)[i*8+1] = __xlx_a_9_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a_9)[i*8+2] = __xlx_a_9_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a_9)[i*8+3] = __xlx_a_9_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_a_9)[i*8+4] = __xlx_a_9_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_a_9)[i*8+5] = __xlx_a_9_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_a_9)[i*8+6] = __xlx_a_9_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_a_9)[i*8+7] = __xlx_a_9_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_a_10
  sc_bv<64>*__xlx_a_10_output_buffer = new sc_bv<64>[__xlx_size_param_a_10];
  for (int i = 0; i < __xlx_size_param_a_10; ++i) {
    __xlx_a_10_output_buffer[i] = __xlx_a_10__input_buffer[i+__xlx_offset_param_a_10];
  }
  for (int i = 0; i < __xlx_size_param_a_10; ++i) {
    ((char*)__xlx_apatb_param_a_10)[i*8+0] = __xlx_a_10_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a_10)[i*8+1] = __xlx_a_10_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a_10)[i*8+2] = __xlx_a_10_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a_10)[i*8+3] = __xlx_a_10_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_a_10)[i*8+4] = __xlx_a_10_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_a_10)[i*8+5] = __xlx_a_10_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_a_10)[i*8+6] = __xlx_a_10_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_a_10)[i*8+7] = __xlx_a_10_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_a_11
  sc_bv<64>*__xlx_a_11_output_buffer = new sc_bv<64>[__xlx_size_param_a_11];
  for (int i = 0; i < __xlx_size_param_a_11; ++i) {
    __xlx_a_11_output_buffer[i] = __xlx_a_11__input_buffer[i+__xlx_offset_param_a_11];
  }
  for (int i = 0; i < __xlx_size_param_a_11; ++i) {
    ((char*)__xlx_apatb_param_a_11)[i*8+0] = __xlx_a_11_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a_11)[i*8+1] = __xlx_a_11_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a_11)[i*8+2] = __xlx_a_11_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a_11)[i*8+3] = __xlx_a_11_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_a_11)[i*8+4] = __xlx_a_11_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_a_11)[i*8+5] = __xlx_a_11_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_a_11)[i*8+6] = __xlx_a_11_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_a_11)[i*8+7] = __xlx_a_11_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_a_12
  sc_bv<64>*__xlx_a_12_output_buffer = new sc_bv<64>[__xlx_size_param_a_12];
  for (int i = 0; i < __xlx_size_param_a_12; ++i) {
    __xlx_a_12_output_buffer[i] = __xlx_a_12__input_buffer[i+__xlx_offset_param_a_12];
  }
  for (int i = 0; i < __xlx_size_param_a_12; ++i) {
    ((char*)__xlx_apatb_param_a_12)[i*8+0] = __xlx_a_12_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a_12)[i*8+1] = __xlx_a_12_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a_12)[i*8+2] = __xlx_a_12_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a_12)[i*8+3] = __xlx_a_12_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_a_12)[i*8+4] = __xlx_a_12_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_a_12)[i*8+5] = __xlx_a_12_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_a_12)[i*8+6] = __xlx_a_12_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_a_12)[i*8+7] = __xlx_a_12_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_a_13
  sc_bv<64>*__xlx_a_13_output_buffer = new sc_bv<64>[__xlx_size_param_a_13];
  for (int i = 0; i < __xlx_size_param_a_13; ++i) {
    __xlx_a_13_output_buffer[i] = __xlx_a_13__input_buffer[i+__xlx_offset_param_a_13];
  }
  for (int i = 0; i < __xlx_size_param_a_13; ++i) {
    ((char*)__xlx_apatb_param_a_13)[i*8+0] = __xlx_a_13_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a_13)[i*8+1] = __xlx_a_13_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a_13)[i*8+2] = __xlx_a_13_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a_13)[i*8+3] = __xlx_a_13_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_a_13)[i*8+4] = __xlx_a_13_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_a_13)[i*8+5] = __xlx_a_13_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_a_13)[i*8+6] = __xlx_a_13_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_a_13)[i*8+7] = __xlx_a_13_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_a_14
  sc_bv<64>*__xlx_a_14_output_buffer = new sc_bv<64>[__xlx_size_param_a_14];
  for (int i = 0; i < __xlx_size_param_a_14; ++i) {
    __xlx_a_14_output_buffer[i] = __xlx_a_14__input_buffer[i+__xlx_offset_param_a_14];
  }
  for (int i = 0; i < __xlx_size_param_a_14; ++i) {
    ((char*)__xlx_apatb_param_a_14)[i*8+0] = __xlx_a_14_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a_14)[i*8+1] = __xlx_a_14_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a_14)[i*8+2] = __xlx_a_14_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a_14)[i*8+3] = __xlx_a_14_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_a_14)[i*8+4] = __xlx_a_14_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_a_14)[i*8+5] = __xlx_a_14_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_a_14)[i*8+6] = __xlx_a_14_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_a_14)[i*8+7] = __xlx_a_14_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_a_15
  sc_bv<64>*__xlx_a_15_output_buffer = new sc_bv<64>[__xlx_size_param_a_15];
  for (int i = 0; i < __xlx_size_param_a_15; ++i) {
    __xlx_a_15_output_buffer[i] = __xlx_a_15__input_buffer[i+__xlx_offset_param_a_15];
  }
  for (int i = 0; i < __xlx_size_param_a_15; ++i) {
    ((char*)__xlx_apatb_param_a_15)[i*8+0] = __xlx_a_15_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a_15)[i*8+1] = __xlx_a_15_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a_15)[i*8+2] = __xlx_a_15_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a_15)[i*8+3] = __xlx_a_15_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_a_15)[i*8+4] = __xlx_a_15_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_a_15)[i*8+5] = __xlx_a_15_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_a_15)[i*8+6] = __xlx_a_15_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_a_15)[i*8+7] = __xlx_a_15_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_b_0
  sc_bv<64>*__xlx_b_0_output_buffer = new sc_bv<64>[__xlx_size_param_b_0];
  for (int i = 0; i < __xlx_size_param_b_0; ++i) {
    __xlx_b_0_output_buffer[i] = __xlx_b_0__input_buffer[i+__xlx_offset_param_b_0];
  }
  for (int i = 0; i < __xlx_size_param_b_0; ++i) {
    ((char*)__xlx_apatb_param_b_0)[i*8+0] = __xlx_b_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b_0)[i*8+1] = __xlx_b_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b_0)[i*8+2] = __xlx_b_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b_0)[i*8+3] = __xlx_b_0_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_b_0)[i*8+4] = __xlx_b_0_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_b_0)[i*8+5] = __xlx_b_0_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_b_0)[i*8+6] = __xlx_b_0_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_b_0)[i*8+7] = __xlx_b_0_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_b_1
  sc_bv<64>*__xlx_b_1_output_buffer = new sc_bv<64>[__xlx_size_param_b_1];
  for (int i = 0; i < __xlx_size_param_b_1; ++i) {
    __xlx_b_1_output_buffer[i] = __xlx_b_1__input_buffer[i+__xlx_offset_param_b_1];
  }
  for (int i = 0; i < __xlx_size_param_b_1; ++i) {
    ((char*)__xlx_apatb_param_b_1)[i*8+0] = __xlx_b_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b_1)[i*8+1] = __xlx_b_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b_1)[i*8+2] = __xlx_b_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b_1)[i*8+3] = __xlx_b_1_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_b_1)[i*8+4] = __xlx_b_1_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_b_1)[i*8+5] = __xlx_b_1_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_b_1)[i*8+6] = __xlx_b_1_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_b_1)[i*8+7] = __xlx_b_1_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_b_2
  sc_bv<64>*__xlx_b_2_output_buffer = new sc_bv<64>[__xlx_size_param_b_2];
  for (int i = 0; i < __xlx_size_param_b_2; ++i) {
    __xlx_b_2_output_buffer[i] = __xlx_b_2__input_buffer[i+__xlx_offset_param_b_2];
  }
  for (int i = 0; i < __xlx_size_param_b_2; ++i) {
    ((char*)__xlx_apatb_param_b_2)[i*8+0] = __xlx_b_2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b_2)[i*8+1] = __xlx_b_2_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b_2)[i*8+2] = __xlx_b_2_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b_2)[i*8+3] = __xlx_b_2_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_b_2)[i*8+4] = __xlx_b_2_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_b_2)[i*8+5] = __xlx_b_2_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_b_2)[i*8+6] = __xlx_b_2_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_b_2)[i*8+7] = __xlx_b_2_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_b_3
  sc_bv<64>*__xlx_b_3_output_buffer = new sc_bv<64>[__xlx_size_param_b_3];
  for (int i = 0; i < __xlx_size_param_b_3; ++i) {
    __xlx_b_3_output_buffer[i] = __xlx_b_3__input_buffer[i+__xlx_offset_param_b_3];
  }
  for (int i = 0; i < __xlx_size_param_b_3; ++i) {
    ((char*)__xlx_apatb_param_b_3)[i*8+0] = __xlx_b_3_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b_3)[i*8+1] = __xlx_b_3_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b_3)[i*8+2] = __xlx_b_3_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b_3)[i*8+3] = __xlx_b_3_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_b_3)[i*8+4] = __xlx_b_3_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_b_3)[i*8+5] = __xlx_b_3_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_b_3)[i*8+6] = __xlx_b_3_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_b_3)[i*8+7] = __xlx_b_3_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_b_4
  sc_bv<64>*__xlx_b_4_output_buffer = new sc_bv<64>[__xlx_size_param_b_4];
  for (int i = 0; i < __xlx_size_param_b_4; ++i) {
    __xlx_b_4_output_buffer[i] = __xlx_b_4__input_buffer[i+__xlx_offset_param_b_4];
  }
  for (int i = 0; i < __xlx_size_param_b_4; ++i) {
    ((char*)__xlx_apatb_param_b_4)[i*8+0] = __xlx_b_4_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b_4)[i*8+1] = __xlx_b_4_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b_4)[i*8+2] = __xlx_b_4_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b_4)[i*8+3] = __xlx_b_4_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_b_4)[i*8+4] = __xlx_b_4_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_b_4)[i*8+5] = __xlx_b_4_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_b_4)[i*8+6] = __xlx_b_4_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_b_4)[i*8+7] = __xlx_b_4_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_b_5
  sc_bv<64>*__xlx_b_5_output_buffer = new sc_bv<64>[__xlx_size_param_b_5];
  for (int i = 0; i < __xlx_size_param_b_5; ++i) {
    __xlx_b_5_output_buffer[i] = __xlx_b_5__input_buffer[i+__xlx_offset_param_b_5];
  }
  for (int i = 0; i < __xlx_size_param_b_5; ++i) {
    ((char*)__xlx_apatb_param_b_5)[i*8+0] = __xlx_b_5_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b_5)[i*8+1] = __xlx_b_5_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b_5)[i*8+2] = __xlx_b_5_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b_5)[i*8+3] = __xlx_b_5_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_b_5)[i*8+4] = __xlx_b_5_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_b_5)[i*8+5] = __xlx_b_5_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_b_5)[i*8+6] = __xlx_b_5_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_b_5)[i*8+7] = __xlx_b_5_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_b_6
  sc_bv<64>*__xlx_b_6_output_buffer = new sc_bv<64>[__xlx_size_param_b_6];
  for (int i = 0; i < __xlx_size_param_b_6; ++i) {
    __xlx_b_6_output_buffer[i] = __xlx_b_6__input_buffer[i+__xlx_offset_param_b_6];
  }
  for (int i = 0; i < __xlx_size_param_b_6; ++i) {
    ((char*)__xlx_apatb_param_b_6)[i*8+0] = __xlx_b_6_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b_6)[i*8+1] = __xlx_b_6_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b_6)[i*8+2] = __xlx_b_6_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b_6)[i*8+3] = __xlx_b_6_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_b_6)[i*8+4] = __xlx_b_6_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_b_6)[i*8+5] = __xlx_b_6_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_b_6)[i*8+6] = __xlx_b_6_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_b_6)[i*8+7] = __xlx_b_6_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_b_7
  sc_bv<64>*__xlx_b_7_output_buffer = new sc_bv<64>[__xlx_size_param_b_7];
  for (int i = 0; i < __xlx_size_param_b_7; ++i) {
    __xlx_b_7_output_buffer[i] = __xlx_b_7__input_buffer[i+__xlx_offset_param_b_7];
  }
  for (int i = 0; i < __xlx_size_param_b_7; ++i) {
    ((char*)__xlx_apatb_param_b_7)[i*8+0] = __xlx_b_7_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b_7)[i*8+1] = __xlx_b_7_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b_7)[i*8+2] = __xlx_b_7_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b_7)[i*8+3] = __xlx_b_7_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_b_7)[i*8+4] = __xlx_b_7_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_b_7)[i*8+5] = __xlx_b_7_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_b_7)[i*8+6] = __xlx_b_7_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_b_7)[i*8+7] = __xlx_b_7_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_b_8
  sc_bv<64>*__xlx_b_8_output_buffer = new sc_bv<64>[__xlx_size_param_b_8];
  for (int i = 0; i < __xlx_size_param_b_8; ++i) {
    __xlx_b_8_output_buffer[i] = __xlx_b_8__input_buffer[i+__xlx_offset_param_b_8];
  }
  for (int i = 0; i < __xlx_size_param_b_8; ++i) {
    ((char*)__xlx_apatb_param_b_8)[i*8+0] = __xlx_b_8_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b_8)[i*8+1] = __xlx_b_8_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b_8)[i*8+2] = __xlx_b_8_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b_8)[i*8+3] = __xlx_b_8_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_b_8)[i*8+4] = __xlx_b_8_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_b_8)[i*8+5] = __xlx_b_8_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_b_8)[i*8+6] = __xlx_b_8_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_b_8)[i*8+7] = __xlx_b_8_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_b_9
  sc_bv<64>*__xlx_b_9_output_buffer = new sc_bv<64>[__xlx_size_param_b_9];
  for (int i = 0; i < __xlx_size_param_b_9; ++i) {
    __xlx_b_9_output_buffer[i] = __xlx_b_9__input_buffer[i+__xlx_offset_param_b_9];
  }
  for (int i = 0; i < __xlx_size_param_b_9; ++i) {
    ((char*)__xlx_apatb_param_b_9)[i*8+0] = __xlx_b_9_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b_9)[i*8+1] = __xlx_b_9_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b_9)[i*8+2] = __xlx_b_9_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b_9)[i*8+3] = __xlx_b_9_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_b_9)[i*8+4] = __xlx_b_9_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_b_9)[i*8+5] = __xlx_b_9_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_b_9)[i*8+6] = __xlx_b_9_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_b_9)[i*8+7] = __xlx_b_9_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_b_10
  sc_bv<64>*__xlx_b_10_output_buffer = new sc_bv<64>[__xlx_size_param_b_10];
  for (int i = 0; i < __xlx_size_param_b_10; ++i) {
    __xlx_b_10_output_buffer[i] = __xlx_b_10__input_buffer[i+__xlx_offset_param_b_10];
  }
  for (int i = 0; i < __xlx_size_param_b_10; ++i) {
    ((char*)__xlx_apatb_param_b_10)[i*8+0] = __xlx_b_10_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b_10)[i*8+1] = __xlx_b_10_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b_10)[i*8+2] = __xlx_b_10_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b_10)[i*8+3] = __xlx_b_10_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_b_10)[i*8+4] = __xlx_b_10_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_b_10)[i*8+5] = __xlx_b_10_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_b_10)[i*8+6] = __xlx_b_10_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_b_10)[i*8+7] = __xlx_b_10_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_b_11
  sc_bv<64>*__xlx_b_11_output_buffer = new sc_bv<64>[__xlx_size_param_b_11];
  for (int i = 0; i < __xlx_size_param_b_11; ++i) {
    __xlx_b_11_output_buffer[i] = __xlx_b_11__input_buffer[i+__xlx_offset_param_b_11];
  }
  for (int i = 0; i < __xlx_size_param_b_11; ++i) {
    ((char*)__xlx_apatb_param_b_11)[i*8+0] = __xlx_b_11_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b_11)[i*8+1] = __xlx_b_11_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b_11)[i*8+2] = __xlx_b_11_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b_11)[i*8+3] = __xlx_b_11_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_b_11)[i*8+4] = __xlx_b_11_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_b_11)[i*8+5] = __xlx_b_11_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_b_11)[i*8+6] = __xlx_b_11_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_b_11)[i*8+7] = __xlx_b_11_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_b_12
  sc_bv<64>*__xlx_b_12_output_buffer = new sc_bv<64>[__xlx_size_param_b_12];
  for (int i = 0; i < __xlx_size_param_b_12; ++i) {
    __xlx_b_12_output_buffer[i] = __xlx_b_12__input_buffer[i+__xlx_offset_param_b_12];
  }
  for (int i = 0; i < __xlx_size_param_b_12; ++i) {
    ((char*)__xlx_apatb_param_b_12)[i*8+0] = __xlx_b_12_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b_12)[i*8+1] = __xlx_b_12_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b_12)[i*8+2] = __xlx_b_12_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b_12)[i*8+3] = __xlx_b_12_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_b_12)[i*8+4] = __xlx_b_12_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_b_12)[i*8+5] = __xlx_b_12_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_b_12)[i*8+6] = __xlx_b_12_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_b_12)[i*8+7] = __xlx_b_12_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_b_13
  sc_bv<64>*__xlx_b_13_output_buffer = new sc_bv<64>[__xlx_size_param_b_13];
  for (int i = 0; i < __xlx_size_param_b_13; ++i) {
    __xlx_b_13_output_buffer[i] = __xlx_b_13__input_buffer[i+__xlx_offset_param_b_13];
  }
  for (int i = 0; i < __xlx_size_param_b_13; ++i) {
    ((char*)__xlx_apatb_param_b_13)[i*8+0] = __xlx_b_13_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b_13)[i*8+1] = __xlx_b_13_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b_13)[i*8+2] = __xlx_b_13_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b_13)[i*8+3] = __xlx_b_13_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_b_13)[i*8+4] = __xlx_b_13_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_b_13)[i*8+5] = __xlx_b_13_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_b_13)[i*8+6] = __xlx_b_13_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_b_13)[i*8+7] = __xlx_b_13_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_b_14
  sc_bv<64>*__xlx_b_14_output_buffer = new sc_bv<64>[__xlx_size_param_b_14];
  for (int i = 0; i < __xlx_size_param_b_14; ++i) {
    __xlx_b_14_output_buffer[i] = __xlx_b_14__input_buffer[i+__xlx_offset_param_b_14];
  }
  for (int i = 0; i < __xlx_size_param_b_14; ++i) {
    ((char*)__xlx_apatb_param_b_14)[i*8+0] = __xlx_b_14_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b_14)[i*8+1] = __xlx_b_14_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b_14)[i*8+2] = __xlx_b_14_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b_14)[i*8+3] = __xlx_b_14_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_b_14)[i*8+4] = __xlx_b_14_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_b_14)[i*8+5] = __xlx_b_14_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_b_14)[i*8+6] = __xlx_b_14_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_b_14)[i*8+7] = __xlx_b_14_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_b_15
  sc_bv<64>*__xlx_b_15_output_buffer = new sc_bv<64>[__xlx_size_param_b_15];
  for (int i = 0; i < __xlx_size_param_b_15; ++i) {
    __xlx_b_15_output_buffer[i] = __xlx_b_15__input_buffer[i+__xlx_offset_param_b_15];
  }
  for (int i = 0; i < __xlx_size_param_b_15; ++i) {
    ((char*)__xlx_apatb_param_b_15)[i*8+0] = __xlx_b_15_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b_15)[i*8+1] = __xlx_b_15_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b_15)[i*8+2] = __xlx_b_15_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b_15)[i*8+3] = __xlx_b_15_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_b_15)[i*8+4] = __xlx_b_15_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_b_15)[i*8+5] = __xlx_b_15_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_b_15)[i*8+6] = __xlx_b_15_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_b_15)[i*8+7] = __xlx_b_15_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_c_0
  sc_bv<64>*__xlx_c_0_output_buffer = new sc_bv<64>[__xlx_size_param_c_0];
  for (int i = 0; i < __xlx_size_param_c_0; ++i) {
    __xlx_c_0_output_buffer[i] = __xlx_c_0__input_buffer[i+__xlx_offset_param_c_0];
  }
  for (int i = 0; i < __xlx_size_param_c_0; ++i) {
    ((char*)__xlx_apatb_param_c_0)[i*8+0] = __xlx_c_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c_0)[i*8+1] = __xlx_c_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c_0)[i*8+2] = __xlx_c_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c_0)[i*8+3] = __xlx_c_0_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_c_0)[i*8+4] = __xlx_c_0_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_c_0)[i*8+5] = __xlx_c_0_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_c_0)[i*8+6] = __xlx_c_0_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_c_0)[i*8+7] = __xlx_c_0_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_c_1
  sc_bv<64>*__xlx_c_1_output_buffer = new sc_bv<64>[__xlx_size_param_c_1];
  for (int i = 0; i < __xlx_size_param_c_1; ++i) {
    __xlx_c_1_output_buffer[i] = __xlx_c_1__input_buffer[i+__xlx_offset_param_c_1];
  }
  for (int i = 0; i < __xlx_size_param_c_1; ++i) {
    ((char*)__xlx_apatb_param_c_1)[i*8+0] = __xlx_c_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c_1)[i*8+1] = __xlx_c_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c_1)[i*8+2] = __xlx_c_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c_1)[i*8+3] = __xlx_c_1_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_c_1)[i*8+4] = __xlx_c_1_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_c_1)[i*8+5] = __xlx_c_1_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_c_1)[i*8+6] = __xlx_c_1_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_c_1)[i*8+7] = __xlx_c_1_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_c_2
  sc_bv<64>*__xlx_c_2_output_buffer = new sc_bv<64>[__xlx_size_param_c_2];
  for (int i = 0; i < __xlx_size_param_c_2; ++i) {
    __xlx_c_2_output_buffer[i] = __xlx_c_2__input_buffer[i+__xlx_offset_param_c_2];
  }
  for (int i = 0; i < __xlx_size_param_c_2; ++i) {
    ((char*)__xlx_apatb_param_c_2)[i*8+0] = __xlx_c_2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c_2)[i*8+1] = __xlx_c_2_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c_2)[i*8+2] = __xlx_c_2_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c_2)[i*8+3] = __xlx_c_2_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_c_2)[i*8+4] = __xlx_c_2_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_c_2)[i*8+5] = __xlx_c_2_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_c_2)[i*8+6] = __xlx_c_2_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_c_2)[i*8+7] = __xlx_c_2_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_c_3
  sc_bv<64>*__xlx_c_3_output_buffer = new sc_bv<64>[__xlx_size_param_c_3];
  for (int i = 0; i < __xlx_size_param_c_3; ++i) {
    __xlx_c_3_output_buffer[i] = __xlx_c_3__input_buffer[i+__xlx_offset_param_c_3];
  }
  for (int i = 0; i < __xlx_size_param_c_3; ++i) {
    ((char*)__xlx_apatb_param_c_3)[i*8+0] = __xlx_c_3_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c_3)[i*8+1] = __xlx_c_3_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c_3)[i*8+2] = __xlx_c_3_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c_3)[i*8+3] = __xlx_c_3_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_c_3)[i*8+4] = __xlx_c_3_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_c_3)[i*8+5] = __xlx_c_3_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_c_3)[i*8+6] = __xlx_c_3_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_c_3)[i*8+7] = __xlx_c_3_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_c_4
  sc_bv<64>*__xlx_c_4_output_buffer = new sc_bv<64>[__xlx_size_param_c_4];
  for (int i = 0; i < __xlx_size_param_c_4; ++i) {
    __xlx_c_4_output_buffer[i] = __xlx_c_4__input_buffer[i+__xlx_offset_param_c_4];
  }
  for (int i = 0; i < __xlx_size_param_c_4; ++i) {
    ((char*)__xlx_apatb_param_c_4)[i*8+0] = __xlx_c_4_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c_4)[i*8+1] = __xlx_c_4_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c_4)[i*8+2] = __xlx_c_4_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c_4)[i*8+3] = __xlx_c_4_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_c_4)[i*8+4] = __xlx_c_4_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_c_4)[i*8+5] = __xlx_c_4_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_c_4)[i*8+6] = __xlx_c_4_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_c_4)[i*8+7] = __xlx_c_4_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_c_5
  sc_bv<64>*__xlx_c_5_output_buffer = new sc_bv<64>[__xlx_size_param_c_5];
  for (int i = 0; i < __xlx_size_param_c_5; ++i) {
    __xlx_c_5_output_buffer[i] = __xlx_c_5__input_buffer[i+__xlx_offset_param_c_5];
  }
  for (int i = 0; i < __xlx_size_param_c_5; ++i) {
    ((char*)__xlx_apatb_param_c_5)[i*8+0] = __xlx_c_5_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c_5)[i*8+1] = __xlx_c_5_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c_5)[i*8+2] = __xlx_c_5_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c_5)[i*8+3] = __xlx_c_5_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_c_5)[i*8+4] = __xlx_c_5_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_c_5)[i*8+5] = __xlx_c_5_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_c_5)[i*8+6] = __xlx_c_5_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_c_5)[i*8+7] = __xlx_c_5_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_c_6
  sc_bv<64>*__xlx_c_6_output_buffer = new sc_bv<64>[__xlx_size_param_c_6];
  for (int i = 0; i < __xlx_size_param_c_6; ++i) {
    __xlx_c_6_output_buffer[i] = __xlx_c_6__input_buffer[i+__xlx_offset_param_c_6];
  }
  for (int i = 0; i < __xlx_size_param_c_6; ++i) {
    ((char*)__xlx_apatb_param_c_6)[i*8+0] = __xlx_c_6_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c_6)[i*8+1] = __xlx_c_6_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c_6)[i*8+2] = __xlx_c_6_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c_6)[i*8+3] = __xlx_c_6_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_c_6)[i*8+4] = __xlx_c_6_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_c_6)[i*8+5] = __xlx_c_6_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_c_6)[i*8+6] = __xlx_c_6_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_c_6)[i*8+7] = __xlx_c_6_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_c_7
  sc_bv<64>*__xlx_c_7_output_buffer = new sc_bv<64>[__xlx_size_param_c_7];
  for (int i = 0; i < __xlx_size_param_c_7; ++i) {
    __xlx_c_7_output_buffer[i] = __xlx_c_7__input_buffer[i+__xlx_offset_param_c_7];
  }
  for (int i = 0; i < __xlx_size_param_c_7; ++i) {
    ((char*)__xlx_apatb_param_c_7)[i*8+0] = __xlx_c_7_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c_7)[i*8+1] = __xlx_c_7_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c_7)[i*8+2] = __xlx_c_7_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c_7)[i*8+3] = __xlx_c_7_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_c_7)[i*8+4] = __xlx_c_7_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_c_7)[i*8+5] = __xlx_c_7_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_c_7)[i*8+6] = __xlx_c_7_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_c_7)[i*8+7] = __xlx_c_7_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_c_8
  sc_bv<64>*__xlx_c_8_output_buffer = new sc_bv<64>[__xlx_size_param_c_8];
  for (int i = 0; i < __xlx_size_param_c_8; ++i) {
    __xlx_c_8_output_buffer[i] = __xlx_c_8__input_buffer[i+__xlx_offset_param_c_8];
  }
  for (int i = 0; i < __xlx_size_param_c_8; ++i) {
    ((char*)__xlx_apatb_param_c_8)[i*8+0] = __xlx_c_8_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c_8)[i*8+1] = __xlx_c_8_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c_8)[i*8+2] = __xlx_c_8_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c_8)[i*8+3] = __xlx_c_8_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_c_8)[i*8+4] = __xlx_c_8_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_c_8)[i*8+5] = __xlx_c_8_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_c_8)[i*8+6] = __xlx_c_8_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_c_8)[i*8+7] = __xlx_c_8_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_c_9
  sc_bv<64>*__xlx_c_9_output_buffer = new sc_bv<64>[__xlx_size_param_c_9];
  for (int i = 0; i < __xlx_size_param_c_9; ++i) {
    __xlx_c_9_output_buffer[i] = __xlx_c_9__input_buffer[i+__xlx_offset_param_c_9];
  }
  for (int i = 0; i < __xlx_size_param_c_9; ++i) {
    ((char*)__xlx_apatb_param_c_9)[i*8+0] = __xlx_c_9_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c_9)[i*8+1] = __xlx_c_9_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c_9)[i*8+2] = __xlx_c_9_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c_9)[i*8+3] = __xlx_c_9_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_c_9)[i*8+4] = __xlx_c_9_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_c_9)[i*8+5] = __xlx_c_9_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_c_9)[i*8+6] = __xlx_c_9_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_c_9)[i*8+7] = __xlx_c_9_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_c_10
  sc_bv<64>*__xlx_c_10_output_buffer = new sc_bv<64>[__xlx_size_param_c_10];
  for (int i = 0; i < __xlx_size_param_c_10; ++i) {
    __xlx_c_10_output_buffer[i] = __xlx_c_10__input_buffer[i+__xlx_offset_param_c_10];
  }
  for (int i = 0; i < __xlx_size_param_c_10; ++i) {
    ((char*)__xlx_apatb_param_c_10)[i*8+0] = __xlx_c_10_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c_10)[i*8+1] = __xlx_c_10_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c_10)[i*8+2] = __xlx_c_10_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c_10)[i*8+3] = __xlx_c_10_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_c_10)[i*8+4] = __xlx_c_10_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_c_10)[i*8+5] = __xlx_c_10_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_c_10)[i*8+6] = __xlx_c_10_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_c_10)[i*8+7] = __xlx_c_10_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_c_11
  sc_bv<64>*__xlx_c_11_output_buffer = new sc_bv<64>[__xlx_size_param_c_11];
  for (int i = 0; i < __xlx_size_param_c_11; ++i) {
    __xlx_c_11_output_buffer[i] = __xlx_c_11__input_buffer[i+__xlx_offset_param_c_11];
  }
  for (int i = 0; i < __xlx_size_param_c_11; ++i) {
    ((char*)__xlx_apatb_param_c_11)[i*8+0] = __xlx_c_11_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c_11)[i*8+1] = __xlx_c_11_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c_11)[i*8+2] = __xlx_c_11_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c_11)[i*8+3] = __xlx_c_11_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_c_11)[i*8+4] = __xlx_c_11_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_c_11)[i*8+5] = __xlx_c_11_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_c_11)[i*8+6] = __xlx_c_11_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_c_11)[i*8+7] = __xlx_c_11_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_c_12
  sc_bv<64>*__xlx_c_12_output_buffer = new sc_bv<64>[__xlx_size_param_c_12];
  for (int i = 0; i < __xlx_size_param_c_12; ++i) {
    __xlx_c_12_output_buffer[i] = __xlx_c_12__input_buffer[i+__xlx_offset_param_c_12];
  }
  for (int i = 0; i < __xlx_size_param_c_12; ++i) {
    ((char*)__xlx_apatb_param_c_12)[i*8+0] = __xlx_c_12_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c_12)[i*8+1] = __xlx_c_12_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c_12)[i*8+2] = __xlx_c_12_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c_12)[i*8+3] = __xlx_c_12_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_c_12)[i*8+4] = __xlx_c_12_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_c_12)[i*8+5] = __xlx_c_12_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_c_12)[i*8+6] = __xlx_c_12_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_c_12)[i*8+7] = __xlx_c_12_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_c_13
  sc_bv<64>*__xlx_c_13_output_buffer = new sc_bv<64>[__xlx_size_param_c_13];
  for (int i = 0; i < __xlx_size_param_c_13; ++i) {
    __xlx_c_13_output_buffer[i] = __xlx_c_13__input_buffer[i+__xlx_offset_param_c_13];
  }
  for (int i = 0; i < __xlx_size_param_c_13; ++i) {
    ((char*)__xlx_apatb_param_c_13)[i*8+0] = __xlx_c_13_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c_13)[i*8+1] = __xlx_c_13_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c_13)[i*8+2] = __xlx_c_13_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c_13)[i*8+3] = __xlx_c_13_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_c_13)[i*8+4] = __xlx_c_13_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_c_13)[i*8+5] = __xlx_c_13_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_c_13)[i*8+6] = __xlx_c_13_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_c_13)[i*8+7] = __xlx_c_13_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_c_14
  sc_bv<64>*__xlx_c_14_output_buffer = new sc_bv<64>[__xlx_size_param_c_14];
  for (int i = 0; i < __xlx_size_param_c_14; ++i) {
    __xlx_c_14_output_buffer[i] = __xlx_c_14__input_buffer[i+__xlx_offset_param_c_14];
  }
  for (int i = 0; i < __xlx_size_param_c_14; ++i) {
    ((char*)__xlx_apatb_param_c_14)[i*8+0] = __xlx_c_14_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c_14)[i*8+1] = __xlx_c_14_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c_14)[i*8+2] = __xlx_c_14_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c_14)[i*8+3] = __xlx_c_14_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_c_14)[i*8+4] = __xlx_c_14_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_c_14)[i*8+5] = __xlx_c_14_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_c_14)[i*8+6] = __xlx_c_14_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_c_14)[i*8+7] = __xlx_c_14_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_c_15
  sc_bv<64>*__xlx_c_15_output_buffer = new sc_bv<64>[__xlx_size_param_c_15];
  for (int i = 0; i < __xlx_size_param_c_15; ++i) {
    __xlx_c_15_output_buffer[i] = __xlx_c_15__input_buffer[i+__xlx_offset_param_c_15];
  }
  for (int i = 0; i < __xlx_size_param_c_15; ++i) {
    ((char*)__xlx_apatb_param_c_15)[i*8+0] = __xlx_c_15_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c_15)[i*8+1] = __xlx_c_15_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c_15)[i*8+2] = __xlx_c_15_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c_15)[i*8+3] = __xlx_c_15_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_c_15)[i*8+4] = __xlx_c_15_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_c_15)[i*8+5] = __xlx_c_15_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_c_15)[i*8+6] = __xlx_c_15_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_c_15)[i*8+7] = __xlx_c_15_output_buffer[i].range(63, 56).to_uint();
  }
}