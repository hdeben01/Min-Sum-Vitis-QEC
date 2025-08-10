set SynModuleInfo {
  {SRCNAME compute_row_operations_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_17_2 MODELNAME compute_row_operations_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_17_2 RTLNAME compute_row_operations_compute_row_operations_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_17_2
    SUBMODULES {
      {MODELNAME compute_row_operations_flow_control_loop_pipe_sequential_init RTLNAME compute_row_operations_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME compute_row_operations_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME compute_row_operations_Pipeline_VITIS_LOOP_23_3_VITIS_LOOP_25_4 MODELNAME compute_row_operations_Pipeline_VITIS_LOOP_23_3_VITIS_LOOP_25_4 RTLNAME compute_row_operations_compute_row_operations_Pipeline_VITIS_LOOP_23_3_VITIS_LOOP_25_4}
  {SRCNAME compute_row_operations_Pipeline_VITIS_LOOP_31_5 MODELNAME compute_row_operations_Pipeline_VITIS_LOOP_31_5 RTLNAME compute_row_operations_compute_row_operations_Pipeline_VITIS_LOOP_31_5}
  {SRCNAME compute_row_operations_Pipeline_VITIS_LOOP_37_6 MODELNAME compute_row_operations_Pipeline_VITIS_LOOP_37_6 RTLNAME compute_row_operations_compute_row_operations_Pipeline_VITIS_LOOP_37_6
    SUBMODULES {
      {MODELNAME compute_row_operations_fsub_32ns_32ns_32_4_full_dsp_1 RTLNAME compute_row_operations_fsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME compute_row_operations_fmul_32ns_32ns_32_3_max_dsp_1 RTLNAME compute_row_operations_fmul_32ns_32ns_32_3_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME compute_row_operations_uitofp_32ns_32_4_no_dsp_1 RTLNAME compute_row_operations_uitofp_32ns_32_4_no_dsp_1 BINDTYPE op TYPE uitofp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME compute_row_operations_fpext_32ns_64_2_no_dsp_1 RTLNAME compute_row_operations_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME compute_row_operations_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME compute_row_operations_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME compute_row_operations_sparsemux_7_2_1_1_1 RTLNAME compute_row_operations_sparsemux_7_2_1_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME compute_row_operations_sparsemux_7_2_32_1_1 RTLNAME compute_row_operations_sparsemux_7_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME compute_row_operations_sparsemux_21_9_1_1_1 RTLNAME compute_row_operations_sparsemux_21_9_1_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME compute_row_operations_sparsemux_21_9_32_1_1 RTLNAME compute_row_operations_sparsemux_21_9_32_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME compute_row_operations_sparsemux_21_9_5_1_1 RTLNAME compute_row_operations_sparsemux_21_9_5_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
    }
  }
  {SRCNAME compute_row_operations_Pipeline_VITIS_LOOP_87_9_VITIS_LOOP_89_10 MODELNAME compute_row_operations_Pipeline_VITIS_LOOP_87_9_VITIS_LOOP_89_10 RTLNAME compute_row_operations_compute_row_operations_Pipeline_VITIS_LOOP_87_9_VITIS_LOOP_89_10
    SUBMODULES {
      {MODELNAME compute_row_operations_sparsemux_21_4_32_1_1 RTLNAME compute_row_operations_sparsemux_21_4_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME compute_row_operations MODELNAME compute_row_operations RTLNAME compute_row_operations IS_TOP 1
    SUBMODULES {
      {MODELNAME compute_row_operations_L_cache_RAM_AUTO_1R1W RTLNAME compute_row_operations_L_cache_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME compute_row_operations_L_cache_6_RAM_AUTO_1R1W RTLNAME compute_row_operations_L_cache_6_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME compute_row_operations_non_zero_cache_RAM_AUTO_1R1W RTLNAME compute_row_operations_non_zero_cache_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME compute_row_operations_gmem0_m_axi RTLNAME compute_row_operations_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME compute_row_operations_gmem1_m_axi RTLNAME compute_row_operations_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME compute_row_operations_gmem2_m_axi RTLNAME compute_row_operations_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME compute_row_operations_control_s_axi RTLNAME compute_row_operations_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
