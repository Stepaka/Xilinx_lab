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
#define AUTOTB_TVIN_A_0 "../tv/cdatafile/c.kp_502_7.autotvin_A_0.dat"
#define AUTOTB_TVOUT_A_0 "../tv/cdatafile/c.kp_502_7.autotvout_A_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_1 "../tv/cdatafile/c.kp_502_7.autotvin_A_1.dat"
#define AUTOTB_TVOUT_A_1 "../tv/cdatafile/c.kp_502_7.autotvout_A_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_0 "../tv/cdatafile/c.kp_502_7.autotvin_B_0.dat"
#define AUTOTB_TVOUT_B_0 "../tv/cdatafile/c.kp_502_7.autotvout_B_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_1 "../tv/cdatafile/c.kp_502_7.autotvin_B_1.dat"
#define AUTOTB_TVOUT_B_1 "../tv/cdatafile/c.kp_502_7.autotvout_B_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_C_0 "../tv/cdatafile/c.kp_502_7.autotvin_C_0.dat"
#define AUTOTB_TVOUT_C_0 "../tv/cdatafile/c.kp_502_7.autotvout_C_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_C_1 "../tv/cdatafile/c.kp_502_7.autotvin_C_1.dat"
#define AUTOTB_TVOUT_C_1 "../tv/cdatafile/c.kp_502_7.autotvout_C_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_X1_0 "../tv/cdatafile/c.kp_502_7.autotvin_X1_0.dat"
#define AUTOTB_TVOUT_X1_0 "../tv/cdatafile/c.kp_502_7.autotvout_X1_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_X1_1 "../tv/cdatafile/c.kp_502_7.autotvin_X1_1.dat"
#define AUTOTB_TVOUT_X1_1 "../tv/cdatafile/c.kp_502_7.autotvout_X1_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_X2_0 "../tv/cdatafile/c.kp_502_7.autotvin_X2_0.dat"
#define AUTOTB_TVOUT_X2_0 "../tv/cdatafile/c.kp_502_7.autotvout_X2_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_X2_1 "../tv/cdatafile/c.kp_502_7.autotvin_X2_1.dat"
#define AUTOTB_TVOUT_X2_1 "../tv/cdatafile/c.kp_502_7.autotvout_X2_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_D_0 "../tv/cdatafile/c.kp_502_7.autotvin_D_0.dat"
#define AUTOTB_TVOUT_D_0 "../tv/cdatafile/c.kp_502_7.autotvout_D_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_D_1 "../tv/cdatafile/c.kp_502_7.autotvin_D_1.dat"
#define AUTOTB_TVOUT_D_1 "../tv/cdatafile/c.kp_502_7.autotvout_D_1.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_A_0 "../tv/rtldatafile/rtl.kp_502_7.autotvout_A_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_1 "../tv/rtldatafile/rtl.kp_502_7.autotvout_A_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_0 "../tv/rtldatafile/rtl.kp_502_7.autotvout_B_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_1 "../tv/rtldatafile/rtl.kp_502_7.autotvout_B_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C_0 "../tv/rtldatafile/rtl.kp_502_7.autotvout_C_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C_1 "../tv/rtldatafile/rtl.kp_502_7.autotvout_C_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X1_0 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X1_1 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X2_0 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X2_1 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D_0 "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D_1 "../tv/rtldatafile/rtl.kp_502_7.autotvout_D_1.dat"


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
  A_0_depth = 0;
  A_1_depth = 0;
  B_0_depth = 0;
  B_1_depth = 0;
  C_0_depth = 0;
  C_1_depth = 0;
  X1_0_depth = 0;
  X1_1_depth = 0;
  X2_0_depth = 0;
  X2_1_depth = 0;
  D_0_depth = 0;
  D_1_depth = 0;
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
  total_list << "{A_0 " << A_0_depth << "}\n";
  total_list << "{A_1 " << A_1_depth << "}\n";
  total_list << "{B_0 " << B_0_depth << "}\n";
  total_list << "{B_1 " << B_1_depth << "}\n";
  total_list << "{C_0 " << C_0_depth << "}\n";
  total_list << "{C_1 " << C_1_depth << "}\n";
  total_list << "{X1_0 " << X1_0_depth << "}\n";
  total_list << "{X1_1 " << X1_1_depth << "}\n";
  total_list << "{X2_0 " << X2_0_depth << "}\n";
  total_list << "{X2_1 " << X2_1_depth << "}\n";
  total_list << "{D_0 " << D_0_depth << "}\n";
  total_list << "{D_1 " << D_1_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int A_0_depth;
    int A_1_depth;
    int B_0_depth;
    int B_1_depth;
    int C_0_depth;
    int C_1_depth;
    int X1_0_depth;
    int X1_1_depth;
    int X2_0_depth;
    int X2_1_depth;
    int D_0_depth;
    int D_1_depth;
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
extern "C" void kp_502_7_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_kp_502_7_hw(volatile void * __xlx_apatb_param_A_0, volatile void * __xlx_apatb_param_A_1, volatile void * __xlx_apatb_param_B_0, volatile void * __xlx_apatb_param_B_1, volatile void * __xlx_apatb_param_C_0, volatile void * __xlx_apatb_param_C_1, volatile void * __xlx_apatb_param_X1_0, volatile void * __xlx_apatb_param_X1_1, volatile void * __xlx_apatb_param_X2_0, volatile void * __xlx_apatb_param_X2_1, volatile void * __xlx_apatb_param_D_0, volatile void * __xlx_apatb_param_D_1) {
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
transaction<64> tr(4);
aesl_fh.read(AUTOTB_TVOUT_PC_X1_0, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X1_0, 4);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X1_0);
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
          std::vector<sc_bv<64> > X1_0_pc_buffer(4);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X1_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X1_0_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X1_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X1_0)[j*8+0] = X1_0_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X1_0)[j*8+1] = X1_0_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X1_0)[j*8+2] = X1_0_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X1_0)[j*8+3] = X1_0_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X1_0)[j*8+4] = X1_0_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X1_0)[j*8+5] = X1_0_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X1_0)[j*8+6] = X1_0_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X1_0)[j*8+7] = X1_0_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4);
