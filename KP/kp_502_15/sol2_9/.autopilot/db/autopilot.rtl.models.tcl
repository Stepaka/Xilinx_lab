set SynModuleInfo {
  {SRCNAME kp_502_15 MODELNAME kp_502_15 RTLNAME kp_502_15 IS_TOP 1
    SUBMODULES {
      {MODELNAME kp_502_15_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME kp_502_15_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_15_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME kp_502_15_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_15_flow_control_loop_pipe RTLNAME kp_502_15_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME kp_502_15_flow_control_loop_pipe_U}
    }
  }
}
