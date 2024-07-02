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
extern "C" void lab5_z1(int*, short*);
extern "C" void apatb_lab5_z1_hw(volatile void * __xlx_apatb_param_d_in, volatile void * __xlx_apatb_param_d_out) {
  // Collect __xlx_d_in__tmp_vec
  vector<sc_bv<32> >__xlx_d_in__tmp_vec;
  for (int j = 0, e = 256; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_d_in)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_d_in)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_d_in)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_d_in)[j*4+3];
    __xlx_d_in__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_d_in = 256;
  int __xlx_offset_param_d_in = 0;
  int __xlx_offset_byte_param_d_in = 0*4;
  int* __xlx_d_in__input_buffer= new int[__xlx_d_in__tmp_vec.size()];
  for (int i = 0; i < __xlx_d_in__tmp_vec.size(); ++i) {
    __xlx_d_in__input_buffer[i] = __xlx_d_in__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_d_out__tmp_vec
  vector<sc_bv<16> >__xlx_d_out__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_d_out)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_d_out)[j*2+1];
    __xlx_d_out__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_d_out = 128;
  int __xlx_offset_param_d_out = 0;
  int __xlx_offset_byte_param_d_out = 0*2;
  short* __xlx_d_out__input_buffer= new short[__xlx_d_out__tmp_vec.size()];
  for (int i = 0; i < __xlx_d_out__tmp_vec.size(); ++i) {
    __xlx_d_out__input_buffer[i] = __xlx_d_out__tmp_vec[i].range(15, 0).to_uint64();
  }
  // DUT call
  lab5_z1(__xlx_d_in__input_buffer, __xlx_d_out__input_buffer);
// print __xlx_apatb_param_d_in
  sc_bv<32>*__xlx_d_in_output_buffer = new sc_bv<32>[__xlx_size_param_d_in];
  for (int i = 0; i < __xlx_size_param_d_in; ++i) {
    __xlx_d_in_output_buffer[i] = __xlx_d_in__input_buffer[i+__xlx_offset_param_d_in];
  }
  for (int i = 0; i < __xlx_size_param_d_in; ++i) {
    ((char*)__xlx_apatb_param_d_in)[i*4+0] = __xlx_d_in_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_d_in)[i*4+1] = __xlx_d_in_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_d_in)[i*4+2] = __xlx_d_in_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_d_in)[i*4+3] = __xlx_d_in_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_d_out
  sc_bv<16>*__xlx_d_out_output_buffer = new sc_bv<16>[__xlx_size_param_d_out];
  for (int i = 0; i < __xlx_size_param_d_out; ++i) {
    __xlx_d_out_output_buffer[i] = __xlx_d_out__input_buffer[i+__xlx_offset_param_d_out];
  }
  for (int i = 0; i < __xlx_size_param_d_out; ++i) {
    ((char*)__xlx_apatb_param_d_out)[i*2+0] = __xlx_d_out_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_d_out)[i*2+1] = __xlx_d_out_output_buffer[i].range(15, 8).to_uint();
  }
}
