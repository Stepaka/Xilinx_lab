set SynModuleInfo {
  {SRCNAME lab6_z1 MODELNAME lab6_z1 RTLNAME lab6_z1 IS_TOP 1
    SUBMODULES {
      {MODELNAME lab6_z1_mul_mul_16s_16s_16_4_1 RTLNAME lab6_z1_mul_mul_16s_16s_16_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME lab6_z1_flow_control_loop_pipe RTLNAME lab6_z1_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME lab6_z1_flow_control_loop_pipe_U}
    }
  }
}
