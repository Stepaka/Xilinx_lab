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
extern "C" void kp_502_15(int*, int*, int*, int*, int*);
extern "C" void apatb_kp_502_15_hw(volatile void * __xlx_apatb_param_r, volatile void * __xlx_apatb_param_a, volatile void * __xlx_apatb_param_b, volatile void * __xlx_apatb_param_c, volatile void * __xlx_apatb_param_x) {
  // Collect __xlx_r__tmp_vec
  vector<sc_bv<32> >__xlx_r__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_r)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_r)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_r)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_r)[j*4+3];
    __xlx_r__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_r = 8;
  int __xlx_offset_param_r = 0;
  int __xlx_offset_byte_param_r = 0*4;
  int* __xlx_r__input_buffer= new int[__xlx_r__tmp_vec.size()];
  for (int i = 0; i < __xlx_r__tmp_vec.size(); ++i) {
    __xlx_r__input_buffer[i] = __xlx_r__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_a__tmp_vec
  vector<sc_bv<32> >__xlx_a__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a)[j*4+3];
    __xlx_a__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a = 8;
  int __xlx_offset_param_a = 0;
  int __xlx_offset_byte_param_a = 0*4;
  int* __xlx_a__input_buffer= new int[__xlx_a__tmp_vec.size()];
  for (int i = 0; i < __xlx_a__tmp_vec.size(); ++i) {
    __xlx_a__input_buffer[i] = __xlx_a__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_b__tmp_vec
  vector<sc_bv<32> >__xlx_b__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b)[j*4+3];
    __xlx_b__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b = 8;
  int __xlx_offset_param_b = 0;
  int __xlx_offset_byte_param_b = 0*4;
  int* __xlx_b__input_buffer= new int[__xlx_b__tmp_vec.size()];
  for (int i = 0; i < __xlx_b__tmp_vec.size(); ++i) {
    __xlx_b__input_buffer[i] = __xlx_b__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_c__tmp_vec
  vector<sc_bv<32> >__xlx_c__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c)[j*4+3];
    __xlx_c__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c = 8;
  int __xlx_offset_param_c = 0;
  int __xlx_offset_byte_param_c = 0*4;
  int* __xlx_c__input_buffer= new int[__xlx_c__tmp_vec.size()];
  for (int i = 0; i < __xlx_c__tmp_vec.size(); ++i) {
    __xlx_c__input_buffer[i] = __xlx_c__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_x__tmp_vec
  vector<sc_bv<32> >__xlx_x__tmp_vec;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_x)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_x)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_x)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_x)[j*4+3];
    __xlx_x__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_x = 8;
  int __xlx_offset_param_x = 0;
  int __xlx_offset_byte_param_x = 0*4;
  int* __xlx_x__input_buffer= new int[__xlx_x__tmp_vec.size()];
  for (int i = 0; i < __xlx_x__tmp_vec.size(); ++i) {
    __xlx_x__input_buffer[i] = __xlx_x__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  kp_502_15(__xlx_r__input_buffer, __xlx_a__input_buffer, __xlx_b__input_buffer, __xlx_c__input_buffer, __xlx_x__input_buffer);
// print __xlx_apatb_param_r
  sc_bv<32>*__xlx_r_output_buffer = new sc_bv<32>[__xlx_size_param_r];
  for (int i = 0; i < __xlx_size_param_r; ++i) {
    __xlx_r_output_buffer[i] = __xlx_r__input_buffer[i+__xlx_offset_param_r];
  }
  for (int i = 0; i < __xlx_size_param_r; ++i) {
    ((char*)__xlx_apatb_param_r)[i*4+0] = __xlx_r_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_r)[i*4+1] = __xlx_r_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_r)[i*4+2] = __xlx_r_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_r)[i*4+3] = __xlx_r_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_a
  sc_bv<32>*__xlx_a_output_buffer = new sc_bv<32>[__xlx_size_param_a];
  for (int i = 0; i < __xlx_size_param_a; ++i) {
    __xlx_a_output_buffer[i] = __xlx_a__input_buffer[i+__xlx_offset_param_a];
  }
  for (int i = 0; i < __xlx_size_param_a; ++i) {
    ((char*)__xlx_apatb_param_a)[i*4+0] = __xlx_a_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a)[i*4+1] = __xlx_a_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a)[i*4+2] = __xlx_a_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a)[i*4+3] = __xlx_a_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_b
  sc_bv<32>*__xlx_b_output_buffer = new sc_bv<32>[__xlx_size_param_b];
  for (int i = 0; i < __xlx_size_param_b; ++i) {
    __xlx_b_output_buffer[i] = __xlx_b__input_buffer[i+__xlx_offset_param_b];
  }
  for (int i = 0; i < __xlx_size_param_b; ++i) {
    ((char*)__xlx_apatb_param_b)[i*4+0] = __xlx_b_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b)[i*4+1] = __xlx_b_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b)[i*4+2] = __xlx_b_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b)[i*4+3] = __xlx_b_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_c
  sc_bv<32>*__xlx_c_output_buffer = new sc_bv<32>[__xlx_size_param_c];
  for (int i = 0; i < __xlx_size_param_c; ++i) {
    __xlx_c_output_buffer[i] = __xlx_c__input_buffer[i+__xlx_offset_param_c];
  }
  for (int i = 0; i < __xlx_size_param_c; ++i) {
    ((char*)__xlx_apatb_param_c)[i*4+0] = __xlx_c_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c)[i*4+1] = __xlx_c_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c)[i*4+2] = __xlx_c_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c)[i*4+3] = __xlx_c_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_x
  sc_bv<32>*__xlx_x_output_buffer = new sc_bv<32>[__xlx_size_param_x];
  for (int i = 0; i < __xlx_size_param_x; ++i) {
    __xlx_x_output_buffer[i] = __xlx_x__input_buffer[i+__xlx_offset_param_x];
  }
  for (int i = 0; i < __xlx_size_param_x; ++i) {
    ((char*)__xlx_apatb_param_x)[i*4+0] = __xlx_x_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_x)[i*4+1] = __xlx_x_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_x)[i*4+2] = __xlx_x_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_x)[i*4+3] = __xlx_x_output_buffer[i].range(31, 24).to_uint();
  }
}
