# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# ==============================================================
proc sc_sim_check {ret err logfile} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        while {[gets $fl line] >= 0} {
            if {[string first "AESL_mErrNo = " $line] == 0} {
                set mismatch_num [string range $line [string length "AESL_mErrNo = "] end]
                if {$mismatch_num != 0} {
                    ::AP::printMsg ERR COSIM 403 COSIM_403_986 ${mismatch_num}
                    break
                }
            }
        }
    }
    if {$ret || $err != ""} {
        if { [lindex $::errorCode 0] eq "CHILDSTATUS"} {
            set status [lindex $::errorCode 2]
            if {$status != ""} {
                ::AP::printMsg ERR COSIM 404 COSIM_404_987 $status
            } else {
                ::AP::printMsg ERR COSIM 405 COSIM_405_988
            }
        } else {
            ::AP::printMsg ERR COSIM 405 COSIM_405_989
        }
    }
    if {[file exists $logfile]} {
        set cmdret [catch {eval exec "grep \"Error:\" $logfile"} err]
        file delete -force $logfile
        if {$cmdret == 0} {
            ::AP::printMsg ERR COSIM 405 COSIM_405_990
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc rtl_sim_check {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        set unmatch_num 0
        while {[gets $fl line] >= 0} {
            if {[string first "unmatched" $line] != -1} {
                set unmatch_num [expr $unmatch_num + 1]
            }
        }
        if {$unmatch_num != 0} {
            ::AP::printMsg ERR COSIM 406 COSIM_406_991 ${unmatch_num}
        }
    }
    if {[file exists ".aesl_error"]} {
        set errfl [open ".aesl_error" r]
        gets $errfl line
        if {$line != 0} {
            ::AP::printMsg ERR COSIM 407 COSIM_407_992 $line
        }
    }
    if {[file exists ".exit.err"]} {
        ::AP::printMsg ERR COSIM 405 COSIM_405_993
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc check_tvin_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "c.kp_502_7.autotvin_A_0.dat"
         "c.kp_502_7.autotvin_A_1.dat"
         "c.kp_502_7.autotvin_A_2.dat"
         "c.kp_502_7.autotvin_A_3.dat"
         "c.kp_502_7.autotvin_A_4.dat"
         "c.kp_502_7.autotvin_A_5.dat"
         "c.kp_502_7.autotvin_A_6.dat"
         "c.kp_502_7.autotvin_A_7.dat"
         "c.kp_502_7.autotvin_B_0.dat"
         "c.kp_502_7.autotvin_B_1.dat"
         "c.kp_502_7.autotvin_B_2.dat"
         "c.kp_502_7.autotvin_B_3.dat"
         "c.kp_502_7.autotvin_B_4.dat"
         "c.kp_502_7.autotvin_B_5.dat"
         "c.kp_502_7.autotvin_B_6.dat"
         "c.kp_502_7.autotvin_B_7.dat"
         "c.kp_502_7.autotvin_C_0.dat"
         "c.kp_502_7.autotvin_C_1.dat"
         "c.kp_502_7.autotvin_C_2.dat"
         "c.kp_502_7.autotvin_C_3.dat"
         "c.kp_502_7.autotvin_C_4.dat"
         "c.kp_502_7.autotvin_C_5.dat"
         "c.kp_502_7.autotvin_C_6.dat"
         "c.kp_502_7.autotvin_C_7.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            ::AP::printMsg ERR COSIM 320 COSIM_320_994
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}

proc check_tvout_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "rtl.kp_502_7.autotvout_X1_0.dat"
         "rtl.kp_502_7.autotvout_X1_1.dat"
         "rtl.kp_502_7.autotvout_X1_2.dat"
         "rtl.kp_502_7.autotvout_X1_3.dat"
         "rtl.kp_502_7.autotvout_X1_4.dat"
         "rtl.kp_502_7.autotvout_X1_5.dat"
         "rtl.kp_502_7.autotvout_X1_6.dat"
         "rtl.kp_502_7.autotvout_X1_7.dat"
         "rtl.kp_502_7.autotvout_X2_0.dat"
         "rtl.kp_502_7.autotvout_X2_1.dat"
         "rtl.kp_502_7.autotvout_X2_2.dat"
         "rtl.kp_502_7.autotvout_X2_3.dat"
         "rtl.kp_502_7.autotvout_X2_4.dat"
         "rtl.kp_502_7.autotvout_X2_5.dat"
         "rtl.kp_502_7.autotvout_X2_6.dat"
         "rtl.kp_502_7.autotvout_X2_7.dat"
         "rtl.kp_502_7.autotvout_D_0.dat"
         "rtl.kp_502_7.autotvout_D_1.dat"
         "rtl.kp_502_7.autotvout_D_2.dat"
         "rtl.kp_502_7.autotvout_D_3.dat"
         "rtl.kp_502_7.autotvout_D_4.dat"
         "rtl.kp_502_7.autotvout_D_5.dat"
         "rtl.kp_502_7.autotvout_D_6.dat"
         "rtl.kp_502_7.autotvout_D_7.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            ::AP::printMsg ERR COSIM 303 COSIM_303_996
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}