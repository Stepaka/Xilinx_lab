set SynModuleInfo {
  {SRCNAME {sqrt_fixed<32, 32>} MODELNAME sqrt_fixed_32_32_s RTLNAME kp_502_7_sqrt_fixed_32_32_s}
  {SRCNAME kp_502_7 MODELNAME kp_502_7 RTLNAME kp_502_7 IS_TOP 1
    SUBMODULES {
      {MODELNAME kp_502_7_mul_32s_32s_32_3_1 RTLNAME kp_502_7_mul_32s_32s_32_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_sdiv_32ns_32ns_32_36_seq_1 RTLNAME kp_502_7_sdiv_32ns_32ns_32_36_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
    }
  }
}
