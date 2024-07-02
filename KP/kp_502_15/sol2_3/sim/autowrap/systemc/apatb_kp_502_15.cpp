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
#define AUTOTB_TVIN_r_0 "../tv/cdatafile/c.kp_502_15.autotvin_r_0.dat"
#define AUTOTB_TVOUT_r_0 "../tv/cdatafile/c.kp_502_15.autotvout_r_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_1 "../tv/cdatafile/c.kp_502_15.autotvin_r_1.dat"
#define AUTOTB_TVOUT_r_1 "../tv/cdatafile/c.kp_502_15.autotvout_r_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_2 "../tv/cdatafile/c.kp_502_15.autotvin_r_2.dat"
#define AUTOTB_TVOUT_r_2 "../tv/cdatafile/c.kp_502_15.autotvout_r_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_3 "../tv/cdatafile/c.kp_502_15.autotvin_r_3.dat"
#define AUTOTB_TVOUT_r_3 "../tv/cdatafile/c.kp_502_15.autotvout_r_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_0 "../tv/cdatafile/c.kp_502_15.autotvin_a_0.dat"
#define AUTOTB_TVOUT_a_0 "../tv/cdatafile/c.kp_502_15.autotvout_a_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_1 "../tv/cdatafile/c.kp_502_15.autotvin_a_1.dat"
#define AUTOTB_TVOUT_a_1 "../tv/cdatafile/c.kp_502_15.autotvout_a_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_2 "../tv/cdatafile/c.kp_502_15.autotvin_a_2.dat"
#define AUTOTB_TVOUT_a_2 "../tv/cdatafile/c.kp_502_15.autotvout_a_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_3 "../tv/cdatafile/c.kp_502_15.autotvin_a_3.dat"
#define AUTOTB_TVOUT_a_3 "../tv/cdatafile/c.kp_502_15.autotvout_a_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_0 "../tv/cdatafile/c.kp_502_15.autotvin_b_0.dat"
#define AUTOTB_TVOUT_b_0 "../tv/cdatafile/c.kp_502_15.autotvout_b_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_1 "../tv/cdatafile/c.kp_502_15.autotvin_b_1.dat"
#define AUTOTB_TVOUT_b_1 "../tv/cdatafile/c.kp_502_15.autotvout_b_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_2 "../tv/cdatafile/c.kp_502_15.autotvin_b_2.dat"
#define AUTOTB_TVOUT_b_2 "../tv/cdatafile/c.kp_502_15.autotvout_b_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_3 "../tv/cdatafile/c.kp_502_15.autotvin_b_3.dat"
#define AUTOTB_TVOUT_b_3 "../tv/cdatafile/c.kp_502_15.autotvout_b_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_0 "../tv/cdatafile/c.kp_502_15.autotvin_c_0.dat"
#define AUTOTB_TVOUT_c_0 "../tv/cdatafile/c.kp_502_15.autotvout_c_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_1 "../tv/cdatafile/c.kp_502_15.autotvin_c_1.dat"
#define AUTOTB_TVOUT_c_1 "../tv/cdatafile/c.kp_502_15.autotvout_c_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_2 "../tv/cdatafile/c.kp_502_15.autotvin_c_2.dat"
#define AUTOTB_TVOUT_c_2 "../tv/cdatafile/c.kp_502_15.autotvout_c_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_3 "../tv/cdatafile/c.kp_502_15.autotvin_c_3.dat"
#define AUTOTB_TVOUT_c_3 "../tv/cdatafile/c.kp_502_15.autotvout_c_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_0 "../tv/cdatafile/c.kp_502_15.autotvin_x_0.dat"
#define AUTOTB_TVOUT_x_0 "../tv/cdatafile/c.kp_502_15.autotvout_x_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_1 "../tv/cdatafile/c.kp_502_15.autotvin_x_1.dat"
#define AUTOTB_TVOUT_x_1 "../tv/cdatafile/c.kp_502_15.autotvout_x_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_2 "../tv/cdatafile/c.kp_502_15.autotvin_x_2.dat"
#define AUTOTB_TVOUT_x_2 "../tv/cdatafile/c.kp_502_15.autotvout_x_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_3 "../tv/cdatafile/c.kp_502_15.autotvin_x_3.dat"
#define AUTOTB_TVOUT_x_3 "../tv/cdatafile/c.kp_502_15.autotvout_x_3.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_r_0 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_1 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_2 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_3 "../tv/rtldatafile/rtl.kp_502_15.autotvout_r_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_0 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_1 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_2 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_3 "../tv/rtldatafile/rtl.kp_502_15.autotvout_a_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_0 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_1 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_2 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_3 "../tv/rtldatafile/rtl.kp_502_15.autotvout_b_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_0 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_1 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_2 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_3 "../tv/rtldatafile/rtl.kp_502_15.autotvout_c_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_0 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_1 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_2 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_3 "../tv/rtldatafile/rtl.kp_502_15.autotvout_x_3.dat"


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
  r_0_depth = 0;
  r_1_depth = 0;
  r_2_depth = 0;
  r_3_depth = 0;
  a_0_depth = 0;
  a_1_depth = 0;
  a_2_depth = 0;
  a_3_depth = 0;
  b_0_depth = 0;
  b_1_depth = 0;
  b_2_depth = 0;
  b_3_depth = 0;
  c_0_depth = 0;
  c_1_depth = 0;
  c_2_depth = 0;
  c_3_depth = 0;
  x_0_depth = 0;
  x_1_depth = 0;
  x_2_depth = 0;
  x_3_depth = 0;
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
  total_list << "{r_0 " << r_0_depth << "}\n";
  total_list << "{r_1 " << r_1_depth << "}\n";
  total_list << "{r_2 " << r_2_depth << "}\n";
  total_list << "{r_3 " << r_3_depth << "}\n";
  total_list << "{a_0 " << a_0_depth << "}\n";
  total_list << "{a_1 " << a_1_depth << "}\n";
  total_list << "{a_2 " << a_2_depth << "}\n";
  total_list << "{a_3 " << a_3_depth << "}\n";
  total_list << "{b_0 " << b_0_depth << "}\n";
  total_list << "{b_1 " << b_1_depth << "}\n";
  total_list << "{b_2 " << b_2_depth << "}\n";
  total_list << "{b_3 " << b_3_depth << "}\n";
  total_list << "{c_0 " << c_0_depth << "}\n";
  total_list << "{c_1 " << c_1_depth << "}\n";
  total_list << "{c_2 " << c_2_depth << "}\n";
  total_list << "{c_3 " << c_3_depth << "}\n";
  total_list << "{x_0 " << x_0_depth << "}\n";
  total_list << "{x_1 " << x_1_depth << "}\n";
  total_list << "{x_2 " << x_2_depth << "}\n";
  total_list << "{x_3 " << x_3_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int r_0_depth;
    int r_1_depth;
    int r_2_depth;
    int r_3_depth;
    int a_0_depth;
    int a_1_depth;
    int a_2_depth;
    int a_3_depth;
    int b_0_depth;
    int b_1_depth;
    int b_2_depth;
    int b_3_depth;
    int c_0_depth;
    int c_1_depth;
    int c_2_depth;
    int c_3_depth;
    int x_0_depth;
    int x_1_depth;
    int x_2_depth;
    int x_3_depth;
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
extern "C" void kp_502_15_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_kp_502_15_hw(volatile void * __xlx_apatb_param_r_0, volatile void * __xlx_apatb_param_r_1, volatile void * __xlx_apatb_param_r_2, volatile void * __xlx_apatb_param_r_3, volatile void * __xlx_apatb_param_a_0, volatile void * __xlx_apatb_param_a_1, volatile void * __xlx_apatb_param_a_2, volatile void * __xlx_apatb_param_a_3, volatile void * __xlx_apatb_param_b_0, volatile void * __xlx_apatb_param_b_1, volatile void * __xlx_apatb_param_b_2, volatile void * __xlx_apatb_param_b_3, volatile void * __xlx_apatb_param_c_0, volatile void * __xlx_apatb_param_c_1, volatile void * __xlx_apatb_param_c_2, volatile void * __xlx_apatb_param_c_3, volatile void * __xlx_apatb_param_x_0, volatile void * __xlx_apatb_param_x_1, volatile void * __xlx_apatb_param_x_2, volatile void * __xlx_apatb_param_x_3) {
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
transaction<32> tr(2);
aesl_fh.read(AUTOTB_TVOUT_PC_r_0, tr.p, tr.tbytes);
tr.reorder();
tr.send<4>((char*)__xlx_apatb_param_r_0, 2);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_0);
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
          std::vector<sc_bv<32> > r_0_pc_buffer(2);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_0_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 2; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_0)[j*4+0] = r_0_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_0)[j*4+1] = r_0_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_0)[j*4+2] = r_0_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_0)[j*4+3] = r_0_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(2);
