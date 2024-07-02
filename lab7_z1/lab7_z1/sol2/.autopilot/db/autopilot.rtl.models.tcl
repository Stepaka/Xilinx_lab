set SynModuleInfo {
  {SRCNAME lab7_z1 MODELNAME lab7_z1 RTLNAME lab7_z1 IS_TOP 1
    SUBMODULES {
      {MODELNAME lab7_z1_mul_32s_32s_32_2_1 RTLNAME lab7_z1_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME lab7_z1_flow_control_loop_pipe RTLNAME lab7_z1_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME lab7_z1_flow_control_loop_pipe_U}
    }
  }
}
