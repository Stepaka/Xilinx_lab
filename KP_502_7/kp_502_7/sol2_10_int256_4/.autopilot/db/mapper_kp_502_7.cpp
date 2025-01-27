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
struct __cosim_s80__ { char data[128]; };
extern "C" void kp_502_7(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_kp_502_7_hw(volatile void * __xlx_apatb_param_A, volatile void * __xlx_apatb_param_B, volatile void * __xlx_apatb_param_C, volatile void * __xlx_apatb_param_X1, volatile void * __xlx_apatb_param_X2, volatile void * __xlx_apatb_param_D) {
  // DUT call
  kp_502_7(__xlx_apatb_param_A, __xlx_apatb_param_B, __xlx_apatb_param_C, __xlx_apatb_param_X1, __xlx_apatb_param_X2, __xlx_apatb_param_D);
}
