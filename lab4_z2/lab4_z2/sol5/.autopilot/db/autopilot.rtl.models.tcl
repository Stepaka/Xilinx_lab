set SynModuleInfo {
  {SRCNAME Loop_Loop1_proc MODELNAME Loop_Loop1_proc RTLNAME lab4_z2_Loop_Loop1_proc
    SUBMODULES {
      {MODELNAME mul_32s_32s_32_1_1 RTLNAME lab4_z2_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Loop_Loop2_proc MODELNAME Loop_Loop2_proc RTLNAME lab4_z2_Loop_Loop2_proc
    SUBMODULES {
      {MODELNAME mul_32s_6ns_32_1_1 RTLNAME lab4_z2_mul_32s_6ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Loop_Loop3_proc MODELNAME Loop_Loop3_proc RTLNAME lab4_z2_Loop_Loop3_proc}
  {SRCNAME lab4_z2 MODELNAME lab4_z2 RTLNAME lab4_z2 IS_TOP 1
    SUBMODULES {
      {MODELNAME tempA1_RAM_AUTO_1R1W_memcore RTLNAME lab4_z2_tempA1_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tempA1_RAM_AUTO_1R1W RTLNAME lab4_z2_tempA1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
    }
  }
}
