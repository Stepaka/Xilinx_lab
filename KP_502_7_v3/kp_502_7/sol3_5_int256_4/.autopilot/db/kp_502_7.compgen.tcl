# This script segment is generated automatically by AutoPilot

set name kp_502_7_mul_256s_256s_256_3_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {dsp} LATENCY 2 ALLOW_PRAGMA 1
}


set name kp_502_7_mul_254s_254s_254_3_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {dsp} LATENCY 2 ALLOW_PRAGMA 1
}


set name kp_502_7_sdiv_257s_257ns_256_261_seq_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sdiv} IMPL {auto_seq} LATENCY 260 ALLOW_PRAGMA 1
}


set id 13
set name kp_502_7_sub_256ns_256ns_256_2_1
set corename simcore_sub
set op sub
set stage_num 2
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 256
set in0_signed 0
set in1_width 256
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 256
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sub} IMPL {fabric} LATENCY 1 ALLOW_PRAGMA 1
}


set op sub
set corename Adder
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipeaddsub] == "::AESL_LIB_VIRTEX::xil_gen_pipeaddsub"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipeaddsub { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipeaddsub, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name A_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_0 \
    op interface \
    ports { A_0 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name A_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_1 \
    op interface \
    ports { A_1 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name A_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_2 \
    op interface \
    ports { A_2 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name A_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_3 \
    op interface \
    ports { A_3 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name B_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_0 \
    op interface \
    ports { B_0 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name B_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_1 \
    op interface \
    ports { B_1 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name B_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_2 \
    op interface \
    ports { B_2 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name B_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_3 \
    op interface \
    ports { B_3 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name C_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_C_0 \
    op interface \
    ports { C_0 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name C_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_C_1 \
    op interface \
    ports { C_1 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name C_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_C_2 \
    op interface \
    ports { C_2 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name C_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_C_3 \
    op interface \
    ports { C_3 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name X1_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X1_0 \
    op interface \
    ports { X1_0 { O 256 vector } X1_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name X1_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X1_1 \
    op interface \
    ports { X1_1 { O 256 vector } X1_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name X1_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X1_2 \
    op interface \
    ports { X1_2 { O 256 vector } X1_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name X1_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X1_3 \
    op interface \
    ports { X1_3 { O 256 vector } X1_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name X2_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X2_0 \
    op interface \
    ports { X2_0 { O 256 vector } X2_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name X2_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X2_1 \
    op interface \
    ports { X2_1 { O 256 vector } X2_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name X2_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X2_2 \
    op interface \
    ports { X2_2 { O 256 vector } X2_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name X2_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X2_3 \
    op interface \
    ports { X2_3 { O 256 vector } X2_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name D_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_D_0 \
    op interface \
    ports { D_0 { O 256 vector } D_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name D_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_D_1 \
    op interface \
    ports { D_1 { O 256 vector } D_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name D_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_D_2 \
    op interface \
    ports { D_2 { O 256 vector } D_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name D_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_D_3 \
    op interface \
    ports { D_3 { O 256 vector } D_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


