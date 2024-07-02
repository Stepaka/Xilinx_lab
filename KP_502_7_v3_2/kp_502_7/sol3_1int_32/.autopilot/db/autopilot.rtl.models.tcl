set SynModuleInfo {
  {SRCNAME __hls_fptosi_double_i32 MODELNAME p_hls_fptosi_double_i32 RTLNAME kp_502_7_p_hls_fptosi_double_i32}
  {SRCNAME kp_502_7 MODELNAME kp_502_7 RTLNAME kp_502_7 IS_TOP 1
    SUBMODULES {
      {MODELNAME kp_502_7_sitodp_32ns_64_7_no_dsp_1 RTLNAME kp_502_7_sitodp_32ns_64_7_no_dsp_1 BINDTYPE op TYPE sitodp IMPL auto LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_dsqrt_64ns_64ns_64_57_no_dsp_1 RTLNAME kp_502_7_dsqrt_64ns_64ns_64_57_no_dsp_1 BINDTYPE op TYPE dsqrt IMPL fabric LATENCY 56 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_mul_32s_32s_32_3_1 RTLNAME kp_502_7_mul_32s_32s_32_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_sdiv_32ns_32ns_32_36_1 RTLNAME kp_502_7_sdiv_32ns_32ns_32_36_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_flow_control_loop_pipe RTLNAME kp_502_7_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME kp_502_7_flow_control_loop_pipe_U}
    }
  }
}