aesl_fh.read(AUTOTB_TVOUT_PC_X1_1, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X1_1, 4);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X1_1);
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
          std::vector<sc_bv<64> > X1_1_pc_buffer(4);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X1_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X1_1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X1_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X1_1)[j*8+0] = X1_1_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X1_1)[j*8+1] = X1_1_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X1_1)[j*8+2] = X1_1_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X1_1)[j*8+3] = X1_1_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X1_1)[j*8+4] = X1_1_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X1_1)[j*8+5] = X1_1_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X1_1)[j*8+6] = X1_1_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X1_1)[j*8+7] = X1_1_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4);
aesl_fh.read(AUTOTB_TVOUT_PC_X2_0, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X2_0, 4);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X2_0);
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
          std::vector<sc_bv<64> > X2_0_pc_buffer(4);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X2_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X2_0_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X2_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X2_0)[j*8+0] = X2_0_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X2_0)[j*8+1] = X2_0_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X2_0)[j*8+2] = X2_0_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X2_0)[j*8+3] = X2_0_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X2_0)[j*8+4] = X2_0_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X2_0)[j*8+5] = X2_0_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X2_0)[j*8+6] = X2_0_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X2_0)[j*8+7] = X2_0_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4);
aesl_fh.read(AUTOTB_TVOUT_PC_X2_1, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_X2_1, 4);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X2_1);
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
          std::vector<sc_bv<64> > X2_1_pc_buffer(4);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X2_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X2_1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X2_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_X2_1)[j*8+0] = X2_1_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_X2_1)[j*8+1] = X2_1_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_X2_1)[j*8+2] = X2_1_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_X2_1)[j*8+3] = X2_1_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_X2_1)[j*8+4] = X2_1_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_X2_1)[j*8+5] = X2_1_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_X2_1)[j*8+6] = X2_1_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_X2_1)[j*8+7] = X2_1_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4);
