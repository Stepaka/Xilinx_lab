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
#define AUTOTB_TVIN_A "../tv/cdatafile/c.kp_502_7.autotvin_A.dat"
#define AUTOTB_TVOUT_A "../tv/cdatafile/c.kp_502_7.autotvout_A.dat"
// wrapc file define:
#define AUTOTB_TVIN_B "../tv/cdatafile/c.kp_502_7.autotvin_B.dat"
#define AUTOTB_TVOUT_B "../tv/cdatafile/c.kp_502_7.autotvout_B.dat"
// wrapc file define:
#define AUTOTB_TVIN_C "../tv/cdatafile/c.kp_502_7.autotvin_C.dat"
#define AUTOTB_TVOUT_C "../tv/cdatafile/c.kp_502_7.autotvout_C.dat"
// wrapc file define:
#define AUTOTB_TVIN_X1 "../tv/cdatafile/c.kp_502_7.autotvin_X1.dat"
#define AUTOTB_TVOUT_X1 "../tv/cdatafile/c.kp_502_7.autotvout_X1.dat"
// wrapc file define:
#define AUTOTB_TVIN_X2 "../tv/cdatafile/c.kp_502_7.autotvin_X2.dat"
#define AUTOTB_TVOUT_X2 "../tv/cdatafile/c.kp_502_7.autotvout_X2.dat"
// wrapc file define:
#define AUTOTB_TVIN_D "../tv/cdatafile/c.kp_502_7.autotvin_D.dat"
#define AUTOTB_TVOUT_D "../tv/cdatafile/c.kp_502_7.autotvout_D.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_A "../tv/rtldatafile/rtl.kp_502_7.autotvout_A.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B "../tv/rtldatafile/rtl.kp_502_7.autotvout_B.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C "../tv/rtldatafile/rtl.kp_502_7.autotvout_C.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X1 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_X2 "../tv/rtldatafile/rtl.kp_502_7.autotvout_X2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D "../tv/rtldatafile/rtl.kp_502_7.autotvout_D.dat"


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
  A_depth = 0;
  B_depth = 0;
  C_depth = 0;
  X1_depth = 0;
  X2_depth = 0;
  D_depth = 0;
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
  total_list << "{A " << A_depth << "}\n";
  total_list << "{B " << B_depth << "}\n";
  total_list << "{C " << C_depth << "}\n";
  total_list << "{X1 " << X1_depth << "}\n";
  total_list << "{X2 " << X2_depth << "}\n";
  total_list << "{D " << D_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int A_depth;
    int B_depth;
    int C_depth;
    int X1_depth;
    int X2_depth;
    int D_depth;
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
struct __cosim_s10__ { char data[16]; };
extern "C" void kp_502_7_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_kp_502_7_hw(volatile void * __xlx_apatb_param_A, volatile void * __xlx_apatb_param_B, volatile void * __xlx_apatb_param_C, volatile void * __xlx_apatb_param_X1, volatile void * __xlx_apatb_param_X2, volatile void * __xlx_apatb_param_D) {
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
transaction<128> tr(2);
aesl_fh.read(AUTOTB_TVOUT_PC_X1, tr.p, tr.tbytes);
tr.reorder();
tr.send<16>((char*)__xlx_apatb_param_X1, 2);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X1);
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
          std::vector<sc_bv<128> > X1_pc_buffer(2);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 2; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_X1)[j*2+0] = X1_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_X1)[j*2+1] = X1_pc_buffer[i].range(127,64).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<128> tr(2);
aesl_fh.read(AUTOTB_TVOUT_PC_X2, tr.p, tr.tbytes);
tr.reorder();
tr.send<16>((char*)__xlx_apatb_param_X2, 2);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_X2);
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
          std::vector<sc_bv<128> > X2_pc_buffer(2);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "X2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              X2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "X2" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 2; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_X2)[j*2+0] = X2_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_X2)[j*2+1] = X2_pc_buffer[i].range(127,64).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<128> tr(2);
