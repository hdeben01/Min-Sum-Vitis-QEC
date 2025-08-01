set SynModuleInfo {
  {SRCNAME compute_check_to_value_Pipeline_VITIS_LOOP_21_2 MODELNAME compute_check_to_value_Pipeline_VITIS_LOOP_21_2 RTLNAME compute_check_to_value_compute_check_to_value_Pipeline_VITIS_LOOP_21_2
    SUBMODULES {
      {MODELNAME compute_check_to_value_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME compute_check_to_value_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME compute_check_to_value_flow_control_loop_pipe_sequential_init RTLNAME compute_check_to_value_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME compute_check_to_value_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME compute_check_to_value_Pipeline_VITIS_LOOP_36_3 MODELNAME compute_check_to_value_Pipeline_VITIS_LOOP_36_3 RTLNAME compute_check_to_value_compute_check_to_value_Pipeline_VITIS_LOOP_36_3
    SUBMODULES {
      {MODELNAME compute_check_to_value_fmul_32ns_32ns_32_3_max_dsp_1 RTLNAME compute_check_to_value_fmul_32ns_32ns_32_3_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_check_to_value MODELNAME compute_check_to_value RTLNAME compute_check_to_value IS_TOP 1
    SUBMODULES {
      {MODELNAME compute_check_to_value_gmem1_m_axi RTLNAME compute_check_to_value_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME compute_check_to_value_gmem0_m_axi RTLNAME compute_check_to_value_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME compute_check_to_value_control_s_axi RTLNAME compute_check_to_value_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