aesl_fh.read(AUTOTB_TVOUT_PC_D_0, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_D_0, 4);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_D_0);
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
          std::vector<sc_bv<64> > D_0_pc_buffer(4);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "D_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              D_0_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "D_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_D_0)[j*8+0] = D_0_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_D_0)[j*8+1] = D_0_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_D_0)[j*8+2] = D_0_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_D_0)[j*8+3] = D_0_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_D_0)[j*8+4] = D_0_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_D_0)[j*8+5] = D_0_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_D_0)[j*8+6] = D_0_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_D_0)[j*8+7] = D_0_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4);
aesl_fh.read(AUTOTB_TVOUT_PC_D_1, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_D_1, 4);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_D_1);
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
          std::vector<sc_bv<64> > D_1_pc_buffer(4);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "D_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              D_1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "D_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_D_1)[j*8+0] = D_1_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_D_1)[j*8+1] = D_1_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_D_1)[j*8+2] = D_1_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_D_1)[j*8+3] = D_1_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_D_1)[j*8+4] = D_1_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_D_1)[j*8+5] = D_1_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_D_1)[j*8+6] = D_1_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_D_1)[j*8+7] = D_1_pc_buffer[i].range(63, 56).to_int64();
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
unsigned __xlx_offset_byte_param_A_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_A_0, 'b');
transaction<64> tr(4);
  __xlx_offset_byte_param_A_0 = 0*8;
  if (__xlx_apatb_param_A_0) {
tr.import<8>((char*)__xlx_apatb_param_A_0, 4, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_A_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4, &tcl_file.A_0_depth);
#else
// print A_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_A_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_A_0 = 0*8;
  if (__xlx_apatb_param_A_0) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_A_0)[j];
aesl_fh.write(AUTOTB_TVIN_A_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4, &tcl_file.A_0_depth);
aesl_fh.write(AUTOTB_TVIN_A_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_A_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_A_1, 'b');
transaction<64> tr(4);
  __xlx_offset_byte_param_A_1 = 0*8;
  if (__xlx_apatb_param_A_1) {
tr.import<8>((char*)__xlx_apatb_param_A_1, 4, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_A_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4, &tcl_file.A_1_depth);
#else
// print A_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_A_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_A_1 = 0*8;
  if (__xlx_apatb_param_A_1) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_A_1)[j];
aesl_fh.write(AUTOTB_TVIN_A_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4, &tcl_file.A_1_depth);
aesl_fh.write(AUTOTB_TVIN_A_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_B_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_B_0, 'b');
transaction<64> tr(4);
  __xlx_offset_byte_param_B_0 = 0*8;
  if (__xlx_apatb_param_B_0) {
tr.import<8>((char*)__xlx_apatb_param_B_0, 4, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_B_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4, &tcl_file.B_0_depth);
#else
// print B_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_B_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_B_0 = 0*8;
  if (__xlx_apatb_param_B_0) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_B_0)[j];
aesl_fh.write(AUTOTB_TVIN_B_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4, &tcl_file.B_0_depth);
aesl_fh.write(AUTOTB_TVIN_B_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_B_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_B_1, 'b');
transaction<64> tr(4);
  __xlx_offset_byte_param_B_1 = 0*8;
  if (__xlx_apatb_param_B_1) {
tr.import<8>((char*)__xlx_apatb_param_B_1, 4, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_B_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4, &tcl_file.B_1_depth);
#else
// print B_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_B_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_B_1 = 0*8;
  if (__xlx_apatb_param_B_1) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_B_1)[j];
aesl_fh.write(AUTOTB_TVIN_B_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4, &tcl_file.B_1_depth);
aesl_fh.write(AUTOTB_TVIN_B_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_C_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_C_0, 'b');
transaction<64> tr(4);
  __xlx_offset_byte_param_C_0 = 0*8;
  if (__xlx_apatb_param_C_0) {
tr.import<8>((char*)__xlx_apatb_param_C_0, 4, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_C_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4, &tcl_file.C_0_depth);
#else
// print C_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_C_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_C_0 = 0*8;
  if (__xlx_apatb_param_C_0) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_C_0)[j];
aesl_fh.write(AUTOTB_TVIN_C_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4, &tcl_file.C_0_depth);
aesl_fh.write(AUTOTB_TVIN_C_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_C_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_C_1, 'b');
transaction<64> tr(4);
  __xlx_offset_byte_param_C_1 = 0*8;
  if (__xlx_apatb_param_C_1) {
tr.import<8>((char*)__xlx_apatb_param_C_1, 4, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_C_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4, &tcl_file.C_1_depth);
#else
// print C_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_C_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_C_1 = 0*8;
  if (__xlx_apatb_param_C_1) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_C_1)[j];
