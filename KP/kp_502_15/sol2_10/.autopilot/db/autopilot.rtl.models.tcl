set SynModuleInfo {
  {SRCNAME kp_502_15 MODELNAME kp_502_15 RTLNAME kp_502_15 IS_TOP 1
    SUBMODULES {
      {MODELNAME kp_502_15_dadd_64ns_64ns_64_4_full_dsp_1 RTLNAME kp_502_15_dadd_64ns_64ns_64_4_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_15_dmul_64ns_64ns_64_4_max_dsp_1 RTLNAME kp_502_15_dmul_64ns_64ns_64_4_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_15_flow_control_loop_pipe RTLNAME kp_502_15_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME kp_502_15_flow_control_loop_pipe_U}
    }
  }
}