aesl_fh.read(AUTOTB_TVOUT_PC_r_1, tr.p, tr.tbytes);
tr.reorder();
tr.send<4>((char*)__xlx_apatb_param_r_1, 2);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_1);
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
          std::vector<sc_bv<32> > r_1_pc_buffer(2);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 2; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_1)[j*4+0] = r_1_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_1)[j*4+1] = r_1_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_1)[j*4+2] = r_1_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_1)[j*4+3] = r_1_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(2);
aesl_fh.read(AUTOTB_TVOUT_PC_r_2, tr.p, tr.tbytes);
tr.reorder();
tr.send<4>((char*)__xlx_apatb_param_r_2, 2);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_2);
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
          std::vector<sc_bv<32> > r_2_pc_buffer(2);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_2" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 2; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_2)[j*4+0] = r_2_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_2)[j*4+1] = r_2_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_2)[j*4+2] = r_2_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_2)[j*4+3] = r_2_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(2);
aesl_fh.read(AUTOTB_TVOUT_PC_r_3, tr.p, tr.tbytes);
tr.reorder();
tr.send<4>((char*)__xlx_apatb_param_r_3, 2);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_3);
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
          std::vector<sc_bv<32> > r_3_pc_buffer(2);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "r_3");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_3_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "r_3" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 2; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_r_3)[j*4+0] = r_3_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_r_3)[j*4+1] = r_3_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_r_3)[j*4+2] = r_3_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_r_3)[j*4+3] = r_3_pc_buffer[i].range(31, 24).to_int64();
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
unsigned __xlx_offset_byte_param_r_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_0, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_r_0 = 0*4;
  if (__xlx_apatb_param_r_0) {
tr.import<4>((char*)__xlx_apatb_param_r_0, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.r_0_depth);
#else
// print r_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_0 = 0*4;
  if (__xlx_apatb_param_r_0) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_r_0)[j];
