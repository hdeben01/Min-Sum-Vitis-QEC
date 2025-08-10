# This script segment is generated automatically by AutoPilot

set name compute_row_operations_fsub_32ns_32ns_32_4_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fsub} IMPL {fulldsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name compute_row_operations_fmul_32ns_32ns_32_3_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 2 ALLOW_PRAGMA 1
}


set name compute_row_operations_uitofp_32ns_32_4_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {uitofp} IMPL {auto} LATENCY 3 ALLOW_PRAGMA 1
}


set name compute_row_operations_fpext_32ns_64_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fpext} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name compute_row_operations_fcmp_32ns_32ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler compute_row_operations_sparsemux_7_2_1_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {onehotencoding_realdef}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler compute_row_operations_sparsemux_7_2_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {onehotencoding_realdef}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler compute_row_operations_sparsemux_21_9_1_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {onehotencoding_realdef}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler compute_row_operations_sparsemux_21_9_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {onehotencoding_realdef}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler compute_row_operations_sparsemux_21_9_5_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {onehotencoding_realdef}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 103 \
    name L_cache_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename L_cache_1 \
    op interface \
    ports { L_cache_1_address0 { O 2 vector } L_cache_1_ce0 { O 1 bit } L_cache_1_we0 { O 1 bit } L_cache_1_d0 { O 32 vector } L_cache_1_address1 { O 2 vector } L_cache_1_ce1 { O 1 bit } L_cache_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'L_cache_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 104 \
    name L_cache_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename L_cache_2 \
    op interface \
    ports { L_cache_2_address0 { O 2 vector } L_cache_2_ce0 { O 1 bit } L_cache_2_we0 { O 1 bit } L_cache_2_d0 { O 32 vector } L_cache_2_address1 { O 2 vector } L_cache_2_ce1 { O 1 bit } L_cache_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'L_cache_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 105 \
    name L_cache_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename L_cache_3 \
    op interface \
    ports { L_cache_3_address0 { O 2 vector } L_cache_3_ce0 { O 1 bit } L_cache_3_we0 { O 1 bit } L_cache_3_d0 { O 32 vector } L_cache_3_address1 { O 2 vector } L_cache_3_ce1 { O 1 bit } L_cache_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'L_cache_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 106 \
    name L_cache_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename L_cache_4 \
    op interface \
    ports { L_cache_4_address0 { O 2 vector } L_cache_4_ce0 { O 1 bit } L_cache_4_we0 { O 1 bit } L_cache_4_d0 { O 32 vector } L_cache_4_address1 { O 2 vector } L_cache_4_ce1 { O 1 bit } L_cache_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'L_cache_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 107 \
    name L_cache_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename L_cache_5 \
    op interface \
    ports { L_cache_5_address0 { O 2 vector } L_cache_5_ce0 { O 1 bit } L_cache_5_we0 { O 1 bit } L_cache_5_d0 { O 32 vector } L_cache_5_address1 { O 2 vector } L_cache_5_ce1 { O 1 bit } L_cache_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'L_cache_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 108 \
    name L_cache_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename L_cache_6 \
    op interface \
    ports { L_cache_6_address0 { O 2 vector } L_cache_6_ce0 { O 1 bit } L_cache_6_we0 { O 1 bit } L_cache_6_d0 { O 32 vector } L_cache_6_q0 { I 32 vector } L_cache_6_address1 { O 2 vector } L_cache_6_ce1 { O 1 bit } L_cache_6_we1 { O 1 bit } L_cache_6_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'L_cache_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 109 \
    name L_cache_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename L_cache_7 \
    op interface \
    ports { L_cache_7_address0 { O 2 vector } L_cache_7_ce0 { O 1 bit } L_cache_7_we0 { O 1 bit } L_cache_7_d0 { O 32 vector } L_cache_7_q0 { I 32 vector } L_cache_7_address1 { O 2 vector } L_cache_7_ce1 { O 1 bit } L_cache_7_we1 { O 1 bit } L_cache_7_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'L_cache_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 110 \
    name L_cache_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename L_cache_8 \
    op interface \
    ports { L_cache_8_address0 { O 2 vector } L_cache_8_ce0 { O 1 bit } L_cache_8_we0 { O 1 bit } L_cache_8_d0 { O 32 vector } L_cache_8_q0 { I 32 vector } L_cache_8_address1 { O 2 vector } L_cache_8_ce1 { O 1 bit } L_cache_8_we1 { O 1 bit } L_cache_8_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'L_cache_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 111 \
    name L_cache_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename L_cache_9 \
    op interface \
    ports { L_cache_9_address0 { O 2 vector } L_cache_9_ce0 { O 1 bit } L_cache_9_we0 { O 1 bit } L_cache_9_d0 { O 32 vector } L_cache_9_q0 { I 32 vector } L_cache_9_address1 { O 2 vector } L_cache_9_ce1 { O 1 bit } L_cache_9_we1 { O 1 bit } L_cache_9_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'L_cache_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 112 \
    name L_cache \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename L_cache \
    op interface \
    ports { L_cache_address0 { O 2 vector } L_cache_ce0 { O 1 bit } L_cache_we0 { O 1 bit } L_cache_d0 { O 32 vector } L_cache_address1 { O 2 vector } L_cache_ce1 { O 1 bit } L_cache_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'L_cache'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 114 \
    name non_zero_cache \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename non_zero_cache \
    op interface \
    ports { non_zero_cache_address0 { O 2 vector } non_zero_cache_ce0 { O 1 bit } non_zero_cache_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'non_zero_cache'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 115 \
    name non_zero_cache_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename non_zero_cache_1 \
    op interface \
    ports { non_zero_cache_1_address0 { O 2 vector } non_zero_cache_1_ce0 { O 1 bit } non_zero_cache_1_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'non_zero_cache_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 116 \
    name non_zero_cache_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename non_zero_cache_2 \
    op interface \
    ports { non_zero_cache_2_address0 { O 2 vector } non_zero_cache_2_ce0 { O 1 bit } non_zero_cache_2_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'non_zero_cache_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 117 \
    name non_zero_cache_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename non_zero_cache_3 \
    op interface \
    ports { non_zero_cache_3_address0 { O 2 vector } non_zero_cache_3_ce0 { O 1 bit } non_zero_cache_3_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'non_zero_cache_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 118 \
    name non_zero_cache_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename non_zero_cache_4 \
    op interface \
    ports { non_zero_cache_4_address0 { O 2 vector } non_zero_cache_4_ce0 { O 1 bit } non_zero_cache_4_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'non_zero_cache_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 119 \
    name non_zero_cache_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename non_zero_cache_5 \
    op interface \
    ports { non_zero_cache_5_address0 { O 2 vector } non_zero_cache_5_ce0 { O 1 bit } non_zero_cache_5_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'non_zero_cache_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 120 \
    name non_zero_cache_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename non_zero_cache_6 \
    op interface \
    ports { non_zero_cache_6_address0 { O 2 vector } non_zero_cache_6_ce0 { O 1 bit } non_zero_cache_6_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'non_zero_cache_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 121 \
    name non_zero_cache_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename non_zero_cache_7 \
    op interface \
    ports { non_zero_cache_7_address0 { O 2 vector } non_zero_cache_7_ce0 { O 1 bit } non_zero_cache_7_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'non_zero_cache_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 122 \
    name non_zero_cache_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename non_zero_cache_8 \
    op interface \
    ports { non_zero_cache_8_address0 { O 2 vector } non_zero_cache_8_ce0 { O 1 bit } non_zero_cache_8_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'non_zero_cache_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 123 \
    name non_zero_cache_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename non_zero_cache_9 \
    op interface \
    ports { non_zero_cache_9_address0 { O 2 vector } non_zero_cache_9_ce0 { O 1 bit } non_zero_cache_9_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'non_zero_cache_9'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name size_vnode \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size_vnode \
    op interface \
    ports { size_vnode { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name syndrome_cache_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_syndrome_cache_reload \
    op interface \
    ports { syndrome_cache_reload { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name syndrome_cache_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_syndrome_cache_1_reload \
    op interface \
    ports { syndrome_cache_1_reload { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name syndrome_cache_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_syndrome_cache_2_reload \
    op interface \
    ports { syndrome_cache_2_reload { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name size_checks \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size_checks \
    op interface \
    ports { size_checks { I 32 vector } } \
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


# flow_control definition:
set InstName compute_row_operations_flow_control_loop_pipe_sequential_init_U
set CompName compute_row_operations_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix compute_row_operations_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