aesl_fh.write(AUTOTB_TVIN_C_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4, &tcl_file.C_1_depth);
aesl_fh.write(AUTOTB_TVIN_C_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X1_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X1_0, 'b');
transaction<64> tr(4);
  __xlx_offset_byte_param_X1_0 = 0*8;
  if (__xlx_apatb_param_X1_0) {
tr.import<8>((char*)__xlx_apatb_param_X1_0, 4, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X1_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4, &tcl_file.X1_0_depth);
#else
// print X1_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X1_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_0 = 0*8;
  if (__xlx_apatb_param_X1_0) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_0)[j];
aesl_fh.write(AUTOTB_TVIN_X1_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4, &tcl_file.X1_0_depth);
aesl_fh.write(AUTOTB_TVIN_X1_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X1_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X1_1, 'b');
transaction<64> tr(4);
  __xlx_offset_byte_param_X1_1 = 0*8;
  if (__xlx_apatb_param_X1_1) {
tr.import<8>((char*)__xlx_apatb_param_X1_1, 4, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X1_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4, &tcl_file.X1_1_depth);
#else
// print X1_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X1_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_1 = 0*8;
  if (__xlx_apatb_param_X1_1) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_1)[j];
aesl_fh.write(AUTOTB_TVIN_X1_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4, &tcl_file.X1_1_depth);
aesl_fh.write(AUTOTB_TVIN_X1_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X2_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X2_0, 'b');
transaction<64> tr(4);
  __xlx_offset_byte_param_X2_0 = 0*8;
  if (__xlx_apatb_param_X2_0) {
tr.import<8>((char*)__xlx_apatb_param_X2_0, 4, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X2_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4, &tcl_file.X2_0_depth);
#else
// print X2_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X2_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_0 = 0*8;
  if (__xlx_apatb_param_X2_0) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_0)[j];
aesl_fh.write(AUTOTB_TVIN_X2_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4, &tcl_file.X2_0_depth);
aesl_fh.write(AUTOTB_TVIN_X2_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X2_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X2_1, 'b');
transaction<64> tr(4);
  __xlx_offset_byte_param_X2_1 = 0*8;
  if (__xlx_apatb_param_X2_1) {
tr.import<8>((char*)__xlx_apatb_param_X2_1, 4, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X2_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4, &tcl_file.X2_1_depth);
#else
// print X2_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X2_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_1 = 0*8;
  if (__xlx_apatb_param_X2_1) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_1)[j];
aesl_fh.write(AUTOTB_TVIN_X2_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4, &tcl_file.X2_1_depth);
aesl_fh.write(AUTOTB_TVIN_X2_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_D_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_D_0, 'b');
transaction<64> tr(4);
  __xlx_offset_byte_param_D_0 = 0*8;
  if (__xlx_apatb_param_D_0) {
tr.import<8>((char*)__xlx_apatb_param_D_0, 4, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_D_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4, &tcl_file.D_0_depth);
#else
// print D_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_D_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_0 = 0*8;
  if (__xlx_apatb_param_D_0) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_0)[j];
aesl_fh.write(AUTOTB_TVIN_D_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4, &tcl_file.D_0_depth);
aesl_fh.write(AUTOTB_TVIN_D_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_D_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_D_1, 'b');
transaction<64> tr(4);
  __xlx_offset_byte_param_D_1 = 0*8;
  if (__xlx_apatb_param_D_1) {
tr.import<8>((char*)__xlx_apatb_param_D_1, 4, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_D_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4, &tcl_file.D_1_depth);
#else
// print D_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_D_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_1 = 0*8;
  if (__xlx_apatb_param_D_1) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_1)[j];
aesl_fh.write(AUTOTB_TVIN_D_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4, &tcl_file.D_1_depth);
aesl_fh.write(AUTOTB_TVIN_D_1, end_str());
}

