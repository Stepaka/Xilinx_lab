set SynModuleInfo {
  {SRCNAME kp_502_7 MODELNAME kp_502_7 RTLNAME kp_502_7 IS_TOP 1
    SUBMODULES {
      {MODELNAME kp_502_7_dsub_64ns_64ns_64_5_full_dsp_1 RTLNAME kp_502_7_dsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME kp_502_7_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_ddiv_64ns_64ns_64_31_no_dsp_1 RTLNAME kp_502_7_ddiv_64ns_64ns_64_31_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 30 ALLOW_PRAGMA 1}
      {MODELNAME kp_502_7_dsqrt_64ns_64ns_64_30_no_dsp_1 RTLNAME kp_502_7_dsqrt_64ns_64ns_64_30_no_dsp_1 BINDTYPE op TYPE dsqrt IMPL fabric LATENCY 29 ALLOW_PRAGMA 1}
    }
  }
}
