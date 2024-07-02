set SynModuleInfo {
  {SRCNAME lab7_z4 MODELNAME lab7_z4 RTLNAME lab7_z4 IS_TOP 1
    SUBMODULES {
      {MODELNAME lab7_z4_mul_256s_256s_256_2_1 RTLNAME lab7_z4_mul_256s_256s_256_2_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME lab7_z4_flow_control_loop_pipe RTLNAME lab7_z4_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME lab7_z4_flow_control_loop_pipe_U}
    }
  }
}
