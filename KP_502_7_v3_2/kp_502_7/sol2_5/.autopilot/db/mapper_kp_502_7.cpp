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
extern "C" void kp_502_7(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_kp_502_7_hw(volatile void * __xlx_apatb_param_A_0, volatile void * __xlx_apatb_param_A_1, volatile void * __xlx_apatb_param_A_2, volatile void * __xlx_apatb_param_A_3, volatile void * __xlx_apatb_param_A_4, volatile void * __xlx_apatb_param_A_5, volatile void * __xlx_apatb_param_A_6, volatile void * __xlx_apatb_param_A_7, volatile void * __xlx_apatb_param_B_0, volatile void * __xlx_apatb_param_B_1, volatile void * __xlx_apatb_param_B_2, volatile void * __xlx_apatb_param_B_3, volatile void * __xlx_apatb_param_B_4, volatile void * __xlx_apatb_param_B_5, volatile void * __xlx_apatb_param_B_6, volatile void * __xlx_apatb_param_B_7, volatile void * __xlx_apatb_param_C_0, volatile void * __xlx_apatb_param_C_1, volatile void * __xlx_apatb_param_C_2, volatile void * __xlx_apatb_param_C_3, volatile void * __xlx_apatb_param_C_4, volatile void * __xlx_apatb_param_C_5, volatile void * __xlx_apatb_param_C_6, volatile void * __xlx_apatb_param_C_7, volatile void * __xlx_apatb_param_X1_0, volatile void * __xlx_apatb_param_X1_1, volatile void * __xlx_apatb_param_X1_2, volatile void * __xlx_apatb_param_X1_3, volatile void * __xlx_apatb_param_X1_4, volatile void * __xlx_apatb_param_X1_5, volatile void * __xlx_apatb_param_X1_6, volatile void * __xlx_apatb_param_X1_7, volatile void * __xlx_apatb_param_X2_0, volatile void * __xlx_apatb_param_X2_1, volatile void * __xlx_apatb_param_X2_2, volatile void * __xlx_apatb_param_X2_3, volatile void * __xlx_apatb_param_X2_4, volatile void * __xlx_apatb_param_X2_5, volatile void * __xlx_apatb_param_X2_6, volatile void * __xlx_apatb_param_X2_7, volatile void * __xlx_apatb_param_D_0, volatile void * __xlx_apatb_param_D_1, volatile void * __xlx_apatb_param_D_2, volatile void * __xlx_apatb_param_D_3, volatile void * __xlx_apatb_param_D_4, volatile void * __xlx_apatb_param_D_5, volatile void * __xlx_apatb_param_D_6, volatile void * __xlx_apatb_param_D_7) {
  // DUT call
  kp_502_7(__xlx_apatb_param_A_0, __xlx_apatb_param_A_1, __xlx_apatb_param_A_2, __xlx_apatb_param_A_3, __xlx_apatb_param_A_4, __xlx_apatb_param_A_5, __xlx_apatb_param_A_6, __xlx_apatb_param_A_7, __xlx_apatb_param_B_0, __xlx_apatb_param_B_1, __xlx_apatb_param_B_2, __xlx_apatb_param_B_3, __xlx_apatb_param_B_4, __xlx_apatb_param_B_5, __xlx_apatb_param_B_6, __xlx_apatb_param_B_7, __xlx_apatb_param_C_0, __xlx_apatb_param_C_1, __xlx_apatb_param_C_2, __xlx_apatb_param_C_3, __xlx_apatb_param_C_4, __xlx_apatb_param_C_5, __xlx_apatb_param_C_6, __xlx_apatb_param_C_7, __xlx_apatb_param_X1_0, __xlx_apatb_param_X1_1, __xlx_apatb_param_X1_2, __xlx_apatb_param_X1_3, __xlx_apatb_param_X1_4, __xlx_apatb_param_X1_5, __xlx_apatb_param_X1_6, __xlx_apatb_param_X1_7, __xlx_apatb_param_X2_0, __xlx_apatb_param_X2_1, __xlx_apatb_param_X2_2, __xlx_apatb_param_X2_3, __xlx_apatb_param_X2_4, __xlx_apatb_param_X2_5, __xlx_apatb_param_X2_6, __xlx_apatb_param_X2_7, __xlx_apatb_param_D_0, __xlx_apatb_param_D_1, __xlx_apatb_param_D_2, __xlx_apatb_param_D_3, __xlx_apatb_param_D_4, __xlx_apatb_param_D_5, __xlx_apatb_param_D_6, __xlx_apatb_param_D_7);
}
