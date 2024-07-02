set SynModuleInfo {
  {SRCNAME kp_502_7 MODELNAME kp_502_7 RTLNAME kp_502_7 IS_TOP 1
    SUBMODULES {
      {MODELNAME kp_502_7_fsub_32ns_32ns_32_4_full_dsp_1 RTLNAME kp_502_7_fsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME kp_502_7_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_fdiv_32ns_32ns_32_9_no_dsp_1 RTLNAME kp_502_7_fdiv_32ns_32ns_32_9_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME kp_502_7_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_fsqrt_32ns_32ns_32_8_no_dsp_1 RTLNAME kp_502_7_fsqrt_32ns_32ns_32_8_no_dsp_1 BINDTYPE op TYPE fsqrt IMPL fabric LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_flow_control_loop_pipe RTLNAME kp_502_7_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME kp_502_7_flow_control_loop_pipe_U}
    }
  }
}
