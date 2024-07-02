set SynModuleInfo {
  {SRCNAME kp_502_7 MODELNAME kp_502_7 RTLNAME kp_502_7 IS_TOP 1
    SUBMODULES {
      {MODELNAME dsub_64ns_64ns_64_5_full_dsp_1 RTLNAME kp_502_7_dsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME dadd_64ns_64ns_64_5_full_dsp_1 RTLNAME kp_502_7_dadd_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME ddiv_64ns_64ns_64_31_no_dsp_1 RTLNAME kp_502_7_ddiv_64ns_64ns_64_31_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 30 ALLOW_PRAGMA 1}
      {MODELNAME sitodp_32ns_64_5_no_dsp_1 RTLNAME kp_502_7_sitodp_32ns_64_5_no_dsp_1 BINDTYPE op TYPE sitodp IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME dsqrt_64ns_64ns_64_30_no_dsp_1 RTLNAME kp_502_7_dsqrt_64ns_64ns_64_30_no_dsp_1 BINDTYPE op TYPE dsqrt IMPL fabric LATENCY 29 ALLOW_PRAGMA 1}
      {MODELNAME mul_32s_32s_32_1_1 RTLNAME kp_502_7_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
}
