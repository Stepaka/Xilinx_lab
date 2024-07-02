set SynModuleInfo {
  {SRCNAME kp_502_7 MODELNAME kp_502_7 RTLNAME kp_502_7 IS_TOP 1
    SUBMODULES {
      {MODELNAME kp_502_7_mul_64s_64s_64_3_1 RTLNAME kp_502_7_mul_64s_64s_64_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_mul_62s_62s_62_3_1 RTLNAME kp_502_7_mul_62s_62s_62_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_sdiv_65s_65ns_64_69_1 RTLNAME kp_502_7_sdiv_65s_65ns_64_69_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 68 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_flow_control_loop_pipe RTLNAME kp_502_7_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME kp_502_7_flow_control_loop_pipe_U}
    }
  }
}