aesl_fh.read(AUTOTB_TVOUT_PC_D, tr.p, tr.tbytes);
tr.reorder();
tr.send<16>((char*)__xlx_apatb_param_D, 2);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_D);
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
          std::vector<sc_bv<128> > D_pc_buffer(2);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "D");
  
            // push token into output port buffer
            if (AESL_token != "") {
              D_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "D" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 2; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_D)[j*2+0] = D_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_D)[j*2+1] = D_pc_buffer[i].range(127,64).to_int64();
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
unsigned __xlx_offset_byte_param_A = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_A, 'b');
transaction<128> tr(2);
  __xlx_offset_byte_param_A = 0*16;
  if (__xlx_apatb_param_A) {
tr.import<16>((char*)__xlx_apatb_param_A, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_A, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.A_depth);
#else
// print A Transactions
{
aesl_fh.write(AUTOTB_TVIN_A, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_A = 0*16;
  if (__xlx_apatb_param_A) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A)[j*2+1];
aesl_fh.write(AUTOTB_TVIN_A, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.A_depth);
aesl_fh.write(AUTOTB_TVIN_A, end_str());
}

#endif
unsigned __xlx_offset_byte_param_B = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_B, 'b');
transaction<128> tr(2);
  __xlx_offset_byte_param_B = 0*16;
  if (__xlx_apatb_param_B) {
tr.import<16>((char*)__xlx_apatb_param_B, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_B, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.B_depth);
#else
// print B Transactions
{
aesl_fh.write(AUTOTB_TVIN_B, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_B = 0*16;
  if (__xlx_apatb_param_B) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B)[j*2+1];
aesl_fh.write(AUTOTB_TVIN_B, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.B_depth);
aesl_fh.write(AUTOTB_TVIN_B, end_str());
}

#endif
unsigned __xlx_offset_byte_param_C = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_C, 'b');
transaction<128> tr(2);
  __xlx_offset_byte_param_C = 0*16;
  if (__xlx_apatb_param_C) {
tr.import<16>((char*)__xlx_apatb_param_C, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_C, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.C_depth);
#else
// print C Transactions
{
aesl_fh.write(AUTOTB_TVIN_C, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_C = 0*16;
  if (__xlx_apatb_param_C) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_C)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_C)[j*2+1];
aesl_fh.write(AUTOTB_TVIN_C, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.C_depth);
aesl_fh.write(AUTOTB_TVIN_C, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X1, 'b');
transaction<128> tr(2);
  __xlx_offset_byte_param_X1 = 0*16;
  if (__xlx_apatb_param_X1) {
tr.import<16>((char*)__xlx_apatb_param_X1, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X1, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.X1_depth);
#else
// print X1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1 = 0*16;
  if (__xlx_apatb_param_X1) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_X1)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_X1)[j*2+1];
aesl_fh.write(AUTOTB_TVIN_X1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.X1_depth);
aesl_fh.write(AUTOTB_TVIN_X1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_X2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_X2, 'b');
transaction<128> tr(2);
  __xlx_offset_byte_param_X2 = 0*16;
  if (__xlx_apatb_param_X2) {
tr.import<16>((char*)__xlx_apatb_param_X2, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_X2, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.X2_depth);
#else
// print X2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_X2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2 = 0*16;
  if (__xlx_apatb_param_X2) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_X2)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_X2)[j*2+1];
aesl_fh.write(AUTOTB_TVIN_X2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.X2_depth);
aesl_fh.write(AUTOTB_TVIN_X2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_D = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_D, 'b');
transaction<128> tr(2);
  __xlx_offset_byte_param_D = 0*16;
  if (__xlx_apatb_param_D) {
tr.import<16>((char*)__xlx_apatb_param_D, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_D, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.D_depth);
#else
// print D Transactions
{
aesl_fh.write(AUTOTB_TVIN_D, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D = 0*16;
  if (__xlx_apatb_param_D) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_D)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_D)[j*2+1];
aesl_fh.write(AUTOTB_TVIN_D, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.D_depth);
aesl_fh.write(AUTOTB_TVIN_D, end_str());
}

#endif
CodeState = CALL_C_DUT;
kp_502_7_hw_stub_wrapper(__xlx_apatb_param_A, __xlx_apatb_param_B, __xlx_apatb_param_C, __xlx_apatb_param_X1, __xlx_apatb_param_X2, __xlx_apatb_param_D);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X1, 'b');
transaction<128> tr(2);
  __xlx_offset_byte_param_X1 = 0*16;
  if (__xlx_apatb_param_X1) {
tr.import<16>((char*)__xlx_apatb_param_X1, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X1, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.X1_depth);
#else
// print X1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X1 = 0*16;
  if (__xlx_apatb_param_X1) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_X1)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_X1)[j*2+1];
aesl_fh.write(AUTOTB_TVOUT_X1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.X1_depth);
aesl_fh.write(AUTOTB_TVOUT_X1, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_X2, 'b');
transaction<128> tr(2);
  __xlx_offset_byte_param_X2 = 0*16;
  if (__xlx_apatb_param_X2) {
tr.import<16>((char*)__xlx_apatb_param_X2, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_X2, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.X2_depth);
#else
// print X2 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_X2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_X2 = 0*16;
  if (__xlx_apatb_param_X2) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_X2)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_X2)[j*2+1];
aesl_fh.write(AUTOTB_TVOUT_X2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.X2_depth);
aesl_fh.write(AUTOTB_TVOUT_X2, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_D, 'b');
transaction<128> tr(2);
  __xlx_offset_byte_param_D = 0*16;
  if (__xlx_apatb_param_D) {
tr.import<16>((char*)__xlx_apatb_param_D, 2, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_D, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.D_depth);
#else
// print D Transactions
{
aesl_fh.write(AUTOTB_TVOUT_D, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_D = 0*16;
  if (__xlx_apatb_param_D) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_D)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_D)[j*2+1];
aesl_fh.write(AUTOTB_TVOUT_D, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.D_depth);
aesl_fh.write(AUTOTB_TVOUT_D, end_str());
}

#endif
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
