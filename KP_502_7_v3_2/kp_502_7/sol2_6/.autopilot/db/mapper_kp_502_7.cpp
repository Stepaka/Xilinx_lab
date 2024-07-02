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
extern "C" void kp_502_7(int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*);
extern "C" void apatb_kp_502_7_hw(volatile void * __xlx_apatb_param_A_0, volatile void * __xlx_apatb_param_A_1, volatile void * __xlx_apatb_param_A_2, volatile void * __xlx_apatb_param_A_3, volatile void * __xlx_apatb_param_A_4, volatile void * __xlx_apatb_param_A_5, volatile void * __xlx_apatb_param_A_6, volatile void * __xlx_apatb_param_A_7, volatile void * __xlx_apatb_param_B_0, volatile void * __xlx_apatb_param_B_1, volatile void * __xlx_apatb_param_B_2, volatile void * __xlx_apatb_param_B_3, volatile void * __xlx_apatb_param_B_4, volatile void * __xlx_apatb_param_B_5, volatile void * __xlx_apatb_param_B_6, volatile void * __xlx_apatb_param_B_7, volatile void * __xlx_apatb_param_C_0, volatile void * __xlx_apatb_param_C_1, volatile void * __xlx_apatb_param_C_2, volatile void * __xlx_apatb_param_C_3, volatile void * __xlx_apatb_param_C_4, volatile void * __xlx_apatb_param_C_5, volatile void * __xlx_apatb_param_C_6, volatile void * __xlx_apatb_param_C_7, volatile void * __xlx_apatb_param_X1_0, volatile void * __xlx_apatb_param_X1_1, volatile void * __xlx_apatb_param_X1_2, volatile void * __xlx_apatb_param_X1_3, volatile void * __xlx_apatb_param_X1_4, volatile void * __xlx_apatb_param_X1_5, volatile void * __xlx_apatb_param_X1_6, volatile void * __xlx_apatb_param_X1_7, volatile void * __xlx_apatb_param_X2_0, volatile void * __xlx_apatb_param_X2_1, volatile void * __xlx_apatb_param_X2_2, volatile void * __xlx_apatb_param_X2_3, volatile void * __xlx_apatb_param_X2_4, volatile void * __xlx_apatb_param_X2_5, volatile void * __xlx_apatb_param_X2_6, volatile void * __xlx_apatb_param_X2_7, volatile void * __xlx_apatb_param_D_0, volatile void * __xlx_apatb_param_D_1, volatile void * __xlx_apatb_param_D_2, volatile void * __xlx_apatb_param_D_3, volatile void * __xlx_apatb_param_D_4, volatile void * __xlx_apatb_param_D_5, volatile void * __xlx_apatb_param_D_6, volatile void * __xlx_apatb_param_D_7) {
  // Collect __xlx_A_0__tmp_vec
  vector<sc_bv<32> >__xlx_A_0__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_A_0)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_A_0)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_A_0)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_A_0)[j*4+3];
    __xlx_A_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_0 = 2;
  int __xlx_offset_param_A_0 = 0;
  int __xlx_offset_byte_param_A_0 = 0*4;
  int* __xlx_A_0__input_buffer= new int[__xlx_A_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_0__tmp_vec.size(); ++i) {
    __xlx_A_0__input_buffer[i] = __xlx_A_0__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_A_1__tmp_vec
  vector<sc_bv<32> >__xlx_A_1__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_A_1)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_A_1)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_A_1)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_A_1)[j*4+3];
    __xlx_A_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_1 = 2;
  int __xlx_offset_param_A_1 = 0;
  int __xlx_offset_byte_param_A_1 = 0*4;
  int* __xlx_A_1__input_buffer= new int[__xlx_A_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_1__tmp_vec.size(); ++i) {
    __xlx_A_1__input_buffer[i] = __xlx_A_1__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_A_2__tmp_vec
  vector<sc_bv<32> >__xlx_A_2__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_A_2)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_A_2)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_A_2)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_A_2)[j*4+3];
    __xlx_A_2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_2 = 2;
  int __xlx_offset_param_A_2 = 0;
  int __xlx_offset_byte_param_A_2 = 0*4;
  int* __xlx_A_2__input_buffer= new int[__xlx_A_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_2__tmp_vec.size(); ++i) {
    __xlx_A_2__input_buffer[i] = __xlx_A_2__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_A_3__tmp_vec
  vector<sc_bv<32> >__xlx_A_3__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_A_3)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_A_3)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_A_3)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_A_3)[j*4+3];
    __xlx_A_3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_3 = 2;
  int __xlx_offset_param_A_3 = 0;
  int __xlx_offset_byte_param_A_3 = 0*4;
  int* __xlx_A_3__input_buffer= new int[__xlx_A_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_3__tmp_vec.size(); ++i) {
    __xlx_A_3__input_buffer[i] = __xlx_A_3__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_A_4__tmp_vec
  vector<sc_bv<32> >__xlx_A_4__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_A_4)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_A_4)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_A_4)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_A_4)[j*4+3];
    __xlx_A_4__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_4 = 2;
  int __xlx_offset_param_A_4 = 0;
  int __xlx_offset_byte_param_A_4 = 0*4;
  int* __xlx_A_4__input_buffer= new int[__xlx_A_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_4__tmp_vec.size(); ++i) {
    __xlx_A_4__input_buffer[i] = __xlx_A_4__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_A_5__tmp_vec
  vector<sc_bv<32> >__xlx_A_5__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_A_5)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_A_5)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_A_5)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_A_5)[j*4+3];
    __xlx_A_5__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_5 = 2;
  int __xlx_offset_param_A_5 = 0;
  int __xlx_offset_byte_param_A_5 = 0*4;
  int* __xlx_A_5__input_buffer= new int[__xlx_A_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_5__tmp_vec.size(); ++i) {
    __xlx_A_5__input_buffer[i] = __xlx_A_5__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_A_6__tmp_vec
  vector<sc_bv<32> >__xlx_A_6__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_A_6)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_A_6)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_A_6)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_A_6)[j*4+3];
    __xlx_A_6__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_6 = 2;
  int __xlx_offset_param_A_6 = 0;
  int __xlx_offset_byte_param_A_6 = 0*4;
  int* __xlx_A_6__input_buffer= new int[__xlx_A_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_6__tmp_vec.size(); ++i) {
    __xlx_A_6__input_buffer[i] = __xlx_A_6__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_A_7__tmp_vec
  vector<sc_bv<32> >__xlx_A_7__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_A_7)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_A_7)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_A_7)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_A_7)[j*4+3];
    __xlx_A_7__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_7 = 2;
  int __xlx_offset_param_A_7 = 0;
  int __xlx_offset_byte_param_A_7 = 0*4;
  int* __xlx_A_7__input_buffer= new int[__xlx_A_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_7__tmp_vec.size(); ++i) {
    __xlx_A_7__input_buffer[i] = __xlx_A_7__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_B_0__tmp_vec
  vector<sc_bv<32> >__xlx_B_0__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_B_0)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_B_0)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_B_0)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_B_0)[j*4+3];
    __xlx_B_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_0 = 2;
  int __xlx_offset_param_B_0 = 0;
  int __xlx_offset_byte_param_B_0 = 0*4;
  int* __xlx_B_0__input_buffer= new int[__xlx_B_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_0__tmp_vec.size(); ++i) {
    __xlx_B_0__input_buffer[i] = __xlx_B_0__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_B_1__tmp_vec
  vector<sc_bv<32> >__xlx_B_1__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_B_1)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_B_1)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_B_1)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_B_1)[j*4+3];
    __xlx_B_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_1 = 2;
  int __xlx_offset_param_B_1 = 0;
  int __xlx_offset_byte_param_B_1 = 0*4;
  int* __xlx_B_1__input_buffer= new int[__xlx_B_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_1__tmp_vec.size(); ++i) {
    __xlx_B_1__input_buffer[i] = __xlx_B_1__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_B_2__tmp_vec
  vector<sc_bv<32> >__xlx_B_2__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_B_2)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_B_2)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_B_2)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_B_2)[j*4+3];
    __xlx_B_2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_2 = 2;
  int __xlx_offset_param_B_2 = 0;
  int __xlx_offset_byte_param_B_2 = 0*4;
  int* __xlx_B_2__input_buffer= new int[__xlx_B_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_2__tmp_vec.size(); ++i) {
    __xlx_B_2__input_buffer[i] = __xlx_B_2__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_B_3__tmp_vec
  vector<sc_bv<32> >__xlx_B_3__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_B_3)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_B_3)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_B_3)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_B_3)[j*4+3];
    __xlx_B_3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_3 = 2;
  int __xlx_offset_param_B_3 = 0;
  int __xlx_offset_byte_param_B_3 = 0*4;
  int* __xlx_B_3__input_buffer= new int[__xlx_B_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_3__tmp_vec.size(); ++i) {
    __xlx_B_3__input_buffer[i] = __xlx_B_3__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_B_4__tmp_vec
  vector<sc_bv<32> >__xlx_B_4__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_B_4)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_B_4)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_B_4)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_B_4)[j*4+3];
    __xlx_B_4__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_4 = 2;
  int __xlx_offset_param_B_4 = 0;
  int __xlx_offset_byte_param_B_4 = 0*4;
  int* __xlx_B_4__input_buffer= new int[__xlx_B_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_4__tmp_vec.size(); ++i) {
    __xlx_B_4__input_buffer[i] = __xlx_B_4__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_B_5__tmp_vec
  vector<sc_bv<32> >__xlx_B_5__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_B_5)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_B_5)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_B_5)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_B_5)[j*4+3];
    __xlx_B_5__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_5 = 2;
  int __xlx_offset_param_B_5 = 0;
  int __xlx_offset_byte_param_B_5 = 0*4;
  int* __xlx_B_5__input_buffer= new int[__xlx_B_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_5__tmp_vec.size(); ++i) {
    __xlx_B_5__input_buffer[i] = __xlx_B_5__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_B_6__tmp_vec
  vector<sc_bv<32> >__xlx_B_6__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_B_6)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_B_6)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_B_6)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_B_6)[j*4+3];
    __xlx_B_6__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_6 = 2;
  int __xlx_offset_param_B_6 = 0;
  int __xlx_offset_byte_param_B_6 = 0*4;
  int* __xlx_B_6__input_buffer= new int[__xlx_B_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_6__tmp_vec.size(); ++i) {
    __xlx_B_6__input_buffer[i] = __xlx_B_6__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_B_7__tmp_vec
  vector<sc_bv<32> >__xlx_B_7__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_B_7)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_B_7)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_B_7)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_B_7)[j*4+3];
    __xlx_B_7__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_7 = 2;
  int __xlx_offset_param_B_7 = 0;
  int __xlx_offset_byte_param_B_7 = 0*4;
  int* __xlx_B_7__input_buffer= new int[__xlx_B_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_7__tmp_vec.size(); ++i) {
    __xlx_B_7__input_buffer[i] = __xlx_B_7__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_C_0__tmp_vec
  vector<sc_bv<32> >__xlx_C_0__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_C_0)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_C_0)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_C_0)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_C_0)[j*4+3];
    __xlx_C_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_C_0 = 2;
  int __xlx_offset_param_C_0 = 0;
  int __xlx_offset_byte_param_C_0 = 0*4;
  int* __xlx_C_0__input_buffer= new int[__xlx_C_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_C_0__tmp_vec.size(); ++i) {
    __xlx_C_0__input_buffer[i] = __xlx_C_0__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_C_1__tmp_vec
  vector<sc_bv<32> >__xlx_C_1__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_C_1)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_C_1)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_C_1)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_C_1)[j*4+3];
    __xlx_C_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_C_1 = 2;
  int __xlx_offset_param_C_1 = 0;
  int __xlx_offset_byte_param_C_1 = 0*4;
  int* __xlx_C_1__input_buffer= new int[__xlx_C_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_C_1__tmp_vec.size(); ++i) {
    __xlx_C_1__input_buffer[i] = __xlx_C_1__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_C_2__tmp_vec
  vector<sc_bv<32> >__xlx_C_2__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_C_2)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_C_2)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_C_2)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_C_2)[j*4+3];
    __xlx_C_2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_C_2 = 2;
  int __xlx_offset_param_C_2 = 0;
  int __xlx_offset_byte_param_C_2 = 0*4;
  int* __xlx_C_2__input_buffer= new int[__xlx_C_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_C_2__tmp_vec.size(); ++i) {
    __xlx_C_2__input_buffer[i] = __xlx_C_2__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_C_3__tmp_vec
  vector<sc_bv<32> >__xlx_C_3__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_C_3)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_C_3)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_C_3)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_C_3)[j*4+3];
    __xlx_C_3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_C_3 = 2;
  int __xlx_offset_param_C_3 = 0;
  int __xlx_offset_byte_param_C_3 = 0*4;
  int* __xlx_C_3__input_buffer= new int[__xlx_C_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_C_3__tmp_vec.size(); ++i) {
    __xlx_C_3__input_buffer[i] = __xlx_C_3__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_C_4__tmp_vec
  vector<sc_bv<32> >__xlx_C_4__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_C_4)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_C_4)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_C_4)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_C_4)[j*4+3];
    __xlx_C_4__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_C_4 = 2;
  int __xlx_offset_param_C_4 = 0;
  int __xlx_offset_byte_param_C_4 = 0*4;
  int* __xlx_C_4__input_buffer= new int[__xlx_C_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_C_4__tmp_vec.size(); ++i) {
    __xlx_C_4__input_buffer[i] = __xlx_C_4__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_C_5__tmp_vec
  vector<sc_bv<32> >__xlx_C_5__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_C_5)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_C_5)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_C_5)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_C_5)[j*4+3];
    __xlx_C_5__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_C_5 = 2;
  int __xlx_offset_param_C_5 = 0;
  int __xlx_offset_byte_param_C_5 = 0*4;
  int* __xlx_C_5__input_buffer= new int[__xlx_C_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_C_5__tmp_vec.size(); ++i) {
    __xlx_C_5__input_buffer[i] = __xlx_C_5__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_C_6__tmp_vec
  vector<sc_bv<32> >__xlx_C_6__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_C_6)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_C_6)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_C_6)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_C_6)[j*4+3];
    __xlx_C_6__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_C_6 = 2;
  int __xlx_offset_param_C_6 = 0;
  int __xlx_offset_byte_param_C_6 = 0*4;
  int* __xlx_C_6__input_buffer= new int[__xlx_C_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_C_6__tmp_vec.size(); ++i) {
    __xlx_C_6__input_buffer[i] = __xlx_C_6__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_C_7__tmp_vec
  vector<sc_bv<32> >__xlx_C_7__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_C_7)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_C_7)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_C_7)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_C_7)[j*4+3];
    __xlx_C_7__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_C_7 = 2;
  int __xlx_offset_param_C_7 = 0;
  int __xlx_offset_byte_param_C_7 = 0*4;
  int* __xlx_C_7__input_buffer= new int[__xlx_C_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_C_7__tmp_vec.size(); ++i) {
    __xlx_C_7__input_buffer[i] = __xlx_C_7__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_X1_0__tmp_vec
  vector<sc_bv<32> >__xlx_X1_0__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_X1_0)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_X1_0)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_X1_0)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_X1_0)[j*4+3];
    __xlx_X1_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_X1_0 = 2;
  int __xlx_offset_param_X1_0 = 0;
  int __xlx_offset_byte_param_X1_0 = 0*4;
  int* __xlx_X1_0__input_buffer= new int[__xlx_X1_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_X1_0__tmp_vec.size(); ++i) {
    __xlx_X1_0__input_buffer[i] = __xlx_X1_0__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_X1_1__tmp_vec
  vector<sc_bv<32> >__xlx_X1_1__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_X1_1)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_X1_1)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_X1_1)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_X1_1)[j*4+3];
    __xlx_X1_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_X1_1 = 2;
  int __xlx_offset_param_X1_1 = 0;
  int __xlx_offset_byte_param_X1_1 = 0*4;
  int* __xlx_X1_1__input_buffer= new int[__xlx_X1_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_X1_1__tmp_vec.size(); ++i) {
    __xlx_X1_1__input_buffer[i] = __xlx_X1_1__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_X1_2__tmp_vec
  vector<sc_bv<32> >__xlx_X1_2__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_X1_2)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_X1_2)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_X1_2)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_X1_2)[j*4+3];
    __xlx_X1_2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_X1_2 = 2;
  int __xlx_offset_param_X1_2 = 0;
  int __xlx_offset_byte_param_X1_2 = 0*4;
  int* __xlx_X1_2__input_buffer= new int[__xlx_X1_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_X1_2__tmp_vec.size(); ++i) {
    __xlx_X1_2__input_buffer[i] = __xlx_X1_2__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_X1_3__tmp_vec
  vector<sc_bv<32> >__xlx_X1_3__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_X1_3)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_X1_3)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_X1_3)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_X1_3)[j*4+3];
    __xlx_X1_3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_X1_3 = 2;
  int __xlx_offset_param_X1_3 = 0;
  int __xlx_offset_byte_param_X1_3 = 0*4;
  int* __xlx_X1_3__input_buffer= new int[__xlx_X1_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_X1_3__tmp_vec.size(); ++i) {
    __xlx_X1_3__input_buffer[i] = __xlx_X1_3__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_X1_4__tmp_vec
  vector<sc_bv<32> >__xlx_X1_4__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_X1_4)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_X1_4)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_X1_4)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_X1_4)[j*4+3];
    __xlx_X1_4__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_X1_4 = 2;
  int __xlx_offset_param_X1_4 = 0;
  int __xlx_offset_byte_param_X1_4 = 0*4;
  int* __xlx_X1_4__input_buffer= new int[__xlx_X1_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_X1_4__tmp_vec.size(); ++i) {
    __xlx_X1_4__input_buffer[i] = __xlx_X1_4__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_X1_5__tmp_vec
  vector<sc_bv<32> >__xlx_X1_5__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_X1_5)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_X1_5)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_X1_5)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_X1_5)[j*4+3];
    __xlx_X1_5__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_X1_5 = 2;
  int __xlx_offset_param_X1_5 = 0;
  int __xlx_offset_byte_param_X1_5 = 0*4;
  int* __xlx_X1_5__input_buffer= new int[__xlx_X1_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_X1_5__tmp_vec.size(); ++i) {
    __xlx_X1_5__input_buffer[i] = __xlx_X1_5__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_X1_6__tmp_vec
  vector<sc_bv<32> >__xlx_X1_6__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_X1_6)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_X1_6)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_X1_6)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_X1_6)[j*4+3];
    __xlx_X1_6__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_X1_6 = 2;
  int __xlx_offset_param_X1_6 = 0;
  int __xlx_offset_byte_param_X1_6 = 0*4;
  int* __xlx_X1_6__input_buffer= new int[__xlx_X1_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_X1_6__tmp_vec.size(); ++i) {
    __xlx_X1_6__input_buffer[i] = __xlx_X1_6__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_X1_7__tmp_vec
  vector<sc_bv<32> >__xlx_X1_7__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_X1_7)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_X1_7)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_X1_7)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_X1_7)[j*4+3];
    __xlx_X1_7__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_X1_7 = 2;
  int __xlx_offset_param_X1_7 = 0;
  int __xlx_offset_byte_param_X1_7 = 0*4;
  int* __xlx_X1_7__input_buffer= new int[__xlx_X1_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_X1_7__tmp_vec.size(); ++i) {
    __xlx_X1_7__input_buffer[i] = __xlx_X1_7__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_X2_0__tmp_vec
  vector<sc_bv<32> >__xlx_X2_0__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_X2_0)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_X2_0)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_X2_0)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_X2_0)[j*4+3];
    __xlx_X2_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_X2_0 = 2;
  int __xlx_offset_param_X2_0 = 0;
  int __xlx_offset_byte_param_X2_0 = 0*4;
  int* __xlx_X2_0__input_buffer= new int[__xlx_X2_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_X2_0__tmp_vec.size(); ++i) {
    __xlx_X2_0__input_buffer[i] = __xlx_X2_0__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_X2_1__tmp_vec
  vector<sc_bv<32> >__xlx_X2_1__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_X2_1)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_X2_1)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_X2_1)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_X2_1)[j*4+3];
    __xlx_X2_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_X2_1 = 2;
  int __xlx_offset_param_X2_1 = 0;
  int __xlx_offset_byte_param_X2_1 = 0*4;
  int* __xlx_X2_1__input_buffer= new int[__xlx_X2_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_X2_1__tmp_vec.size(); ++i) {
    __xlx_X2_1__input_buffer[i] = __xlx_X2_1__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_X2_2__tmp_vec
  vector<sc_bv<32> >__xlx_X2_2__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_X2_2)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_X2_2)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_X2_2)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_X2_2)[j*4+3];
    __xlx_X2_2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_X2_2 = 2;
  int __xlx_offset_param_X2_2 = 0;
  int __xlx_offset_byte_param_X2_2 = 0*4;
  int* __xlx_X2_2__input_buffer= new int[__xlx_X2_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_X2_2__tmp_vec.size(); ++i) {
    __xlx_X2_2__input_buffer[i] = __xlx_X2_2__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_X2_3__tmp_vec
  vector<sc_bv<32> >__xlx_X2_3__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_X2_3)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_X2_3)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_X2_3)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_X2_3)[j*4+3];
    __xlx_X2_3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_X2_3 = 2;
  int __xlx_offset_param_X2_3 = 0;
  int __xlx_offset_byte_param_X2_3 = 0*4;
  int* __xlx_X2_3__input_buffer= new int[__xlx_X2_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_X2_3__tmp_vec.size(); ++i) {
    __xlx_X2_3__input_buffer[i] = __xlx_X2_3__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_X2_4__tmp_vec
  vector<sc_bv<32> >__xlx_X2_4__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_X2_4)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_X2_4)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_X2_4)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_X2_4)[j*4+3];
    __xlx_X2_4__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_X2_4 = 2;
  int __xlx_offset_param_X2_4 = 0;
  int __xlx_offset_byte_param_X2_4 = 0*4;
  int* __xlx_X2_4__input_buffer= new int[__xlx_X2_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_X2_4__tmp_vec.size(); ++i) {
    __xlx_X2_4__input_buffer[i] = __xlx_X2_4__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_X2_5__tmp_vec
  vector<sc_bv<32> >__xlx_X2_5__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_X2_5)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_X2_5)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_X2_5)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_X2_5)[j*4+3];
    __xlx_X2_5__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_X2_5 = 2;
  int __xlx_offset_param_X2_5 = 0;
  int __xlx_offset_byte_param_X2_5 = 0*4;
  int* __xlx_X2_5__input_buffer= new int[__xlx_X2_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_X2_5__tmp_vec.size(); ++i) {
    __xlx_X2_5__input_buffer[i] = __xlx_X2_5__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_X2_6__tmp_vec
  vector<sc_bv<32> >__xlx_X2_6__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_X2_6)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_X2_6)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_X2_6)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_X2_6)[j*4+3];
    __xlx_X2_6__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_X2_6 = 2;
  int __xlx_offset_param_X2_6 = 0;
  int __xlx_offset_byte_param_X2_6 = 0*4;
  int* __xlx_X2_6__input_buffer= new int[__xlx_X2_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_X2_6__tmp_vec.size(); ++i) {
    __xlx_X2_6__input_buffer[i] = __xlx_X2_6__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_X2_7__tmp_vec
  vector<sc_bv<32> >__xlx_X2_7__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_X2_7)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_X2_7)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_X2_7)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_X2_7)[j*4+3];
    __xlx_X2_7__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_X2_7 = 2;
  int __xlx_offset_param_X2_7 = 0;
  int __xlx_offset_byte_param_X2_7 = 0*4;
  int* __xlx_X2_7__input_buffer= new int[__xlx_X2_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_X2_7__tmp_vec.size(); ++i) {
    __xlx_X2_7__input_buffer[i] = __xlx_X2_7__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_D_0__tmp_vec
  vector<sc_bv<32> >__xlx_D_0__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_D_0)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_D_0)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_D_0)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_D_0)[j*4+3];
    __xlx_D_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_D_0 = 2;
  int __xlx_offset_param_D_0 = 0;
  int __xlx_offset_byte_param_D_0 = 0*4;
  int* __xlx_D_0__input_buffer= new int[__xlx_D_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_D_0__tmp_vec.size(); ++i) {
    __xlx_D_0__input_buffer[i] = __xlx_D_0__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_D_1__tmp_vec
  vector<sc_bv<32> >__xlx_D_1__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_D_1)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_D_1)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_D_1)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_D_1)[j*4+3];
    __xlx_D_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_D_1 = 2;
  int __xlx_offset_param_D_1 = 0;
  int __xlx_offset_byte_param_D_1 = 0*4;
  int* __xlx_D_1__input_buffer= new int[__xlx_D_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_D_1__tmp_vec.size(); ++i) {
    __xlx_D_1__input_buffer[i] = __xlx_D_1__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_D_2__tmp_vec
  vector<sc_bv<32> >__xlx_D_2__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_D_2)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_D_2)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_D_2)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_D_2)[j*4+3];
    __xlx_D_2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_D_2 = 2;
  int __xlx_offset_param_D_2 = 0;
  int __xlx_offset_byte_param_D_2 = 0*4;
  int* __xlx_D_2__input_buffer= new int[__xlx_D_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_D_2__tmp_vec.size(); ++i) {
    __xlx_D_2__input_buffer[i] = __xlx_D_2__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_D_3__tmp_vec
  vector<sc_bv<32> >__xlx_D_3__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_D_3)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_D_3)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_D_3)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_D_3)[j*4+3];
    __xlx_D_3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_D_3 = 2;
  int __xlx_offset_param_D_3 = 0;
  int __xlx_offset_byte_param_D_3 = 0*4;
  int* __xlx_D_3__input_buffer= new int[__xlx_D_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_D_3__tmp_vec.size(); ++i) {
    __xlx_D_3__input_buffer[i] = __xlx_D_3__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_D_4__tmp_vec
  vector<sc_bv<32> >__xlx_D_4__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_D_4)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_D_4)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_D_4)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_D_4)[j*4+3];
    __xlx_D_4__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_D_4 = 2;
  int __xlx_offset_param_D_4 = 0;
  int __xlx_offset_byte_param_D_4 = 0*4;
  int* __xlx_D_4__input_buffer= new int[__xlx_D_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_D_4__tmp_vec.size(); ++i) {
    __xlx_D_4__input_buffer[i] = __xlx_D_4__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_D_5__tmp_vec
  vector<sc_bv<32> >__xlx_D_5__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_D_5)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_D_5)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_D_5)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_D_5)[j*4+3];
    __xlx_D_5__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_D_5 = 2;
  int __xlx_offset_param_D_5 = 0;
  int __xlx_offset_byte_param_D_5 = 0*4;
  int* __xlx_D_5__input_buffer= new int[__xlx_D_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_D_5__tmp_vec.size(); ++i) {
    __xlx_D_5__input_buffer[i] = __xlx_D_5__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_D_6__tmp_vec
  vector<sc_bv<32> >__xlx_D_6__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_D_6)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_D_6)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_D_6)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_D_6)[j*4+3];
    __xlx_D_6__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_D_6 = 2;
  int __xlx_offset_param_D_6 = 0;
  int __xlx_offset_byte_param_D_6 = 0*4;
  int* __xlx_D_6__input_buffer= new int[__xlx_D_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_D_6__tmp_vec.size(); ++i) {
    __xlx_D_6__input_buffer[i] = __xlx_D_6__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_D_7__tmp_vec
  vector<sc_bv<32> >__xlx_D_7__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_D_7)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_D_7)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_D_7)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_D_7)[j*4+3];
    __xlx_D_7__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_D_7 = 2;
  int __xlx_offset_param_D_7 = 0;
  int __xlx_offset_byte_param_D_7 = 0*4;
  int* __xlx_D_7__input_buffer= new int[__xlx_D_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_D_7__tmp_vec.size(); ++i) {
    __xlx_D_7__input_buffer[i] = __xlx_D_7__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  kp_502_7(__xlx_A_0__input_buffer, __xlx_A_1__input_buffer, __xlx_A_2__input_buffer, __xlx_A_3__input_buffer, __xlx_A_4__input_buffer, __xlx_A_5__input_buffer, __xlx_A_6__input_buffer, __xlx_A_7__input_buffer, __xlx_B_0__input_buffer, __xlx_B_1__input_buffer, __xlx_B_2__input_buffer, __xlx_B_3__input_buffer, __xlx_B_4__input_buffer, __xlx_B_5__input_buffer, __xlx_B_6__input_buffer, __xlx_B_7__input_buffer, __xlx_C_0__input_buffer, __xlx_C_1__input_buffer, __xlx_C_2__input_buffer, __xlx_C_3__input_buffer, __xlx_C_4__input_buffer, __xlx_C_5__input_buffer, __xlx_C_6__input_buffer, __xlx_C_7__input_buffer, __xlx_X1_0__input_buffer, __xlx_X1_1__input_buffer, __xlx_X1_2__input_buffer, __xlx_X1_3__input_buffer, __xlx_X1_4__input_buffer, __xlx_X1_5__input_buffer, __xlx_X1_6__input_buffer, __xlx_X1_7__input_buffer, __xlx_X2_0__input_buffer, __xlx_X2_1__input_buffer, __xlx_X2_2__input_buffer, __xlx_X2_3__input_buffer, __xlx_X2_4__input_buffer, __xlx_X2_5__input_buffer, __xlx_X2_6__input_buffer, __xlx_X2_7__input_buffer, __xlx_D_0__input_buffer, __xlx_D_1__input_buffer, __xlx_D_2__input_buffer, __xlx_D_3__input_buffer, __xlx_D_4__input_buffer, __xlx_D_5__input_buffer, __xlx_D_6__input_buffer, __xlx_D_7__input_buffer);
// print __xlx_apatb_param_A_0
  sc_bv<32>*__xlx_A_0_output_buffer = new sc_bv<32>[__xlx_size_param_A_0];
  for (int i = 0; i < __xlx_size_param_A_0; ++i) {
    __xlx_A_0_output_buffer[i] = __xlx_A_0__input_buffer[i+__xlx_offset_param_A_0];
  }
  for (int i = 0; i < __xlx_size_param_A_0; ++i) {
    ((char*)__xlx_apatb_param_A_0)[i*4+0] = __xlx_A_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_A_0)[i*4+1] = __xlx_A_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_A_0)[i*4+2] = __xlx_A_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_A_0)[i*4+3] = __xlx_A_0_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_A_1
  sc_bv<32>*__xlx_A_1_output_buffer = new sc_bv<32>[__xlx_size_param_A_1];
  for (int i = 0; i < __xlx_size_param_A_1; ++i) {
    __xlx_A_1_output_buffer[i] = __xlx_A_1__input_buffer[i+__xlx_offset_param_A_1];
  }
  for (int i = 0; i < __xlx_size_param_A_1; ++i) {
    ((char*)__xlx_apatb_param_A_1)[i*4+0] = __xlx_A_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_A_1)[i*4+1] = __xlx_A_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_A_1)[i*4+2] = __xlx_A_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_A_1)[i*4+3] = __xlx_A_1_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_A_2
  sc_bv<32>*__xlx_A_2_output_buffer = new sc_bv<32>[__xlx_size_param_A_2];
  for (int i = 0; i < __xlx_size_param_A_2; ++i) {
    __xlx_A_2_output_buffer[i] = __xlx_A_2__input_buffer[i+__xlx_offset_param_A_2];
  }
  for (int i = 0; i < __xlx_size_param_A_2; ++i) {
    ((char*)__xlx_apatb_param_A_2)[i*4+0] = __xlx_A_2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_A_2)[i*4+1] = __xlx_A_2_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_A_2)[i*4+2] = __xlx_A_2_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_A_2)[i*4+3] = __xlx_A_2_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_A_3
  sc_bv<32>*__xlx_A_3_output_buffer = new sc_bv<32>[__xlx_size_param_A_3];
  for (int i = 0; i < __xlx_size_param_A_3; ++i) {
    __xlx_A_3_output_buffer[i] = __xlx_A_3__input_buffer[i+__xlx_offset_param_A_3];
  }
  for (int i = 0; i < __xlx_size_param_A_3; ++i) {
    ((char*)__xlx_apatb_param_A_3)[i*4+0] = __xlx_A_3_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_A_3)[i*4+1] = __xlx_A_3_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_A_3)[i*4+2] = __xlx_A_3_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_A_3)[i*4+3] = __xlx_A_3_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_A_4
  sc_bv<32>*__xlx_A_4_output_buffer = new sc_bv<32>[__xlx_size_param_A_4];
  for (int i = 0; i < __xlx_size_param_A_4; ++i) {
    __xlx_A_4_output_buffer[i] = __xlx_A_4__input_buffer[i+__xlx_offset_param_A_4];
  }
  for (int i = 0; i < __xlx_size_param_A_4; ++i) {
    ((char*)__xlx_apatb_param_A_4)[i*4+0] = __xlx_A_4_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_A_4)[i*4+1] = __xlx_A_4_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_A_4)[i*4+2] = __xlx_A_4_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_A_4)[i*4+3] = __xlx_A_4_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_A_5
  sc_bv<32>*__xlx_A_5_output_buffer = new sc_bv<32>[__xlx_size_param_A_5];
  for (int i = 0; i < __xlx_size_param_A_5; ++i) {
    __xlx_A_5_output_buffer[i] = __xlx_A_5__input_buffer[i+__xlx_offset_param_A_5];
  }
  for (int i = 0; i < __xlx_size_param_A_5; ++i) {
    ((char*)__xlx_apatb_param_A_5)[i*4+0] = __xlx_A_5_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_A_5)[i*4+1] = __xlx_A_5_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_A_5)[i*4+2] = __xlx_A_5_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_A_5)[i*4+3] = __xlx_A_5_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_A_6
  sc_bv<32>*__xlx_A_6_output_buffer = new sc_bv<32>[__xlx_size_param_A_6];
  for (int i = 0; i < __xlx_size_param_A_6; ++i) {
    __xlx_A_6_output_buffer[i] = __xlx_A_6__input_buffer[i+__xlx_offset_param_A_6];
  }
  for (int i = 0; i < __xlx_size_param_A_6; ++i) {
    ((char*)__xlx_apatb_param_A_6)[i*4+0] = __xlx_A_6_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_A_6)[i*4+1] = __xlx_A_6_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_A_6)[i*4+2] = __xlx_A_6_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_A_6)[i*4+3] = __xlx_A_6_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_A_7
  sc_bv<32>*__xlx_A_7_output_buffer = new sc_bv<32>[__xlx_size_param_A_7];
  for (int i = 0; i < __xlx_size_param_A_7; ++i) {
    __xlx_A_7_output_buffer[i] = __xlx_A_7__input_buffer[i+__xlx_offset_param_A_7];
  }
  for (int i = 0; i < __xlx_size_param_A_7; ++i) {
    ((char*)__xlx_apatb_param_A_7)[i*4+0] = __xlx_A_7_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_A_7)[i*4+1] = __xlx_A_7_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_A_7)[i*4+2] = __xlx_A_7_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_A_7)[i*4+3] = __xlx_A_7_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_B_0
  sc_bv<32>*__xlx_B_0_output_buffer = new sc_bv<32>[__xlx_size_param_B_0];
  for (int i = 0; i < __xlx_size_param_B_0; ++i) {
    __xlx_B_0_output_buffer[i] = __xlx_B_0__input_buffer[i+__xlx_offset_param_B_0];
  }
  for (int i = 0; i < __xlx_size_param_B_0; ++i) {
    ((char*)__xlx_apatb_param_B_0)[i*4+0] = __xlx_B_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_B_0)[i*4+1] = __xlx_B_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_B_0)[i*4+2] = __xlx_B_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_B_0)[i*4+3] = __xlx_B_0_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_B_1
  sc_bv<32>*__xlx_B_1_output_buffer = new sc_bv<32>[__xlx_size_param_B_1];
  for (int i = 0; i < __xlx_size_param_B_1; ++i) {
    __xlx_B_1_output_buffer[i] = __xlx_B_1__input_buffer[i+__xlx_offset_param_B_1];
  }
  for (int i = 0; i < __xlx_size_param_B_1; ++i) {
    ((char*)__xlx_apatb_param_B_1)[i*4+0] = __xlx_B_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_B_1)[i*4+1] = __xlx_B_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_B_1)[i*4+2] = __xlx_B_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_B_1)[i*4+3] = __xlx_B_1_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_B_2
  sc_bv<32>*__xlx_B_2_output_buffer = new sc_bv<32>[__xlx_size_param_B_2];
  for (int i = 0; i < __xlx_size_param_B_2; ++i) {
    __xlx_B_2_output_buffer[i] = __xlx_B_2__input_buffer[i+__xlx_offset_param_B_2];
  }
  for (int i = 0; i < __xlx_size_param_B_2; ++i) {
    ((char*)__xlx_apatb_param_B_2)[i*4+0] = __xlx_B_2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_B_2)[i*4+1] = __xlx_B_2_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_B_2)[i*4+2] = __xlx_B_2_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_B_2)[i*4+3] = __xlx_B_2_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_B_3
  sc_bv<32>*__xlx_B_3_output_buffer = new sc_bv<32>[__xlx_size_param_B_3];
  for (int i = 0; i < __xlx_size_param_B_3; ++i) {
    __xlx_B_3_output_buffer[i] = __xlx_B_3__input_buffer[i+__xlx_offset_param_B_3];
  }
  for (int i = 0; i < __xlx_size_param_B_3; ++i) {
    ((char*)__xlx_apatb_param_B_3)[i*4+0] = __xlx_B_3_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_B_3)[i*4+1] = __xlx_B_3_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_B_3)[i*4+2] = __xlx_B_3_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_B_3)[i*4+3] = __xlx_B_3_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_B_4
  sc_bv<32>*__xlx_B_4_output_buffer = new sc_bv<32>[__xlx_size_param_B_4];
  for (int i = 0; i < __xlx_size_param_B_4; ++i) {
    __xlx_B_4_output_buffer[i] = __xlx_B_4__input_buffer[i+__xlx_offset_param_B_4];
  }
  for (int i = 0; i < __xlx_size_param_B_4; ++i) {
    ((char*)__xlx_apatb_param_B_4)[i*4+0] = __xlx_B_4_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_B_4)[i*4+1] = __xlx_B_4_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_B_4)[i*4+2] = __xlx_B_4_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_B_4)[i*4+3] = __xlx_B_4_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_B_5
  sc_bv<32>*__xlx_B_5_output_buffer = new sc_bv<32>[__xlx_size_param_B_5];
  for (int i = 0; i < __xlx_size_param_B_5; ++i) {
    __xlx_B_5_output_buffer[i] = __xlx_B_5__input_buffer[i+__xlx_offset_param_B_5];
  }
  for (int i = 0; i < __xlx_size_param_B_5; ++i) {
    ((char*)__xlx_apatb_param_B_5)[i*4+0] = __xlx_B_5_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_B_5)[i*4+1] = __xlx_B_5_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_B_5)[i*4+2] = __xlx_B_5_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_B_5)[i*4+3] = __xlx_B_5_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_B_6
  sc_bv<32>*__xlx_B_6_output_buffer = new sc_bv<32>[__xlx_size_param_B_6];
  for (int i = 0; i < __xlx_size_param_B_6; ++i) {
    __xlx_B_6_output_buffer[i] = __xlx_B_6__input_buffer[i+__xlx_offset_param_B_6];
  }
  for (int i = 0; i < __xlx_size_param_B_6; ++i) {
    ((char*)__xlx_apatb_param_B_6)[i*4+0] = __xlx_B_6_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_B_6)[i*4+1] = __xlx_B_6_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_B_6)[i*4+2] = __xlx_B_6_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_B_6)[i*4+3] = __xlx_B_6_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_B_7
  sc_bv<32>*__xlx_B_7_output_buffer = new sc_bv<32>[__xlx_size_param_B_7];
  for (int i = 0; i < __xlx_size_param_B_7; ++i) {
    __xlx_B_7_output_buffer[i] = __xlx_B_7__input_buffer[i+__xlx_offset_param_B_7];
  }
  for (int i = 0; i < __xlx_size_param_B_7; ++i) {
    ((char*)__xlx_apatb_param_B_7)[i*4+0] = __xlx_B_7_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_B_7)[i*4+1] = __xlx_B_7_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_B_7)[i*4+2] = __xlx_B_7_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_B_7)[i*4+3] = __xlx_B_7_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_C_0
  sc_bv<32>*__xlx_C_0_output_buffer = new sc_bv<32>[__xlx_size_param_C_0];
  for (int i = 0; i < __xlx_size_param_C_0; ++i) {
    __xlx_C_0_output_buffer[i] = __xlx_C_0__input_buffer[i+__xlx_offset_param_C_0];
  }
  for (int i = 0; i < __xlx_size_param_C_0; ++i) {
    ((char*)__xlx_apatb_param_C_0)[i*4+0] = __xlx_C_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_C_0)[i*4+1] = __xlx_C_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_C_0)[i*4+2] = __xlx_C_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_C_0)[i*4+3] = __xlx_C_0_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_C_1
  sc_bv<32>*__xlx_C_1_output_buffer = new sc_bv<32>[__xlx_size_param_C_1];
  for (int i = 0; i < __xlx_size_param_C_1; ++i) {
    __xlx_C_1_output_buffer[i] = __xlx_C_1__input_buffer[i+__xlx_offset_param_C_1];
  }
  for (int i = 0; i < __xlx_size_param_C_1; ++i) {
    ((char*)__xlx_apatb_param_C_1)[i*4+0] = __xlx_C_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_C_1)[i*4+1] = __xlx_C_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_C_1)[i*4+2] = __xlx_C_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_C_1)[i*4+3] = __xlx_C_1_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_C_2
  sc_bv<32>*__xlx_C_2_output_buffer = new sc_bv<32>[__xlx_size_param_C_2];
  for (int i = 0; i < __xlx_size_param_C_2; ++i) {
    __xlx_C_2_output_buffer[i] = __xlx_C_2__input_buffer[i+__xlx_offset_param_C_2];
  }
  for (int i = 0; i < __xlx_size_param_C_2; ++i) {
    ((char*)__xlx_apatb_param_C_2)[i*4+0] = __xlx_C_2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_C_2)[i*4+1] = __xlx_C_2_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_C_2)[i*4+2] = __xlx_C_2_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_C_2)[i*4+3] = __xlx_C_2_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_C_3
  sc_bv<32>*__xlx_C_3_output_buffer = new sc_bv<32>[__xlx_size_param_C_3];
  for (int i = 0; i < __xlx_size_param_C_3; ++i) {
    __xlx_C_3_output_buffer[i] = __xlx_C_3__input_buffer[i+__xlx_offset_param_C_3];
  }
  for (int i = 0; i < __xlx_size_param_C_3; ++i) {
    ((char*)__xlx_apatb_param_C_3)[i*4+0] = __xlx_C_3_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_C_3)[i*4+1] = __xlx_C_3_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_C_3)[i*4+2] = __xlx_C_3_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_C_3)[i*4+3] = __xlx_C_3_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_C_4
  sc_bv<32>*__xlx_C_4_output_buffer = new sc_bv<32>[__xlx_size_param_C_4];
  for (int i = 0; i < __xlx_size_param_C_4; ++i) {
    __xlx_C_4_output_buffer[i] = __xlx_C_4__input_buffer[i+__xlx_offset_param_C_4];
  }
  for (int i = 0; i < __xlx_size_param_C_4; ++i) {
    ((char*)__xlx_apatb_param_C_4)[i*4+0] = __xlx_C_4_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_C_4)[i*4+1] = __xlx_C_4_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_C_4)[i*4+2] = __xlx_C_4_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_C_4)[i*4+3] = __xlx_C_4_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_C_5
  sc_bv<32>*__xlx_C_5_output_buffer = new sc_bv<32>[__xlx_size_param_C_5];
  for (int i = 0; i < __xlx_size_param_C_5; ++i) {
    __xlx_C_5_output_buffer[i] = __xlx_C_5__input_buffer[i+__xlx_offset_param_C_5];
  }
  for (int i = 0; i < __xlx_size_param_C_5; ++i) {
    ((char*)__xlx_apatb_param_C_5)[i*4+0] = __xlx_C_5_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_C_5)[i*4+1] = __xlx_C_5_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_C_5)[i*4+2] = __xlx_C_5_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_C_5)[i*4+3] = __xlx_C_5_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_C_6
  sc_bv<32>*__xlx_C_6_output_buffer = new sc_bv<32>[__xlx_size_param_C_6];
  for (int i = 0; i < __xlx_size_param_C_6; ++i) {
    __xlx_C_6_output_buffer[i] = __xlx_C_6__input_buffer[i+__xlx_offset_param_C_6];
  }
  for (int i = 0; i < __xlx_size_param_C_6; ++i) {
    ((char*)__xlx_apatb_param_C_6)[i*4+0] = __xlx_C_6_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_C_6)[i*4+1] = __xlx_C_6_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_C_6)[i*4+2] = __xlx_C_6_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_C_6)[i*4+3] = __xlx_C_6_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_C_7
  sc_bv<32>*__xlx_C_7_output_buffer = new sc_bv<32>[__xlx_size_param_C_7];
  for (int i = 0; i < __xlx_size_param_C_7; ++i) {
    __xlx_C_7_output_buffer[i] = __xlx_C_7__input_buffer[i+__xlx_offset_param_C_7];
  }
  for (int i = 0; i < __xlx_size_param_C_7; ++i) {
    ((char*)__xlx_apatb_param_C_7)[i*4+0] = __xlx_C_7_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_C_7)[i*4+1] = __xlx_C_7_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_C_7)[i*4+2] = __xlx_C_7_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_C_7)[i*4+3] = __xlx_C_7_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_X1_0
  sc_bv<32>*__xlx_X1_0_output_buffer = new sc_bv<32>[__xlx_size_param_X1_0];
  for (int i = 0; i < __xlx_size_param_X1_0; ++i) {
    __xlx_X1_0_output_buffer[i] = __xlx_X1_0__input_buffer[i+__xlx_offset_param_X1_0];
  }
  for (int i = 0; i < __xlx_size_param_X1_0; ++i) {
    ((char*)__xlx_apatb_param_X1_0)[i*4+0] = __xlx_X1_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_X1_0)[i*4+1] = __xlx_X1_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_X1_0)[i*4+2] = __xlx_X1_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_X1_0)[i*4+3] = __xlx_X1_0_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_X1_1
  sc_bv<32>*__xlx_X1_1_output_buffer = new sc_bv<32>[__xlx_size_param_X1_1];
  for (int i = 0; i < __xlx_size_param_X1_1; ++i) {
    __xlx_X1_1_output_buffer[i] = __xlx_X1_1__input_buffer[i+__xlx_offset_param_X1_1];
  }
  for (int i = 0; i < __xlx_size_param_X1_1; ++i) {
    ((char*)__xlx_apatb_param_X1_1)[i*4+0] = __xlx_X1_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_X1_1)[i*4+1] = __xlx_X1_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_X1_1)[i*4+2] = __xlx_X1_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_X1_1)[i*4+3] = __xlx_X1_1_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_X1_2
  sc_bv<32>*__xlx_X1_2_output_buffer = new sc_bv<32>[__xlx_size_param_X1_2];
  for (int i = 0; i < __xlx_size_param_X1_2; ++i) {
    __xlx_X1_2_output_buffer[i] = __xlx_X1_2__input_buffer[i+__xlx_offset_param_X1_2];
  }
  for (int i = 0; i < __xlx_size_param_X1_2; ++i) {
    ((char*)__xlx_apatb_param_X1_2)[i*4+0] = __xlx_X1_2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_X1_2)[i*4+1] = __xlx_X1_2_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_X1_2)[i*4+2] = __xlx_X1_2_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_X1_2)[i*4+3] = __xlx_X1_2_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_X1_3
  sc_bv<32>*__xlx_X1_3_output_buffer = new sc_bv<32>[__xlx_size_param_X1_3];
  for (int i = 0; i < __xlx_size_param_X1_3; ++i) {
    __xlx_X1_3_output_buffer[i] = __xlx_X1_3__input_buffer[i+__xlx_offset_param_X1_3];
  }
  for (int i = 0; i < __xlx_size_param_X1_3; ++i) {
    ((char*)__xlx_apatb_param_X1_3)[i*4+0] = __xlx_X1_3_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_X1_3)[i*4+1] = __xlx_X1_3_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_X1_3)[i*4+2] = __xlx_X1_3_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_X1_3)[i*4+3] = __xlx_X1_3_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_X1_4
  sc_bv<32>*__xlx_X1_4_output_buffer = new sc_bv<32>[__xlx_size_param_X1_4];
  for (int i = 0; i < __xlx_size_param_X1_4; ++i) {
    __xlx_X1_4_output_buffer[i] = __xlx_X1_4__input_buffer[i+__xlx_offset_param_X1_4];
  }
  for (int i = 0; i < __xlx_size_param_X1_4; ++i) {
    ((char*)__xlx_apatb_param_X1_4)[i*4+0] = __xlx_X1_4_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_X1_4)[i*4+1] = __xlx_X1_4_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_X1_4)[i*4+2] = __xlx_X1_4_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_X1_4)[i*4+3] = __xlx_X1_4_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_X1_5
  sc_bv<32>*__xlx_X1_5_output_buffer = new sc_bv<32>[__xlx_size_param_X1_5];
  for (int i = 0; i < __xlx_size_param_X1_5; ++i) {
    __xlx_X1_5_output_buffer[i] = __xlx_X1_5__input_buffer[i+__xlx_offset_param_X1_5];
  }
  for (int i = 0; i < __xlx_size_param_X1_5; ++i) {
    ((char*)__xlx_apatb_param_X1_5)[i*4+0] = __xlx_X1_5_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_X1_5)[i*4+1] = __xlx_X1_5_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_X1_5)[i*4+2] = __xlx_X1_5_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_X1_5)[i*4+3] = __xlx_X1_5_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_X1_6
  sc_bv<32>*__xlx_X1_6_output_buffer = new sc_bv<32>[__xlx_size_param_X1_6];
  for (int i = 0; i < __xlx_size_param_X1_6; ++i) {
    __xlx_X1_6_output_buffer[i] = __xlx_X1_6__input_buffer[i+__xlx_offset_param_X1_6];
  }
  for (int i = 0; i < __xlx_size_param_X1_6; ++i) {
    ((char*)__xlx_apatb_param_X1_6)[i*4+0] = __xlx_X1_6_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_X1_6)[i*4+1] = __xlx_X1_6_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_X1_6)[i*4+2] = __xlx_X1_6_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_X1_6)[i*4+3] = __xlx_X1_6_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_X1_7
  sc_bv<32>*__xlx_X1_7_output_buffer = new sc_bv<32>[__xlx_size_param_X1_7];
  for (int i = 0; i < __xlx_size_param_X1_7; ++i) {
    __xlx_X1_7_output_buffer[i] = __xlx_X1_7__input_buffer[i+__xlx_offset_param_X1_7];
  }
  for (int i = 0; i < __xlx_size_param_X1_7; ++i) {
    ((char*)__xlx_apatb_param_X1_7)[i*4+0] = __xlx_X1_7_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_X1_7)[i*4+1] = __xlx_X1_7_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_X1_7)[i*4+2] = __xlx_X1_7_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_X1_7)[i*4+3] = __xlx_X1_7_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_X2_0
  sc_bv<32>*__xlx_X2_0_output_buffer = new sc_bv<32>[__xlx_size_param_X2_0];
  for (int i = 0; i < __xlx_size_param_X2_0; ++i) {
    __xlx_X2_0_output_buffer[i] = __xlx_X2_0__input_buffer[i+__xlx_offset_param_X2_0];
  }
  for (int i = 0; i < __xlx_size_param_X2_0; ++i) {
    ((char*)__xlx_apatb_param_X2_0)[i*4+0] = __xlx_X2_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_X2_0)[i*4+1] = __xlx_X2_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_X2_0)[i*4+2] = __xlx_X2_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_X2_0)[i*4+3] = __xlx_X2_0_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_X2_1
  sc_bv<32>*__xlx_X2_1_output_buffer = new sc_bv<32>[__xlx_size_param_X2_1];
  for (int i = 0; i < __xlx_size_param_X2_1; ++i) {
    __xlx_X2_1_output_buffer[i] = __xlx_X2_1__input_buffer[i+__xlx_offset_param_X2_1];
  }
  for (int i = 0; i < __xlx_size_param_X2_1; ++i) {
    ((char*)__xlx_apatb_param_X2_1)[i*4+0] = __xlx_X2_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_X2_1)[i*4+1] = __xlx_X2_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_X2_1)[i*4+2] = __xlx_X2_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_X2_1)[i*4+3] = __xlx_X2_1_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_X2_2
  sc_bv<32>*__xlx_X2_2_output_buffer = new sc_bv<32>[__xlx_size_param_X2_2];
  for (int i = 0; i < __xlx_size_param_X2_2; ++i) {
    __xlx_X2_2_output_buffer[i] = __xlx_X2_2__input_buffer[i+__xlx_offset_param_X2_2];
  }
  for (int i = 0; i < __xlx_size_param_X2_2; ++i) {
    ((char*)__xlx_apatb_param_X2_2)[i*4+0] = __xlx_X2_2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_X2_2)[i*4+1] = __xlx_X2_2_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_X2_2)[i*4+2] = __xlx_X2_2_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_X2_2)[i*4+3] = __xlx_X2_2_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_X2_3
  sc_bv<32>*__xlx_X2_3_output_buffer = new sc_bv<32>[__xlx_size_param_X2_3];
  for (int i = 0; i < __xlx_size_param_X2_3; ++i) {
    __xlx_X2_3_output_buffer[i] = __xlx_X2_3__input_buffer[i+__xlx_offset_param_X2_3];
  }
  for (int i = 0; i < __xlx_size_param_X2_3; ++i) {
    ((char*)__xlx_apatb_param_X2_3)[i*4+0] = __xlx_X2_3_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_X2_3)[i*4+1] = __xlx_X2_3_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_X2_3)[i*4+2] = __xlx_X2_3_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_X2_3)[i*4+3] = __xlx_X2_3_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_X2_4
  sc_bv<32>*__xlx_X2_4_output_buffer = new sc_bv<32>[__xlx_size_param_X2_4];
  for (int i = 0; i < __xlx_size_param_X2_4; ++i) {
    __xlx_X2_4_output_buffer[i] = __xlx_X2_4__input_buffer[i+__xlx_offset_param_X2_4];
  }
  for (int i = 0; i < __xlx_size_param_X2_4; ++i) {
    ((char*)__xlx_apatb_param_X2_4)[i*4+0] = __xlx_X2_4_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_X2_4)[i*4+1] = __xlx_X2_4_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_X2_4)[i*4+2] = __xlx_X2_4_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_X2_4)[i*4+3] = __xlx_X2_4_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_X2_5
  sc_bv<32>*__xlx_X2_5_output_buffer = new sc_bv<32>[__xlx_size_param_X2_5];
  for (int i = 0; i < __xlx_size_param_X2_5; ++i) {
    __xlx_X2_5_output_buffer[i] = __xlx_X2_5__input_buffer[i+__xlx_offset_param_X2_5];
  }
  for (int i = 0; i < __xlx_size_param_X2_5; ++i) {
    ((char*)__xlx_apatb_param_X2_5)[i*4+0] = __xlx_X2_5_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_X2_5)[i*4+1] = __xlx_X2_5_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_X2_5)[i*4+2] = __xlx_X2_5_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_X2_5)[i*4+3] = __xlx_X2_5_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_X2_6
  sc_bv<32>*__xlx_X2_6_output_buffer = new sc_bv<32>[__xlx_size_param_X2_6];
  for (int i = 0; i < __xlx_size_param_X2_6; ++i) {
    __xlx_X2_6_output_buffer[i] = __xlx_X2_6__input_buffer[i+__xlx_offset_param_X2_6];
  }
  for (int i = 0; i < __xlx_size_param_X2_6; ++i) {
    ((char*)__xlx_apatb_param_X2_6)[i*4+0] = __xlx_X2_6_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_X2_6)[i*4+1] = __xlx_X2_6_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_X2_6)[i*4+2] = __xlx_X2_6_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_X2_6)[i*4+3] = __xlx_X2_6_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_X2_7
  sc_bv<32>*__xlx_X2_7_output_buffer = new sc_bv<32>[__xlx_size_param_X2_7];
  for (int i = 0; i < __xlx_size_param_X2_7; ++i) {
    __xlx_X2_7_output_buffer[i] = __xlx_X2_7__input_buffer[i+__xlx_offset_param_X2_7];
  }
  for (int i = 0; i < __xlx_size_param_X2_7; ++i) {
    ((char*)__xlx_apatb_param_X2_7)[i*4+0] = __xlx_X2_7_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_X2_7)[i*4+1] = __xlx_X2_7_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_X2_7)[i*4+2] = __xlx_X2_7_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_X2_7)[i*4+3] = __xlx_X2_7_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_D_0
  sc_bv<32>*__xlx_D_0_output_buffer = new sc_bv<32>[__xlx_size_param_D_0];
  for (int i = 0; i < __xlx_size_param_D_0; ++i) {
    __xlx_D_0_output_buffer[i] = __xlx_D_0__input_buffer[i+__xlx_offset_param_D_0];
  }
  for (int i = 0; i < __xlx_size_param_D_0; ++i) {
    ((char*)__xlx_apatb_param_D_0)[i*4+0] = __xlx_D_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_D_0)[i*4+1] = __xlx_D_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_D_0)[i*4+2] = __xlx_D_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_D_0)[i*4+3] = __xlx_D_0_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_D_1
  sc_bv<32>*__xlx_D_1_output_buffer = new sc_bv<32>[__xlx_size_param_D_1];
  for (int i = 0; i < __xlx_size_param_D_1; ++i) {
    __xlx_D_1_output_buffer[i] = __xlx_D_1__input_buffer[i+__xlx_offset_param_D_1];
  }
  for (int i = 0; i < __xlx_size_param_D_1; ++i) {
    ((char*)__xlx_apatb_param_D_1)[i*4+0] = __xlx_D_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_D_1)[i*4+1] = __xlx_D_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_D_1)[i*4+2] = __xlx_D_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_D_1)[i*4+3] = __xlx_D_1_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_D_2
  sc_bv<32>*__xlx_D_2_output_buffer = new sc_bv<32>[__xlx_size_param_D_2];
  for (int i = 0; i < __xlx_size_param_D_2; ++i) {
    __xlx_D_2_output_buffer[i] = __xlx_D_2__input_buffer[i+__xlx_offset_param_D_2];
  }
  for (int i = 0; i < __xlx_size_param_D_2; ++i) {
    ((char*)__xlx_apatb_param_D_2)[i*4+0] = __xlx_D_2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_D_2)[i*4+1] = __xlx_D_2_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_D_2)[i*4+2] = __xlx_D_2_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_D_2)[i*4+3] = __xlx_D_2_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_D_3
  sc_bv<32>*__xlx_D_3_output_buffer = new sc_bv<32>[__xlx_size_param_D_3];
  for (int i = 0; i < __xlx_size_param_D_3; ++i) {
    __xlx_D_3_output_buffer[i] = __xlx_D_3__input_buffer[i+__xlx_offset_param_D_3];
  }
  for (int i = 0; i < __xlx_size_param_D_3; ++i) {
    ((char*)__xlx_apatb_param_D_3)[i*4+0] = __xlx_D_3_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_D_3)[i*4+1] = __xlx_D_3_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_D_3)[i*4+2] = __xlx_D_3_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_D_3)[i*4+3] = __xlx_D_3_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_D_4
  sc_bv<32>*__xlx_D_4_output_buffer = new sc_bv<32>[__xlx_size_param_D_4];
  for (int i = 0; i < __xlx_size_param_D_4; ++i) {
    __xlx_D_4_output_buffer[i] = __xlx_D_4__input_buffer[i+__xlx_offset_param_D_4];
  }
  for (int i = 0; i < __xlx_size_param_D_4; ++i) {
    ((char*)__xlx_apatb_param_D_4)[i*4+0] = __xlx_D_4_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_D_4)[i*4+1] = __xlx_D_4_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_D_4)[i*4+2] = __xlx_D_4_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_D_4)[i*4+3] = __xlx_D_4_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_D_5
  sc_bv<32>*__xlx_D_5_output_buffer = new sc_bv<32>[__xlx_size_param_D_5];
  for (int i = 0; i < __xlx_size_param_D_5; ++i) {
    __xlx_D_5_output_buffer[i] = __xlx_D_5__input_buffer[i+__xlx_offset_param_D_5];
  }
  for (int i = 0; i < __xlx_size_param_D_5; ++i) {
    ((char*)__xlx_apatb_param_D_5)[i*4+0] = __xlx_D_5_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_D_5)[i*4+1] = __xlx_D_5_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_D_5)[i*4+2] = __xlx_D_5_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_D_5)[i*4+3] = __xlx_D_5_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_D_6
  sc_bv<32>*__xlx_D_6_output_buffer = new sc_bv<32>[__xlx_size_param_D_6];
  for (int i = 0; i < __xlx_size_param_D_6; ++i) {
    __xlx_D_6_output_buffer[i] = __xlx_D_6__input_buffer[i+__xlx_offset_param_D_6];
  }
  for (int i = 0; i < __xlx_size_param_D_6; ++i) {
    ((char*)__xlx_apatb_param_D_6)[i*4+0] = __xlx_D_6_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_D_6)[i*4+1] = __xlx_D_6_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_D_6)[i*4+2] = __xlx_D_6_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_D_6)[i*4+3] = __xlx_D_6_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_D_7
  sc_bv<32>*__xlx_D_7_output_buffer = new sc_bv<32>[__xlx_size_param_D_7];
  for (int i = 0; i < __xlx_size_param_D_7; ++i) {
    __xlx_D_7_output_buffer[i] = __xlx_D_7__input_buffer[i+__xlx_offset_param_D_7];
  }
  for (int i = 0; i < __xlx_size_param_D_7; ++i) {
    ((char*)__xlx_apatb_param_D_7)[i*4+0] = __xlx_D_7_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_D_7)[i*4+1] = __xlx_D_7_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_D_7)[i*4+2] = __xlx_D_7_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_D_7)[i*4+3] = __xlx_D_7_output_buffer[i].range(31, 24).to_uint();
  }
}
