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
extern "C" void kp_502_15(int*, int*, int*, int*, int*, int*, int*, int*, int*, int*);
extern "C" void apatb_kp_502_15_hw(volatile void * __xlx_apatb_param_r_0, volatile void * __xlx_apatb_param_r_1, volatile void * __xlx_apatb_param_a_0, volatile void * __xlx_apatb_param_a_1, volatile void * __xlx_apatb_param_b_0, volatile void * __xlx_apatb_param_b_1, volatile void * __xlx_apatb_param_c_0, volatile void * __xlx_apatb_param_c_1, volatile void * __xlx_apatb_param_x_0, volatile void * __xlx_apatb_param_x_1) {
  // Collect __xlx_r_0__tmp_vec
  vector<sc_bv<32> >__xlx_r_0__tmp_vec;
  for (int j = 0, e = 4; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_r_0)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_r_0)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_r_0)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_r_0)[j*4+3];
    __xlx_r_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_r_0 = 4;
  int __xlx_offset_param_r_0 = 0;
  int __xlx_offset_byte_param_r_0 = 0*4;
  int* __xlx_r_0__input_buffer= new int[__xlx_r_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_r_0__tmp_vec.size(); ++i) {
    __xlx_r_0__input_buffer[i] = __xlx_r_0__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_r_1__tmp_vec
  vector<sc_bv<32> >__xlx_r_1__tmp_vec;
  for (int j = 0, e = 4; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_r_1)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_r_1)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_r_1)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_r_1)[j*4+3];
    __xlx_r_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_r_1 = 4;
  int __xlx_offset_param_r_1 = 0;
  int __xlx_offset_byte_param_r_1 = 0*4;
  int* __xlx_r_1__input_buffer= new int[__xlx_r_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_r_1__tmp_vec.size(); ++i) {
    __xlx_r_1__input_buffer[i] = __xlx_r_1__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_a_0__tmp_vec
  vector<sc_bv<32> >__xlx_a_0__tmp_vec;
  for (int j = 0, e = 4; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a_0)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a_0)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a_0)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a_0)[j*4+3];
    __xlx_a_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a_0 = 4;
  int __xlx_offset_param_a_0 = 0;
  int __xlx_offset_byte_param_a_0 = 0*4;
  int* __xlx_a_0__input_buffer= new int[__xlx_a_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_a_0__tmp_vec.size(); ++i) {
    __xlx_a_0__input_buffer[i] = __xlx_a_0__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_a_1__tmp_vec
  vector<sc_bv<32> >__xlx_a_1__tmp_vec;
  for (int j = 0, e = 4; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_a_1)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_a_1)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_a_1)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_a_1)[j*4+3];
    __xlx_a_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_a_1 = 4;
  int __xlx_offset_param_a_1 = 0;
  int __xlx_offset_byte_param_a_1 = 0*4;
  int* __xlx_a_1__input_buffer= new int[__xlx_a_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_a_1__tmp_vec.size(); ++i) {
    __xlx_a_1__input_buffer[i] = __xlx_a_1__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_b_0__tmp_vec
  vector<sc_bv<32> >__xlx_b_0__tmp_vec;
  for (int j = 0, e = 4; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b_0)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b_0)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b_0)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b_0)[j*4+3];
    __xlx_b_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b_0 = 4;
  int __xlx_offset_param_b_0 = 0;
  int __xlx_offset_byte_param_b_0 = 0*4;
  int* __xlx_b_0__input_buffer= new int[__xlx_b_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_b_0__tmp_vec.size(); ++i) {
    __xlx_b_0__input_buffer[i] = __xlx_b_0__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_b_1__tmp_vec
  vector<sc_bv<32> >__xlx_b_1__tmp_vec;
  for (int j = 0, e = 4; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_b_1)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_b_1)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_b_1)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_b_1)[j*4+3];
    __xlx_b_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_b_1 = 4;
  int __xlx_offset_param_b_1 = 0;
  int __xlx_offset_byte_param_b_1 = 0*4;
  int* __xlx_b_1__input_buffer= new int[__xlx_b_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_b_1__tmp_vec.size(); ++i) {
    __xlx_b_1__input_buffer[i] = __xlx_b_1__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_c_0__tmp_vec
  vector<sc_bv<32> >__xlx_c_0__tmp_vec;
  for (int j = 0, e = 4; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c_0)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c_0)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c_0)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c_0)[j*4+3];
    __xlx_c_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c_0 = 4;
  int __xlx_offset_param_c_0 = 0;
  int __xlx_offset_byte_param_c_0 = 0*4;
  int* __xlx_c_0__input_buffer= new int[__xlx_c_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_c_0__tmp_vec.size(); ++i) {
    __xlx_c_0__input_buffer[i] = __xlx_c_0__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_c_1__tmp_vec
  vector<sc_bv<32> >__xlx_c_1__tmp_vec;
  for (int j = 0, e = 4; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_c_1)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_c_1)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_c_1)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_c_1)[j*4+3];
    __xlx_c_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_c_1 = 4;
  int __xlx_offset_param_c_1 = 0;
  int __xlx_offset_byte_param_c_1 = 0*4;
  int* __xlx_c_1__input_buffer= new int[__xlx_c_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_c_1__tmp_vec.size(); ++i) {
    __xlx_c_1__input_buffer[i] = __xlx_c_1__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_x_0__tmp_vec
  vector<sc_bv<32> >__xlx_x_0__tmp_vec;
  for (int j = 0, e = 4; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_x_0)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_x_0)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_x_0)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_x_0)[j*4+3];
    __xlx_x_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_x_0 = 4;
  int __xlx_offset_param_x_0 = 0;
  int __xlx_offset_byte_param_x_0 = 0*4;
  int* __xlx_x_0__input_buffer= new int[__xlx_x_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_0__tmp_vec.size(); ++i) {
    __xlx_x_0__input_buffer[i] = __xlx_x_0__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_x_1__tmp_vec
  vector<sc_bv<32> >__xlx_x_1__tmp_vec;
  for (int j = 0, e = 4; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_x_1)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_x_1)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_x_1)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_x_1)[j*4+3];
    __xlx_x_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_x_1 = 4;
  int __xlx_offset_param_x_1 = 0;
  int __xlx_offset_byte_param_x_1 = 0*4;
  int* __xlx_x_1__input_buffer= new int[__xlx_x_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_1__tmp_vec.size(); ++i) {
    __xlx_x_1__input_buffer[i] = __xlx_x_1__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  kp_502_15(__xlx_r_0__input_buffer, __xlx_r_1__input_buffer, __xlx_a_0__input_buffer, __xlx_a_1__input_buffer, __xlx_b_0__input_buffer, __xlx_b_1__input_buffer, __xlx_c_0__input_buffer, __xlx_c_1__input_buffer, __xlx_x_0__input_buffer, __xlx_x_1__input_buffer);
// print __xlx_apatb_param_r_0
  sc_bv<32>*__xlx_r_0_output_buffer = new sc_bv<32>[__xlx_size_param_r_0];
  for (int i = 0; i < __xlx_size_param_r_0; ++i) {
    __xlx_r_0_output_buffer[i] = __xlx_r_0__input_buffer[i+__xlx_offset_param_r_0];
  }
  for (int i = 0; i < __xlx_size_param_r_0; ++i) {
    ((char*)__xlx_apatb_param_r_0)[i*4+0] = __xlx_r_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_r_0)[i*4+1] = __xlx_r_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_r_0)[i*4+2] = __xlx_r_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_r_0)[i*4+3] = __xlx_r_0_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_r_1
  sc_bv<32>*__xlx_r_1_output_buffer = new sc_bv<32>[__xlx_size_param_r_1];
  for (int i = 0; i < __xlx_size_param_r_1; ++i) {
    __xlx_r_1_output_buffer[i] = __xlx_r_1__input_buffer[i+__xlx_offset_param_r_1];
  }
  for (int i = 0; i < __xlx_size_param_r_1; ++i) {
    ((char*)__xlx_apatb_param_r_1)[i*4+0] = __xlx_r_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_r_1)[i*4+1] = __xlx_r_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_r_1)[i*4+2] = __xlx_r_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_r_1)[i*4+3] = __xlx_r_1_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_a_0
  sc_bv<32>*__xlx_a_0_output_buffer = new sc_bv<32>[__xlx_size_param_a_0];
  for (int i = 0; i < __xlx_size_param_a_0; ++i) {
    __xlx_a_0_output_buffer[i] = __xlx_a_0__input_buffer[i+__xlx_offset_param_a_0];
  }
  for (int i = 0; i < __xlx_size_param_a_0; ++i) {
    ((char*)__xlx_apatb_param_a_0)[i*4+0] = __xlx_a_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a_0)[i*4+1] = __xlx_a_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a_0)[i*4+2] = __xlx_a_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a_0)[i*4+3] = __xlx_a_0_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_a_1
  sc_bv<32>*__xlx_a_1_output_buffer = new sc_bv<32>[__xlx_size_param_a_1];
  for (int i = 0; i < __xlx_size_param_a_1; ++i) {
    __xlx_a_1_output_buffer[i] = __xlx_a_1__input_buffer[i+__xlx_offset_param_a_1];
  }
  for (int i = 0; i < __xlx_size_param_a_1; ++i) {
    ((char*)__xlx_apatb_param_a_1)[i*4+0] = __xlx_a_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_a_1)[i*4+1] = __xlx_a_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_a_1)[i*4+2] = __xlx_a_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_a_1)[i*4+3] = __xlx_a_1_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_b_0
  sc_bv<32>*__xlx_b_0_output_buffer = new sc_bv<32>[__xlx_size_param_b_0];
  for (int i = 0; i < __xlx_size_param_b_0; ++i) {
    __xlx_b_0_output_buffer[i] = __xlx_b_0__input_buffer[i+__xlx_offset_param_b_0];
  }
  for (int i = 0; i < __xlx_size_param_b_0; ++i) {
    ((char*)__xlx_apatb_param_b_0)[i*4+0] = __xlx_b_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b_0)[i*4+1] = __xlx_b_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b_0)[i*4+2] = __xlx_b_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b_0)[i*4+3] = __xlx_b_0_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_b_1
  sc_bv<32>*__xlx_b_1_output_buffer = new sc_bv<32>[__xlx_size_param_b_1];
  for (int i = 0; i < __xlx_size_param_b_1; ++i) {
    __xlx_b_1_output_buffer[i] = __xlx_b_1__input_buffer[i+__xlx_offset_param_b_1];
  }
  for (int i = 0; i < __xlx_size_param_b_1; ++i) {
    ((char*)__xlx_apatb_param_b_1)[i*4+0] = __xlx_b_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_b_1)[i*4+1] = __xlx_b_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_b_1)[i*4+2] = __xlx_b_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_b_1)[i*4+3] = __xlx_b_1_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_c_0
  sc_bv<32>*__xlx_c_0_output_buffer = new sc_bv<32>[__xlx_size_param_c_0];
  for (int i = 0; i < __xlx_size_param_c_0; ++i) {
    __xlx_c_0_output_buffer[i] = __xlx_c_0__input_buffer[i+__xlx_offset_param_c_0];
  }
  for (int i = 0; i < __xlx_size_param_c_0; ++i) {
    ((char*)__xlx_apatb_param_c_0)[i*4+0] = __xlx_c_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c_0)[i*4+1] = __xlx_c_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c_0)[i*4+2] = __xlx_c_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c_0)[i*4+3] = __xlx_c_0_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_c_1
  sc_bv<32>*__xlx_c_1_output_buffer = new sc_bv<32>[__xlx_size_param_c_1];
  for (int i = 0; i < __xlx_size_param_c_1; ++i) {
    __xlx_c_1_output_buffer[i] = __xlx_c_1__input_buffer[i+__xlx_offset_param_c_1];
  }
  for (int i = 0; i < __xlx_size_param_c_1; ++i) {
    ((char*)__xlx_apatb_param_c_1)[i*4+0] = __xlx_c_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_c_1)[i*4+1] = __xlx_c_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_c_1)[i*4+2] = __xlx_c_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_c_1)[i*4+3] = __xlx_c_1_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_x_0
  sc_bv<32>*__xlx_x_0_output_buffer = new sc_bv<32>[__xlx_size_param_x_0];
  for (int i = 0; i < __xlx_size_param_x_0; ++i) {
    __xlx_x_0_output_buffer[i] = __xlx_x_0__input_buffer[i+__xlx_offset_param_x_0];
  }
  for (int i = 0; i < __xlx_size_param_x_0; ++i) {
    ((char*)__xlx_apatb_param_x_0)[i*4+0] = __xlx_x_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_x_0)[i*4+1] = __xlx_x_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_x_0)[i*4+2] = __xlx_x_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_x_0)[i*4+3] = __xlx_x_0_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_x_1
  sc_bv<32>*__xlx_x_1_output_buffer = new sc_bv<32>[__xlx_size_param_x_1];
  for (int i = 0; i < __xlx_size_param_x_1; ++i) {
    __xlx_x_1_output_buffer[i] = __xlx_x_1__input_buffer[i+__xlx_offset_param_x_1];
  }
  for (int i = 0; i < __xlx_size_param_x_1; ++i) {
    ((char*)__xlx_apatb_param_x_1)[i*4+0] = __xlx_x_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_x_1)[i*4+1] = __xlx_x_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_x_1)[i*4+2] = __xlx_x_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_x_1)[i*4+3] = __xlx_x_1_output_buffer[i].range(31, 24).to_uint();
  }
}
