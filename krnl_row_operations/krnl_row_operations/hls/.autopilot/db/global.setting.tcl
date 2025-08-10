
set TopModule "compute_row_operations"
set ClockPeriod 10
set ClockList ap_clk
set AxiliteClockList {}
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 1
set ResetVariableFlag 0
set ResetRegisterNum 3
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix compute_row_operations_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xczu7ev:-ffvc1156:-2-e
set SourceFiles {sc {} c ../../../compute_row_operations.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile {}
set TBFiles {verilog {/home/hugo/Road-To-TFG/HLS_Programming_FPGA/VitisWorkspace/input_row_ops.txt /home/hugo/Road-To-TFG/HLS_Programming_FPGA/VitisWorkspace/compute_row_operations_tb.cpp} bc {/home/hugo/Road-To-TFG/HLS_Programming_FPGA/VitisWorkspace/input_row_ops.txt /home/hugo/Road-To-TFG/HLS_Programming_FPGA/VitisWorkspace/compute_row_operations_tb.cpp} sc {/home/hugo/Road-To-TFG/HLS_Programming_FPGA/VitisWorkspace/input_row_ops.txt /home/hugo/Road-To-TFG/HLS_Programming_FPGA/VitisWorkspace/compute_row_operations_tb.cpp} vhdl {/home/hugo/Road-To-TFG/HLS_Programming_FPGA/VitisWorkspace/input_row_ops.txt /home/hugo/Road-To-TFG/HLS_Programming_FPGA/VitisWorkspace/compute_row_operations_tb.cpp} c {} cas {/home/hugo/Road-To-TFG/HLS_Programming_FPGA/VitisWorkspace/input_row_ops.txt /home/hugo/Road-To-TFG/HLS_Programming_FPGA/VitisWorkspace/compute_row_operations_tb.cpp}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile {}
set ApsFile hls.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynquplus/zynquplus}}}
set HPFPO 0
