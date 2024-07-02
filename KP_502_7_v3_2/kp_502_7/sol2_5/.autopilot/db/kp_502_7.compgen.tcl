# This script segment is generated automatically by AutoPilot

set name kp_502_7_mul_32s_32s_32_3_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set name kp_502_7_sdiv_32ns_32ns_32_36_seq_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sdiv} IMPL {auto_seq} LATENCY 35 ALLOW_PRAGMA 1
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
    id 44 \
    name A_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_0 \
    op interface \
    ports { A_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name A_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_1 \
    op interface \
    ports { A_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name A_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_2 \
    op interface \
    ports { A_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name A_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_3 \
    op interface \
    ports { A_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name A_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_4 \
    op interface \
    ports { A_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name A_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_5 \
    op interface \
    ports { A_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name A_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_6 \
    op interface \
    ports { A_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name A_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_7 \
    op interface \
    ports { A_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name B_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_0 \
    op interface \
    ports { B_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name B_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_1 \
    op interface \
    ports { B_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name B_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_2 \
    op interface \
    ports { B_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name B_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_3 \
    op interface \
    ports { B_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name B_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_4 \
    op interface \
    ports { B_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name B_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_5 \
    op interface \
    ports { B_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name B_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_6 \
    op interface \
    ports { B_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name B_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_7 \
    op interface \
    ports { B_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name C_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_C_0 \
    op interface \
    ports { C_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name C_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_C_1 \
    op interface \
    ports { C_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name C_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_C_2 \
    op interface \
    ports { C_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name C_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_C_3 \
    op interface \
    ports { C_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name C_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_C_4 \
    op interface \
    ports { C_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name C_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_C_5 \
    op interface \
    ports { C_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name C_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_C_6 \
    op interface \
    ports { C_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name C_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_C_7 \
    op interface \
    ports { C_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name X1_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X1_0 \
    op interface \
    ports { X1_0 { O 32 vector } X1_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name X1_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X1_1 \
    op interface \
    ports { X1_1 { O 32 vector } X1_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name X1_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X1_2 \
    op interface \
    ports { X1_2 { O 32 vector } X1_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name X1_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X1_3 \
    op interface \
    ports { X1_3 { O 32 vector } X1_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name X1_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X1_4 \
    op interface \
    ports { X1_4 { O 32 vector } X1_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name X1_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X1_5 \
    op interface \
    ports { X1_5 { O 32 vector } X1_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name X1_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X1_6 \
    op interface \
    ports { X1_6 { O 32 vector } X1_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name X1_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X1_7 \
    op interface \
    ports { X1_7 { O 32 vector } X1_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name X2_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X2_0 \
    op interface \
    ports { X2_0 { O 32 vector } X2_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name X2_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X2_1 \
    op interface \
    ports { X2_1 { O 32 vector } X2_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name X2_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X2_2 \
    op interface \
    ports { X2_2 { O 32 vector } X2_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name X2_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X2_3 \
    op interface \
    ports { X2_3 { O 32 vector } X2_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name X2_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X2_4 \
    op interface \
    ports { X2_4 { O 32 vector } X2_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name X2_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X2_5 \
    op interface \
    ports { X2_5 { O 32 vector } X2_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name X2_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X2_6 \
    op interface \
    ports { X2_6 { O 32 vector } X2_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name X2_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_X2_7 \
    op interface \
    ports { X2_7 { O 32 vector } X2_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name D_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_D_0 \
    op interface \
    ports { D_0 { O 32 vector } D_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name D_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_D_1 \
    op interface \
    ports { D_1 { O 32 vector } D_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name D_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_D_2 \
    op interface \
    ports { D_2 { O 32 vector } D_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name D_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_D_3 \
    op interface \
    ports { D_3 { O 32 vector } D_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name D_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_D_4 \
    op interface \
    ports { D_4 { O 32 vector } D_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name D_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_D_5 \
    op interface \
    ports { D_5 { O 32 vector } D_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name D_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_D_6 \
    op interface \
    ports { D_6 { O 32 vector } D_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name D_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_D_7 \
    op interface \
    ports { D_7 { O 32 vector } D_7_ap_vld { O 1 bit } } \
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


