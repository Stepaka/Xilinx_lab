set SynModuleInfo {
  {SRCNAME kp_502_7 MODELNAME kp_502_7 RTLNAME kp_502_7 IS_TOP 1
    SUBMODULES {
      {MODELNAME kp_502_7_dsub_64ns_64ns_64_8_full_dsp_1 RTLNAME kp_502_7_dsub_64ns_64ns_64_8_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_dmul_64ns_64ns_64_8_max_dsp_1 RTLNAME kp_502_7_dmul_64ns_64ns_64_8_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_ddiv_64ns_64ns_64_59_no_dsp_1 RTLNAME kp_502_7_ddiv_64ns_64ns_64_59_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 58 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_dcmp_64ns_64ns_1_2_no_dsp_1 RTLNAME kp_502_7_dcmp_64ns_64ns_1_2_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_dsqrt_64ns_64ns_64_57_no_dsp_1 RTLNAME kp_502_7_dsqrt_64ns_64ns_64_57_no_dsp_1 BINDTYPE op TYPE dsqrt IMPL fabric LATENCY 56 ALLOW_PRAGMA 1}
    }
  }
}
