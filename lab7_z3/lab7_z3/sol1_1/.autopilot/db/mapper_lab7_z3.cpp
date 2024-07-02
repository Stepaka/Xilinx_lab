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
extern "C" void lab7_z3(long long*, long long*, long long*);
extern "C" void apatb_lab7_z3_hw(volatile void * __xlx_apatb_param_a, volatile void * __xlx_apatb_param_b, volatile void * __xlx_apatb_param_c) {
  // Collect __xlx_a__tmp_vec
  vector<sc_bv<64> >__xlx_a__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_a)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_a)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_a)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_a)[j*8+7];
    __xlx_a__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a = 128;
  int __xlx_offset_param_a = 0;
  int __xlx_offset_byte_param_a = 0*8;
  long long* __xlx_a__input_buffer= new long long[__xlx_a__tmp_vec.size()];
  for (int i = 0; i < __xlx_a__tmp_vec.size(); ++i) {
    __xlx_a__input_buffer[i] = __xlx_a__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_b__tmp_vec
  vector<sc_bv<64> >__xlx_b__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_b)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_b)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_b)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_b)[j*8+7];
    __xlx_b__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b = 128;
  int __xlx_offset_param_b = 0;
  int __xlx_offset_byte_param_b = 0*8;
  long long* __xlx_b__input_buffer= new long long[__xlx_b__tmp_vec.size()];
  for (int i = 0; i < __xlx_b__tmp_vec.size(); ++i) {
    __xlx_b__input_buffer[i] = __xlx_b__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_c__tmp_vec
  vector<sc_bv<64> >__xlx_c__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_c)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_c)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_c)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_c)[j*8+7];
    __xlx_c__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c = 128;
  int __xlx_offset_param_c = 0;
  int __xlx_offset_byte_param_c = 0*8;
  long long* __xlx_c__input_buffer= new long long[__xlx_c__tmp_vec.size()];
  for (int i = 0; i < __xlx_c__tmp_vec.size(); ++i) {
    __xlx_c__input_buffer[i] = __xlx_c__tmp_vec[i].range(63, 0).to_uint64();
  }
  // DUT call
  lab7_z3(__xlx_a__input_buffer, __xlx_b__input_buffer, __xlx_c__input_buffer);
// print __xlx_apatb_param_a
  sc_bv<64>*__xlx_a_output_buffer = new sc_bv<64>[__xlx_size_param_a];
  for (int i = 0; i < __xlx_size_param_a; ++i) {
    __xlx_a_output_buffer[i] = __xlx_a__input_buffer[i+__xlx_offset_param_a];
  }
  for (int i = 0; i < __xlx_size_param_a; ++i) {
    ((char*)__xlx_apatb_param_a)[i*8+0] = __xlx_a_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a)[i*8+1] = __xlx_a_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a)[i*8+2] = __xlx_a_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a)[i*8+3] = __xlx_a_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_a)[i*8+4] = __xlx_a_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_a)[i*8+5] = __xlx_a_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_a)[i*8+6] = __xlx_a_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_a)[i*8+7] = __xlx_a_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_b
  sc_bv<64>*__xlx_b_output_buffer = new sc_bv<64>[__xlx_size_param_b];
  for (int i = 0; i < __xlx_size_param_b; ++i) {
    __xlx_b_output_buffer[i] = __xlx_b__input_buffer[i+__xlx_offset_param_b];
  }
  for (int i = 0; i < __xlx_size_param_b; ++i) {
    ((char*)__xlx_apatb_param_b)[i*8+0] = __xlx_b_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b)[i*8+1] = __xlx_b_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b)[i*8+2] = __xlx_b_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b)[i*8+3] = __xlx_b_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_b)[i*8+4] = __xlx_b_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_b)[i*8+5] = __xlx_b_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_b)[i*8+6] = __xlx_b_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_b)[i*8+7] = __xlx_b_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_c
  sc_bv<64>*__xlx_c_output_buffer = new sc_bv<64>[__xlx_size_param_c];
  for (int i = 0; i < __xlx_size_param_c; ++i) {
    __xlx_c_output_buffer[i] = __xlx_c__input_buffer[i+__xlx_offset_param_c];
  }
  for (int i = 0; i < __xlx_size_param_c; ++i) {
    ((char*)__xlx_apatb_param_c)[i*8+0] = __xlx_c_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c)[i*8+1] = __xlx_c_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c)[i*8+2] = __xlx_c_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c)[i*8+3] = __xlx_c_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_c)[i*8+4] = __xlx_c_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_c)[i*8+5] = __xlx_c_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_c)[i*8+6] = __xlx_c_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_c)[i*8+7] = __xlx_c_output_buffer[i].range(63, 56).to_uint();
  }
}