#endif
CodeState = CALL_C_DUT;
kp_502_7_hw_stub_wrapper(__xlx_apatb_param_A_0, __xlx_apatb_param_A_1, __xlx_apatb_param_B_0, __xlx_apatb_param_B_1, __xlx_apatb_param_C_0, __xlx_apatb_param_C_1, __xlx_apatb_param_X1_0, __xlx_apatb_param_X1_1, __xlx_apatb_param_X2_0, __xlx_apatb_param_X2_1, __xlx_apatb_param_D_0, __xlx_apatb_param_D_1);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X1_0, 'b');
transaction<64> tr(4);
  __xlx_offset_byte_param_X1_0 = 0*8;
  if (__xlx_apatb_param_X1_0) {
tr.import<8>((char*)__xlx_apatb_param_X1_0, 4, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X1_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4, &tcl_file.X1_0_depth);
#else
// print X1_0 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X1_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_0 = 0*8;
  if (__xlx_apatb_param_X1_0) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_0)[j];
aesl_fh.write(AUTOTB_TVOUT_X1_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4, &tcl_file.X1_0_depth);
aesl_fh.write(AUTOTB_TVOUT_X1_0, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X1_1, 'b');
transaction<64> tr(4);
  __xlx_offset_byte_param_X1_1 = 0*8;
  if (__xlx_apatb_param_X1_1) {
tr.import<8>((char*)__xlx_apatb_param_X1_1, 4, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X1_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4, &tcl_file.X1_1_depth);
#else
// print X1_1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X1_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1_1 = 0*8;
  if (__xlx_apatb_param_X1_1) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X1_1)[j];
aesl_fh.write(AUTOTB_TVOUT_X1_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4, &tcl_file.X1_1_depth);
aesl_fh.write(AUTOTB_TVOUT_X1_1, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X2_0, 'b');
transaction<64> tr(4);
  __xlx_offset_byte_param_X2_0 = 0*8;
  if (__xlx_apatb_param_X2_0) {
tr.import<8>((char*)__xlx_apatb_param_X2_0, 4, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X2_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4, &tcl_file.X2_0_depth);
#else
// print X2_0 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X2_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_0 = 0*8;
  if (__xlx_apatb_param_X2_0) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_0)[j];
aesl_fh.write(AUTOTB_TVOUT_X2_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4, &tcl_file.X2_0_depth);
aesl_fh.write(AUTOTB_TVOUT_X2_0, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X2_1, 'b');
transaction<64> tr(4);
  __xlx_offset_byte_param_X2_1 = 0*8;
  if (__xlx_apatb_param_X2_1) {
tr.import<8>((char*)__xlx_apatb_param_X2_1, 4, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X2_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4, &tcl_file.X2_1_depth);
#else
// print X2_1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X2_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2_1 = 0*8;
  if (__xlx_apatb_param_X2_1) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_X2_1)[j];
aesl_fh.write(AUTOTB_TVOUT_X2_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4, &tcl_file.X2_1_depth);
aesl_fh.write(AUTOTB_TVOUT_X2_1, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_D_0, 'b');
transaction<64> tr(4);
  __xlx_offset_byte_param_D_0 = 0*8;
  if (__xlx_apatb_param_D_0) {
tr.import<8>((char*)__xlx_apatb_param_D_0, 4, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_D_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(4, &tcl_file.D_0_depth);
#else
// print D_0 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_D_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_0 = 0*8;
  if (__xlx_apatb_param_D_0) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_0)[j];
aesl_fh.write(AUTOTB_TVOUT_D_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4, &tcl_file.D_0_depth);
aesl_fh.write(AUTOTB_TVOUT_D_0, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_D_1, 'b');
transaction<64> tr(4);
  __xlx_offset_byte_param_D_1 = 0*8;
  if (__xlx_apatb_param_D_1) {
tr.import<8>((char*)__xlx_apatb_param_D_1, 4, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_D_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(4, &tcl_file.D_1_depth);
#else
// print D_1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_D_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D_1 = 0*8;
  if (__xlx_apatb_param_D_1) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_D_1)[j];
aesl_fh.write(AUTOTB_TVOUT_D_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(4, &tcl_file.D_1_depth);
aesl_fh.write(AUTOTB_TVOUT_D_1, end_str());
}

#endif
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