aesl_fh.write(AUTOTB_TVIN_r_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.r_0_depth);
aesl_fh.write(AUTOTB_TVIN_r_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_r_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_1, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_r_1 = 0*4;
  if (__xlx_apatb_param_r_1) {
tr.import<4>((char*)__xlx_apatb_param_r_1, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.r_1_depth);
#else
// print r_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_1 = 0*4;
  if (__xlx_apatb_param_r_1) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_r_1)[j];
aesl_fh.write(AUTOTB_TVIN_r_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.r_1_depth);
aesl_fh.write(AUTOTB_TVIN_r_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_r_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_2, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_r_2 = 0*4;
  if (__xlx_apatb_param_r_2) {
tr.import<4>((char*)__xlx_apatb_param_r_2, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.r_2_depth);
#else
// print r_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_2 = 0*4;
  if (__xlx_apatb_param_r_2) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_r_2)[j];
aesl_fh.write(AUTOTB_TVIN_r_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.r_2_depth);
aesl_fh.write(AUTOTB_TVIN_r_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_r_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_r_3, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_r_3 = 0*4;
  if (__xlx_apatb_param_r_3) {
tr.import<4>((char*)__xlx_apatb_param_r_3, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_r_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.r_3_depth);
#else
// print r_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_r_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_3 = 0*4;
  if (__xlx_apatb_param_r_3) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_r_3)[j];
aesl_fh.write(AUTOTB_TVIN_r_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.r_3_depth);
aesl_fh.write(AUTOTB_TVIN_r_3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_0, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_a_0 = 0*4;
  if (__xlx_apatb_param_a_0) {
tr.import<4>((char*)__xlx_apatb_param_a_0, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.a_0_depth);
#else
// print a_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_0 = 0*4;
  if (__xlx_apatb_param_a_0) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_a_0)[j];
aesl_fh.write(AUTOTB_TVIN_a_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.a_0_depth);
aesl_fh.write(AUTOTB_TVIN_a_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_1, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_a_1 = 0*4;
  if (__xlx_apatb_param_a_1) {
tr.import<4>((char*)__xlx_apatb_param_a_1, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.a_1_depth);
#else
// print a_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_1 = 0*4;
  if (__xlx_apatb_param_a_1) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_a_1)[j];
aesl_fh.write(AUTOTB_TVIN_a_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.a_1_depth);
aesl_fh.write(AUTOTB_TVIN_a_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_2, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_a_2 = 0*4;
  if (__xlx_apatb_param_a_2) {
tr.import<4>((char*)__xlx_apatb_param_a_2, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.a_2_depth);
#else
// print a_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_2 = 0*4;
  if (__xlx_apatb_param_a_2) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_a_2)[j];
aesl_fh.write(AUTOTB_TVIN_a_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.a_2_depth);
aesl_fh.write(AUTOTB_TVIN_a_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_a_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_a_3, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_a_3 = 0*4;
  if (__xlx_apatb_param_a_3) {
tr.import<4>((char*)__xlx_apatb_param_a_3, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_a_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.a_3_depth);
#else
// print a_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_a_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_a_3 = 0*4;
  if (__xlx_apatb_param_a_3) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_a_3)[j];
aesl_fh.write(AUTOTB_TVIN_a_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.a_3_depth);
aesl_fh.write(AUTOTB_TVIN_a_3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_0, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_b_0 = 0*4;
  if (__xlx_apatb_param_b_0) {
tr.import<4>((char*)__xlx_apatb_param_b_0, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.b_0_depth);
#else
// print b_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_0 = 0*4;
  if (__xlx_apatb_param_b_0) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_b_0)[j];
aesl_fh.write(AUTOTB_TVIN_b_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.b_0_depth);
aesl_fh.write(AUTOTB_TVIN_b_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_1, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_b_1 = 0*4;
  if (__xlx_apatb_param_b_1) {
tr.import<4>((char*)__xlx_apatb_param_b_1, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.b_1_depth);
#else
// print b_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_1 = 0*4;
  if (__xlx_apatb_param_b_1) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_b_1)[j];
aesl_fh.write(AUTOTB_TVIN_b_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.b_1_depth);
aesl_fh.write(AUTOTB_TVIN_b_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_2, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_b_2 = 0*4;
  if (__xlx_apatb_param_b_2) {
tr.import<4>((char*)__xlx_apatb_param_b_2, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.b_2_depth);
#else
// print b_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_2 = 0*4;
  if (__xlx_apatb_param_b_2) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_b_2)[j];
aesl_fh.write(AUTOTB_TVIN_b_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.b_2_depth);
aesl_fh.write(AUTOTB_TVIN_b_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_b_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_b_3, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_b_3 = 0*4;
  if (__xlx_apatb_param_b_3) {
tr.import<4>((char*)__xlx_apatb_param_b_3, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_b_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.b_3_depth);
#else
// print b_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_b_3 = 0*4;
  if (__xlx_apatb_param_b_3) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_b_3)[j];
aesl_fh.write(AUTOTB_TVIN_b_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.b_3_depth);
aesl_fh.write(AUTOTB_TVIN_b_3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_0, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_c_0 = 0*4;
  if (__xlx_apatb_param_c_0) {
tr.import<4>((char*)__xlx_apatb_param_c_0, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.c_0_depth);
#else
// print c_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_0 = 0*4;
  if (__xlx_apatb_param_c_0) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c_0)[j];
aesl_fh.write(AUTOTB_TVIN_c_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.c_0_depth);
aesl_fh.write(AUTOTB_TVIN_c_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_1, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_c_1 = 0*4;
  if (__xlx_apatb_param_c_1) {
tr.import<4>((char*)__xlx_apatb_param_c_1, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.c_1_depth);
#else
// print c_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_1 = 0*4;
  if (__xlx_apatb_param_c_1) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c_1)[j];
aesl_fh.write(AUTOTB_TVIN_c_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.c_1_depth);
aesl_fh.write(AUTOTB_TVIN_c_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_2, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_c_2 = 0*4;
  if (__xlx_apatb_param_c_2) {
tr.import<4>((char*)__xlx_apatb_param_c_2, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.c_2_depth);
#else
// print c_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_2 = 0*4;
  if (__xlx_apatb_param_c_2) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c_2)[j];
aesl_fh.write(AUTOTB_TVIN_c_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.c_2_depth);
aesl_fh.write(AUTOTB_TVIN_c_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_c_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_c_3, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_c_3 = 0*4;
  if (__xlx_apatb_param_c_3) {
tr.import<4>((char*)__xlx_apatb_param_c_3, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_c_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.c_3_depth);
#else
// print c_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_c_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_c_3 = 0*4;
  if (__xlx_apatb_param_c_3) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c_3)[j];
aesl_fh.write(AUTOTB_TVIN_c_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.c_3_depth);
aesl_fh.write(AUTOTB_TVIN_c_3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_0, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_x_0 = 0*4;
  if (__xlx_apatb_param_x_0) {
tr.import<4>((char*)__xlx_apatb_param_x_0, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.x_0_depth);
#else
// print x_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_0 = 0*4;
  if (__xlx_apatb_param_x_0) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_x_0)[j];
aesl_fh.write(AUTOTB_TVIN_x_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.x_0_depth);
aesl_fh.write(AUTOTB_TVIN_x_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_1, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_x_1 = 0*4;
  if (__xlx_apatb_param_x_1) {
tr.import<4>((char*)__xlx_apatb_param_x_1, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.x_1_depth);
#else
// print x_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_1 = 0*4;
  if (__xlx_apatb_param_x_1) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_x_1)[j];
aesl_fh.write(AUTOTB_TVIN_x_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.x_1_depth);
aesl_fh.write(AUTOTB_TVIN_x_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_2, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_x_2 = 0*4;
  if (__xlx_apatb_param_x_2) {
tr.import<4>((char*)__xlx_apatb_param_x_2, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.x_2_depth);
#else
// print x_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_2 = 0*4;
  if (__xlx_apatb_param_x_2) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_x_2)[j];
aesl_fh.write(AUTOTB_TVIN_x_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.x_2_depth);
aesl_fh.write(AUTOTB_TVIN_x_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_x_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_x_3, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_x_3 = 0*4;
  if (__xlx_apatb_param_x_3) {
tr.import<4>((char*)__xlx_apatb_param_x_3, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_x_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.x_3_depth);
#else
// print x_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_x_3 = 0*4;
  if (__xlx_apatb_param_x_3) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_x_3)[j];
aesl_fh.write(AUTOTB_TVIN_x_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.x_3_depth);
aesl_fh.write(AUTOTB_TVIN_x_3, end_str());
}

#endif
CodeState = CALL_C_DUT;
kp_502_15_hw_stub_wrapper(__xlx_apatb_param_r_0, __xlx_apatb_param_r_1, __xlx_apatb_param_r_2, __xlx_apatb_param_r_3, __xlx_apatb_param_a_0, __xlx_apatb_param_a_1, __xlx_apatb_param_a_2, __xlx_apatb_param_a_3, __xlx_apatb_param_b_0, __xlx_apatb_param_b_1, __xlx_apatb_param_b_2, __xlx_apatb_param_b_3, __xlx_apatb_param_c_0, __xlx_apatb_param_c_1, __xlx_apatb_param_c_2, __xlx_apatb_param_c_3, __xlx_apatb_param_x_0, __xlx_apatb_param_x_1, __xlx_apatb_param_x_2, __xlx_apatb_param_x_3);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_0, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_r_0 = 0*4;
  if (__xlx_apatb_param_r_0) {
tr.import<4>((char*)__xlx_apatb_param_r_0, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.r_0_depth);
#else
// print r_0 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_0 = 0*4;
  if (__xlx_apatb_param_r_0) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_r_0)[j];
aesl_fh.write(AUTOTB_TVOUT_r_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.r_0_depth);
aesl_fh.write(AUTOTB_TVOUT_r_0, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_1, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_r_1 = 0*4;
  if (__xlx_apatb_param_r_1) {
tr.import<4>((char*)__xlx_apatb_param_r_1, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.r_1_depth);
#else
// print r_1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_1 = 0*4;
  if (__xlx_apatb_param_r_1) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_r_1)[j];
aesl_fh.write(AUTOTB_TVOUT_r_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.r_1_depth);
aesl_fh.write(AUTOTB_TVOUT_r_1, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_2, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_r_2 = 0*4;
  if (__xlx_apatb_param_r_2) {
tr.import<4>((char*)__xlx_apatb_param_r_2, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.r_2_depth);
#else
// print r_2 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_2 = 0*4;
  if (__xlx_apatb_param_r_2) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_r_2)[j];
aesl_fh.write(AUTOTB_TVOUT_r_2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.r_2_depth);
aesl_fh.write(AUTOTB_TVOUT_r_2, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_r_3, 'b');
transaction<32> tr(2);
  __xlx_offset_byte_param_r_3 = 0*4;
  if (__xlx_apatb_param_r_3) {
tr.import<4>((char*)__xlx_apatb_param_r_3, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_r_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.r_3_depth);
#else
// print r_3 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_r_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_r_3 = 0*4;
  if (__xlx_apatb_param_r_3) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_r_3)[j];
aesl_fh.write(AUTOTB_TVOUT_r_3, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.r_3_depth);
aesl_fh.write(AUTOTB_TVOUT_r_3, end_str());
}

#endif
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
