set moduleName compute_row_operations_Pipeline_VITIS_LOOP_37_6
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 8
set C_modelName {compute_row_operations_Pipeline_VITIS_LOOP_37_6}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict L_cache_1 { MEM_WIDTH 32 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict L_cache_2 { MEM_WIDTH 32 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict L_cache_3 { MEM_WIDTH 32 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict L_cache_4 { MEM_WIDTH 32 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict L_cache_5 { MEM_WIDTH 32 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict L_cache_6 { MEM_WIDTH 32 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict L_cache_7 { MEM_WIDTH 32 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict L_cache_8 { MEM_WIDTH 32 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict L_cache_9 { MEM_WIDTH 32 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict L_cache { MEM_WIDTH 32 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict non_zero_cache { MEM_WIDTH 1 MEM_SIZE 3 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict non_zero_cache_1 { MEM_WIDTH 1 MEM_SIZE 3 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict non_zero_cache_2 { MEM_WIDTH 1 MEM_SIZE 3 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict non_zero_cache_3 { MEM_WIDTH 1 MEM_SIZE 3 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict non_zero_cache_4 { MEM_WIDTH 1 MEM_SIZE 3 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict non_zero_cache_5 { MEM_WIDTH 1 MEM_SIZE 3 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict non_zero_cache_6 { MEM_WIDTH 1 MEM_SIZE 3 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict non_zero_cache_7 { MEM_WIDTH 1 MEM_SIZE 3 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict non_zero_cache_8 { MEM_WIDTH 1 MEM_SIZE 3 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict non_zero_cache_9 { MEM_WIDTH 1 MEM_SIZE 3 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ size_vnode int 32 regular  }
	{ syndrome_cache_reload int 1 regular  }
	{ syndrome_cache_1_reload int 1 regular  }
	{ syndrome_cache_2_reload int 1 regular  }
	{ L_cache_1 float 32 regular {array 3 { 0 1 } 1 1 }  }
	{ L_cache_2 float 32 regular {array 3 { 0 1 } 1 1 }  }
	{ L_cache_3 float 32 regular {array 3 { 0 1 } 1 1 }  }
	{ L_cache_4 float 32 regular {array 3 { 0 1 } 1 1 }  }
	{ L_cache_5 float 32 regular {array 3 { 0 1 } 1 1 }  }
	{ L_cache_6 float 32 regular {array 3 { 2 0 } 1 1 }  }
	{ L_cache_7 float 32 regular {array 3 { 2 0 } 1 1 }  }
	{ L_cache_8 float 32 regular {array 3 { 2 0 } 1 1 }  }
	{ L_cache_9 float 32 regular {array 3 { 2 0 } 1 1 }  }
	{ L_cache float 32 regular {array 3 { 0 1 } 1 1 }  }
	{ size_checks int 32 regular  }
	{ non_zero_cache int 1 regular {array 3 { 1 3 } 1 1 }  }
	{ non_zero_cache_1 int 1 regular {array 3 { 1 3 } 1 1 }  }
	{ non_zero_cache_2 int 1 regular {array 3 { 1 3 } 1 1 }  }
	{ non_zero_cache_3 int 1 regular {array 3 { 1 3 } 1 1 }  }
	{ non_zero_cache_4 int 1 regular {array 3 { 1 3 } 1 1 }  }
	{ non_zero_cache_5 int 1 regular {array 3 { 1 3 } 1 1 }  }
	{ non_zero_cache_6 int 1 regular {array 3 { 1 3 } 1 1 }  }
	{ non_zero_cache_7 int 1 regular {array 3 { 1 3 } 1 1 }  }
	{ non_zero_cache_8 int 1 regular {array 3 { 1 3 } 1 1 }  }
	{ non_zero_cache_9 int 1 regular {array 3 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "size_vnode", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "syndrome_cache_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "syndrome_cache_1_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "syndrome_cache_2_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "L_cache_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "L_cache_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "L_cache_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "L_cache_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "L_cache_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "L_cache_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "L_cache_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "L_cache_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "L_cache_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "L_cache", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "size_checks", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "non_zero_cache", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "non_zero_cache_1", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "non_zero_cache_2", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "non_zero_cache_3", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "non_zero_cache_4", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "non_zero_cache_5", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "non_zero_cache_6", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "non_zero_cache_7", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "non_zero_cache_8", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "non_zero_cache_9", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 119
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ size_vnode sc_in sc_lv 32 signal 0 } 
	{ syndrome_cache_reload sc_in sc_lv 1 signal 1 } 
	{ syndrome_cache_1_reload sc_in sc_lv 1 signal 2 } 
	{ syndrome_cache_2_reload sc_in sc_lv 1 signal 3 } 
	{ L_cache_1_address0 sc_out sc_lv 2 signal 4 } 
	{ L_cache_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ L_cache_1_we0 sc_out sc_logic 1 signal 4 } 
	{ L_cache_1_d0 sc_out sc_lv 32 signal 4 } 
	{ L_cache_1_address1 sc_out sc_lv 2 signal 4 } 
	{ L_cache_1_ce1 sc_out sc_logic 1 signal 4 } 
	{ L_cache_1_q1 sc_in sc_lv 32 signal 4 } 
	{ L_cache_2_address0 sc_out sc_lv 2 signal 5 } 
	{ L_cache_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ L_cache_2_we0 sc_out sc_logic 1 signal 5 } 
	{ L_cache_2_d0 sc_out sc_lv 32 signal 5 } 
	{ L_cache_2_address1 sc_out sc_lv 2 signal 5 } 
	{ L_cache_2_ce1 sc_out sc_logic 1 signal 5 } 
	{ L_cache_2_q1 sc_in sc_lv 32 signal 5 } 
	{ L_cache_3_address0 sc_out sc_lv 2 signal 6 } 
	{ L_cache_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ L_cache_3_we0 sc_out sc_logic 1 signal 6 } 
	{ L_cache_3_d0 sc_out sc_lv 32 signal 6 } 
	{ L_cache_3_address1 sc_out sc_lv 2 signal 6 } 
	{ L_cache_3_ce1 sc_out sc_logic 1 signal 6 } 
	{ L_cache_3_q1 sc_in sc_lv 32 signal 6 } 
	{ L_cache_4_address0 sc_out sc_lv 2 signal 7 } 
	{ L_cache_4_ce0 sc_out sc_logic 1 signal 7 } 
	{ L_cache_4_we0 sc_out sc_logic 1 signal 7 } 
	{ L_cache_4_d0 sc_out sc_lv 32 signal 7 } 
	{ L_cache_4_address1 sc_out sc_lv 2 signal 7 } 
	{ L_cache_4_ce1 sc_out sc_logic 1 signal 7 } 
	{ L_cache_4_q1 sc_in sc_lv 32 signal 7 } 
	{ L_cache_5_address0 sc_out sc_lv 2 signal 8 } 
	{ L_cache_5_ce0 sc_out sc_logic 1 signal 8 } 
	{ L_cache_5_we0 sc_out sc_logic 1 signal 8 } 
	{ L_cache_5_d0 sc_out sc_lv 32 signal 8 } 
	{ L_cache_5_address1 sc_out sc_lv 2 signal 8 } 
	{ L_cache_5_ce1 sc_out sc_logic 1 signal 8 } 
	{ L_cache_5_q1 sc_in sc_lv 32 signal 8 } 
	{ L_cache_6_address0 sc_out sc_lv 2 signal 9 } 
	{ L_cache_6_ce0 sc_out sc_logic 1 signal 9 } 
	{ L_cache_6_we0 sc_out sc_logic 1 signal 9 } 
	{ L_cache_6_d0 sc_out sc_lv 32 signal 9 } 
	{ L_cache_6_q0 sc_in sc_lv 32 signal 9 } 
	{ L_cache_6_address1 sc_out sc_lv 2 signal 9 } 
	{ L_cache_6_ce1 sc_out sc_logic 1 signal 9 } 
	{ L_cache_6_we1 sc_out sc_logic 1 signal 9 } 
	{ L_cache_6_d1 sc_out sc_lv 32 signal 9 } 
	{ L_cache_7_address0 sc_out sc_lv 2 signal 10 } 
	{ L_cache_7_ce0 sc_out sc_logic 1 signal 10 } 
	{ L_cache_7_we0 sc_out sc_logic 1 signal 10 } 
	{ L_cache_7_d0 sc_out sc_lv 32 signal 10 } 
	{ L_cache_7_q0 sc_in sc_lv 32 signal 10 } 
	{ L_cache_7_address1 sc_out sc_lv 2 signal 10 } 
	{ L_cache_7_ce1 sc_out sc_logic 1 signal 10 } 
	{ L_cache_7_we1 sc_out sc_logic 1 signal 10 } 
	{ L_cache_7_d1 sc_out sc_lv 32 signal 10 } 
	{ L_cache_8_address0 sc_out sc_lv 2 signal 11 } 
	{ L_cache_8_ce0 sc_out sc_logic 1 signal 11 } 
	{ L_cache_8_we0 sc_out sc_logic 1 signal 11 } 
	{ L_cache_8_d0 sc_out sc_lv 32 signal 11 } 
	{ L_cache_8_q0 sc_in sc_lv 32 signal 11 } 
	{ L_cache_8_address1 sc_out sc_lv 2 signal 11 } 
	{ L_cache_8_ce1 sc_out sc_logic 1 signal 11 } 
	{ L_cache_8_we1 sc_out sc_logic 1 signal 11 } 
	{ L_cache_8_d1 sc_out sc_lv 32 signal 11 } 
	{ L_cache_9_address0 sc_out sc_lv 2 signal 12 } 
	{ L_cache_9_ce0 sc_out sc_logic 1 signal 12 } 
	{ L_cache_9_we0 sc_out sc_logic 1 signal 12 } 
	{ L_cache_9_d0 sc_out sc_lv 32 signal 12 } 
	{ L_cache_9_q0 sc_in sc_lv 32 signal 12 } 
	{ L_cache_9_address1 sc_out sc_lv 2 signal 12 } 
	{ L_cache_9_ce1 sc_out sc_logic 1 signal 12 } 
	{ L_cache_9_we1 sc_out sc_logic 1 signal 12 } 
	{ L_cache_9_d1 sc_out sc_lv 32 signal 12 } 
	{ L_cache_address0 sc_out sc_lv 2 signal 13 } 
	{ L_cache_ce0 sc_out sc_logic 1 signal 13 } 
	{ L_cache_we0 sc_out sc_logic 1 signal 13 } 
	{ L_cache_d0 sc_out sc_lv 32 signal 13 } 
	{ L_cache_address1 sc_out sc_lv 2 signal 13 } 
	{ L_cache_ce1 sc_out sc_logic 1 signal 13 } 
	{ L_cache_q1 sc_in sc_lv 32 signal 13 } 
	{ size_checks sc_in sc_lv 32 signal 14 } 
	{ non_zero_cache_address0 sc_out sc_lv 2 signal 15 } 
	{ non_zero_cache_ce0 sc_out sc_logic 1 signal 15 } 
	{ non_zero_cache_q0 sc_in sc_lv 1 signal 15 } 
	{ non_zero_cache_1_address0 sc_out sc_lv 2 signal 16 } 
	{ non_zero_cache_1_ce0 sc_out sc_logic 1 signal 16 } 
	{ non_zero_cache_1_q0 sc_in sc_lv 1 signal 16 } 
	{ non_zero_cache_2_address0 sc_out sc_lv 2 signal 17 } 
	{ non_zero_cache_2_ce0 sc_out sc_logic 1 signal 17 } 
	{ non_zero_cache_2_q0 sc_in sc_lv 1 signal 17 } 
	{ non_zero_cache_3_address0 sc_out sc_lv 2 signal 18 } 
	{ non_zero_cache_3_ce0 sc_out sc_logic 1 signal 18 } 
	{ non_zero_cache_3_q0 sc_in sc_lv 1 signal 18 } 
	{ non_zero_cache_4_address0 sc_out sc_lv 2 signal 19 } 
	{ non_zero_cache_4_ce0 sc_out sc_logic 1 signal 19 } 
	{ non_zero_cache_4_q0 sc_in sc_lv 1 signal 19 } 
	{ non_zero_cache_5_address0 sc_out sc_lv 2 signal 20 } 
	{ non_zero_cache_5_ce0 sc_out sc_logic 1 signal 20 } 
	{ non_zero_cache_5_q0 sc_in sc_lv 1 signal 20 } 
	{ non_zero_cache_6_address0 sc_out sc_lv 2 signal 21 } 
	{ non_zero_cache_6_ce0 sc_out sc_logic 1 signal 21 } 
	{ non_zero_cache_6_q0 sc_in sc_lv 1 signal 21 } 
	{ non_zero_cache_7_address0 sc_out sc_lv 2 signal 22 } 
	{ non_zero_cache_7_ce0 sc_out sc_logic 1 signal 22 } 
	{ non_zero_cache_7_q0 sc_in sc_lv 1 signal 22 } 
	{ non_zero_cache_8_address0 sc_out sc_lv 2 signal 23 } 
	{ non_zero_cache_8_ce0 sc_out sc_logic 1 signal 23 } 
	{ non_zero_cache_8_q0 sc_in sc_lv 1 signal 23 } 
	{ non_zero_cache_9_address0 sc_out sc_lv 2 signal 24 } 
	{ non_zero_cache_9_ce0 sc_out sc_logic 1 signal 24 } 
	{ non_zero_cache_9_q0 sc_in sc_lv 1 signal 24 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "size_vnode", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_vnode", "role": "default" }} , 
 	{ "name": "syndrome_cache_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "syndrome_cache_reload", "role": "default" }} , 
 	{ "name": "syndrome_cache_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "syndrome_cache_1_reload", "role": "default" }} , 
 	{ "name": "syndrome_cache_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "syndrome_cache_2_reload", "role": "default" }} , 
 	{ "name": "L_cache_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache_1", "role": "address0" }} , 
 	{ "name": "L_cache_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_1", "role": "ce0" }} , 
 	{ "name": "L_cache_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_1", "role": "we0" }} , 
 	{ "name": "L_cache_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_1", "role": "d0" }} , 
 	{ "name": "L_cache_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache_1", "role": "address1" }} , 
 	{ "name": "L_cache_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_1", "role": "ce1" }} , 
 	{ "name": "L_cache_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_1", "role": "q1" }} , 
 	{ "name": "L_cache_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache_2", "role": "address0" }} , 
 	{ "name": "L_cache_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_2", "role": "ce0" }} , 
 	{ "name": "L_cache_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_2", "role": "we0" }} , 
 	{ "name": "L_cache_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_2", "role": "d0" }} , 
 	{ "name": "L_cache_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache_2", "role": "address1" }} , 
 	{ "name": "L_cache_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_2", "role": "ce1" }} , 
 	{ "name": "L_cache_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_2", "role": "q1" }} , 
 	{ "name": "L_cache_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache_3", "role": "address0" }} , 
 	{ "name": "L_cache_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_3", "role": "ce0" }} , 
 	{ "name": "L_cache_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_3", "role": "we0" }} , 
 	{ "name": "L_cache_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_3", "role": "d0" }} , 
 	{ "name": "L_cache_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache_3", "role": "address1" }} , 
 	{ "name": "L_cache_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_3", "role": "ce1" }} , 
 	{ "name": "L_cache_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_3", "role": "q1" }} , 
 	{ "name": "L_cache_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache_4", "role": "address0" }} , 
 	{ "name": "L_cache_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_4", "role": "ce0" }} , 
 	{ "name": "L_cache_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_4", "role": "we0" }} , 
 	{ "name": "L_cache_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_4", "role": "d0" }} , 
 	{ "name": "L_cache_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache_4", "role": "address1" }} , 
 	{ "name": "L_cache_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_4", "role": "ce1" }} , 
 	{ "name": "L_cache_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_4", "role": "q1" }} , 
 	{ "name": "L_cache_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache_5", "role": "address0" }} , 
 	{ "name": "L_cache_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_5", "role": "ce0" }} , 
 	{ "name": "L_cache_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_5", "role": "we0" }} , 
 	{ "name": "L_cache_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_5", "role": "d0" }} , 
 	{ "name": "L_cache_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache_5", "role": "address1" }} , 
 	{ "name": "L_cache_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_5", "role": "ce1" }} , 
 	{ "name": "L_cache_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_5", "role": "q1" }} , 
 	{ "name": "L_cache_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache_6", "role": "address0" }} , 
 	{ "name": "L_cache_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_6", "role": "ce0" }} , 
 	{ "name": "L_cache_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_6", "role": "we0" }} , 
 	{ "name": "L_cache_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_6", "role": "d0" }} , 
 	{ "name": "L_cache_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_6", "role": "q0" }} , 
 	{ "name": "L_cache_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache_6", "role": "address1" }} , 
 	{ "name": "L_cache_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_6", "role": "ce1" }} , 
 	{ "name": "L_cache_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_6", "role": "we1" }} , 
 	{ "name": "L_cache_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_6", "role": "d1" }} , 
 	{ "name": "L_cache_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache_7", "role": "address0" }} , 
 	{ "name": "L_cache_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_7", "role": "ce0" }} , 
 	{ "name": "L_cache_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_7", "role": "we0" }} , 
 	{ "name": "L_cache_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_7", "role": "d0" }} , 
 	{ "name": "L_cache_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_7", "role": "q0" }} , 
 	{ "name": "L_cache_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache_7", "role": "address1" }} , 
 	{ "name": "L_cache_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_7", "role": "ce1" }} , 
 	{ "name": "L_cache_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_7", "role": "we1" }} , 
 	{ "name": "L_cache_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_7", "role": "d1" }} , 
 	{ "name": "L_cache_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache_8", "role": "address0" }} , 
 	{ "name": "L_cache_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_8", "role": "ce0" }} , 
 	{ "name": "L_cache_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_8", "role": "we0" }} , 
 	{ "name": "L_cache_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_8", "role": "d0" }} , 
 	{ "name": "L_cache_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_8", "role": "q0" }} , 
 	{ "name": "L_cache_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache_8", "role": "address1" }} , 
 	{ "name": "L_cache_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_8", "role": "ce1" }} , 
 	{ "name": "L_cache_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_8", "role": "we1" }} , 
 	{ "name": "L_cache_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_8", "role": "d1" }} , 
 	{ "name": "L_cache_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache_9", "role": "address0" }} , 
 	{ "name": "L_cache_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_9", "role": "ce0" }} , 
 	{ "name": "L_cache_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_9", "role": "we0" }} , 
 	{ "name": "L_cache_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_9", "role": "d0" }} , 
 	{ "name": "L_cache_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_9", "role": "q0" }} , 
 	{ "name": "L_cache_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache_9", "role": "address1" }} , 
 	{ "name": "L_cache_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_9", "role": "ce1" }} , 
 	{ "name": "L_cache_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache_9", "role": "we1" }} , 
 	{ "name": "L_cache_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache_9", "role": "d1" }} , 
 	{ "name": "L_cache_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache", "role": "address0" }} , 
 	{ "name": "L_cache_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache", "role": "ce0" }} , 
 	{ "name": "L_cache_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache", "role": "we0" }} , 
 	{ "name": "L_cache_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache", "role": "d0" }} , 
 	{ "name": "L_cache_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "L_cache", "role": "address1" }} , 
 	{ "name": "L_cache_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_cache", "role": "ce1" }} , 
 	{ "name": "L_cache_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "L_cache", "role": "q1" }} , 
 	{ "name": "size_checks", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_checks", "role": "default" }} , 
 	{ "name": "non_zero_cache_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "non_zero_cache", "role": "address0" }} , 
 	{ "name": "non_zero_cache_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache", "role": "ce0" }} , 
 	{ "name": "non_zero_cache_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache", "role": "q0" }} , 
 	{ "name": "non_zero_cache_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "non_zero_cache_1", "role": "address0" }} , 
 	{ "name": "non_zero_cache_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache_1", "role": "ce0" }} , 
 	{ "name": "non_zero_cache_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache_1", "role": "q0" }} , 
 	{ "name": "non_zero_cache_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "non_zero_cache_2", "role": "address0" }} , 
 	{ "name": "non_zero_cache_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache_2", "role": "ce0" }} , 
 	{ "name": "non_zero_cache_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache_2", "role": "q0" }} , 
 	{ "name": "non_zero_cache_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "non_zero_cache_3", "role": "address0" }} , 
 	{ "name": "non_zero_cache_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache_3", "role": "ce0" }} , 
 	{ "name": "non_zero_cache_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache_3", "role": "q0" }} , 
 	{ "name": "non_zero_cache_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "non_zero_cache_4", "role": "address0" }} , 
 	{ "name": "non_zero_cache_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache_4", "role": "ce0" }} , 
 	{ "name": "non_zero_cache_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache_4", "role": "q0" }} , 
 	{ "name": "non_zero_cache_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "non_zero_cache_5", "role": "address0" }} , 
 	{ "name": "non_zero_cache_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache_5", "role": "ce0" }} , 
 	{ "name": "non_zero_cache_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache_5", "role": "q0" }} , 
 	{ "name": "non_zero_cache_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "non_zero_cache_6", "role": "address0" }} , 
 	{ "name": "non_zero_cache_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache_6", "role": "ce0" }} , 
 	{ "name": "non_zero_cache_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache_6", "role": "q0" }} , 
 	{ "name": "non_zero_cache_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "non_zero_cache_7", "role": "address0" }} , 
 	{ "name": "non_zero_cache_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache_7", "role": "ce0" }} , 
 	{ "name": "non_zero_cache_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache_7", "role": "q0" }} , 
 	{ "name": "non_zero_cache_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "non_zero_cache_8", "role": "address0" }} , 
 	{ "name": "non_zero_cache_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache_8", "role": "ce0" }} , 
 	{ "name": "non_zero_cache_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache_8", "role": "q0" }} , 
 	{ "name": "non_zero_cache_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "non_zero_cache_9", "role": "address0" }} , 
 	{ "name": "non_zero_cache_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache_9", "role": "ce0" }} , 
 	{ "name": "non_zero_cache_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "non_zero_cache_9", "role": "q0" }}  ]}

set ArgLastReadFirstWriteLatency {
	compute_row_operations_Pipeline_VITIS_LOOP_37_6 {
		size_vnode {Type I LastRead 0 FirstWrite -1}
		syndrome_cache_reload {Type I LastRead 0 FirstWrite -1}
		syndrome_cache_1_reload {Type I LastRead 0 FirstWrite -1}
		syndrome_cache_2_reload {Type I LastRead 0 FirstWrite -1}
		L_cache_1 {Type IO LastRead 0 FirstWrite 18}
		L_cache_2 {Type IO LastRead 0 FirstWrite 18}
		L_cache_3 {Type IO LastRead 0 FirstWrite 18}
		L_cache_4 {Type IO LastRead 0 FirstWrite 18}
		L_cache_5 {Type IO LastRead 0 FirstWrite 18}
		L_cache_6 {Type IO LastRead 0 FirstWrite 19}
		L_cache_7 {Type IO LastRead 0 FirstWrite 19}
		L_cache_8 {Type IO LastRead 0 FirstWrite 19}
		L_cache_9 {Type IO LastRead 0 FirstWrite 19}
		L_cache {Type IO LastRead 0 FirstWrite 18}
		size_checks {Type I LastRead 0 FirstWrite -1}
		non_zero_cache {Type I LastRead 0 FirstWrite -1}
		non_zero_cache_1 {Type I LastRead 2 FirstWrite -1}
		non_zero_cache_2 {Type I LastRead 2 FirstWrite -1}
		non_zero_cache_3 {Type I LastRead 2 FirstWrite -1}
		non_zero_cache_4 {Type I LastRead 2 FirstWrite -1}
		non_zero_cache_5 {Type I LastRead 2 FirstWrite -1}
		non_zero_cache_6 {Type I LastRead 4 FirstWrite -1}
		non_zero_cache_7 {Type I LastRead 4 FirstWrite -1}
		non_zero_cache_8 {Type I LastRead 4 FirstWrite -1}
		non_zero_cache_9 {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "33"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "33"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	size_vnode { ap_none {  { size_vnode in_data 0 32 } } }
	syndrome_cache_reload { ap_none {  { syndrome_cache_reload in_data 0 1 } } }
	syndrome_cache_1_reload { ap_none {  { syndrome_cache_1_reload in_data 0 1 } } }
	syndrome_cache_2_reload { ap_none {  { syndrome_cache_2_reload in_data 0 1 } } }
	L_cache_1 { ap_memory {  { L_cache_1_address0 mem_address 1 2 }  { L_cache_1_ce0 mem_ce 1 1 }  { L_cache_1_we0 mem_we 1 1 }  { L_cache_1_d0 mem_din 1 32 }  { L_cache_1_address1 MemPortADDR2 1 2 }  { L_cache_1_ce1 MemPortCE2 1 1 }  { L_cache_1_q1 MemPortDOUT2 0 32 } } }
	L_cache_2 { ap_memory {  { L_cache_2_address0 mem_address 1 2 }  { L_cache_2_ce0 mem_ce 1 1 }  { L_cache_2_we0 mem_we 1 1 }  { L_cache_2_d0 mem_din 1 32 }  { L_cache_2_address1 MemPortADDR2 1 2 }  { L_cache_2_ce1 MemPortCE2 1 1 }  { L_cache_2_q1 MemPortDOUT2 0 32 } } }
	L_cache_3 { ap_memory {  { L_cache_3_address0 mem_address 1 2 }  { L_cache_3_ce0 mem_ce 1 1 }  { L_cache_3_we0 mem_we 1 1 }  { L_cache_3_d0 mem_din 1 32 }  { L_cache_3_address1 MemPortADDR2 1 2 }  { L_cache_3_ce1 MemPortCE2 1 1 }  { L_cache_3_q1 MemPortDOUT2 0 32 } } }
	L_cache_4 { ap_memory {  { L_cache_4_address0 mem_address 1 2 }  { L_cache_4_ce0 mem_ce 1 1 }  { L_cache_4_we0 mem_we 1 1 }  { L_cache_4_d0 mem_din 1 32 }  { L_cache_4_address1 MemPortADDR2 1 2 }  { L_cache_4_ce1 MemPortCE2 1 1 }  { L_cache_4_q1 MemPortDOUT2 0 32 } } }
	L_cache_5 { ap_memory {  { L_cache_5_address0 mem_address 1 2 }  { L_cache_5_ce0 mem_ce 1 1 }  { L_cache_5_we0 mem_we 1 1 }  { L_cache_5_d0 mem_din 1 32 }  { L_cache_5_address1 MemPortADDR2 1 2 }  { L_cache_5_ce1 MemPortCE2 1 1 }  { L_cache_5_q1 MemPortDOUT2 0 32 } } }
	L_cache_6 { ap_memory {  { L_cache_6_address0 mem_address 1 2 }  { L_cache_6_ce0 mem_ce 1 1 }  { L_cache_6_we0 mem_we 1 1 }  { L_cache_6_d0 mem_din 1 32 }  { L_cache_6_q0 mem_dout 0 32 }  { L_cache_6_address1 MemPortADDR2 1 2 }  { L_cache_6_ce1 MemPortCE2 1 1 }  { L_cache_6_we1 MemPortWE2 1 1 }  { L_cache_6_d1 MemPortDIN2 1 32 } } }
	L_cache_7 { ap_memory {  { L_cache_7_address0 mem_address 1 2 }  { L_cache_7_ce0 mem_ce 1 1 }  { L_cache_7_we0 mem_we 1 1 }  { L_cache_7_d0 mem_din 1 32 }  { L_cache_7_q0 mem_dout 0 32 }  { L_cache_7_address1 MemPortADDR2 1 2 }  { L_cache_7_ce1 MemPortCE2 1 1 }  { L_cache_7_we1 MemPortWE2 1 1 }  { L_cache_7_d1 MemPortDIN2 1 32 } } }
	L_cache_8 { ap_memory {  { L_cache_8_address0 mem_address 1 2 }  { L_cache_8_ce0 mem_ce 1 1 }  { L_cache_8_we0 mem_we 1 1 }  { L_cache_8_d0 mem_din 1 32 }  { L_cache_8_q0 mem_dout 0 32 }  { L_cache_8_address1 MemPortADDR2 1 2 }  { L_cache_8_ce1 MemPortCE2 1 1 }  { L_cache_8_we1 MemPortWE2 1 1 }  { L_cache_8_d1 MemPortDIN2 1 32 } } }
	L_cache_9 { ap_memory {  { L_cache_9_address0 mem_address 1 2 }  { L_cache_9_ce0 mem_ce 1 1 }  { L_cache_9_we0 mem_we 1 1 }  { L_cache_9_d0 mem_din 1 32 }  { L_cache_9_q0 mem_dout 0 32 }  { L_cache_9_address1 MemPortADDR2 1 2 }  { L_cache_9_ce1 MemPortCE2 1 1 }  { L_cache_9_we1 MemPortWE2 1 1 }  { L_cache_9_d1 MemPortDIN2 1 32 } } }
	L_cache { ap_memory {  { L_cache_address0 mem_address 1 2 }  { L_cache_ce0 mem_ce 1 1 }  { L_cache_we0 mem_we 1 1 }  { L_cache_d0 mem_din 1 32 }  { L_cache_address1 MemPortADDR2 1 2 }  { L_cache_ce1 MemPortCE2 1 1 }  { L_cache_q1 MemPortDOUT2 0 32 } } }
	size_checks { ap_none {  { size_checks in_data 0 32 } } }
	non_zero_cache { ap_memory {  { non_zero_cache_address0 mem_address 1 2 }  { non_zero_cache_ce0 mem_ce 1 1 }  { non_zero_cache_q0 mem_dout 0 1 } } }
	non_zero_cache_1 { ap_memory {  { non_zero_cache_1_address0 mem_address 1 2 }  { non_zero_cache_1_ce0 mem_ce 1 1 }  { non_zero_cache_1_q0 mem_dout 0 1 } } }
	non_zero_cache_2 { ap_memory {  { non_zero_cache_2_address0 mem_address 1 2 }  { non_zero_cache_2_ce0 mem_ce 1 1 }  { non_zero_cache_2_q0 mem_dout 0 1 } } }
	non_zero_cache_3 { ap_memory {  { non_zero_cache_3_address0 mem_address 1 2 }  { non_zero_cache_3_ce0 mem_ce 1 1 }  { non_zero_cache_3_q0 mem_dout 0 1 } } }
	non_zero_cache_4 { ap_memory {  { non_zero_cache_4_address0 mem_address 1 2 }  { non_zero_cache_4_ce0 mem_ce 1 1 }  { non_zero_cache_4_q0 mem_dout 0 1 } } }
	non_zero_cache_5 { ap_memory {  { non_zero_cache_5_address0 mem_address 1 2 }  { non_zero_cache_5_ce0 mem_ce 1 1 }  { non_zero_cache_5_q0 mem_dout 0 1 } } }
	non_zero_cache_6 { ap_memory {  { non_zero_cache_6_address0 mem_address 1 2 }  { non_zero_cache_6_ce0 mem_ce 1 1 }  { non_zero_cache_6_q0 mem_dout 0 1 } } }
	non_zero_cache_7 { ap_memory {  { non_zero_cache_7_address0 mem_address 1 2 }  { non_zero_cache_7_ce0 mem_ce 1 1 }  { non_zero_cache_7_q0 mem_dout 0 1 } } }
	non_zero_cache_8 { ap_memory {  { non_zero_cache_8_address0 mem_address 1 2 }  { non_zero_cache_8_ce0 mem_ce 1 1 }  { non_zero_cache_8_q0 mem_dout 0 1 } } }
	non_zero_cache_9 { ap_memory {  { non_zero_cache_9_address0 mem_address 1 2 }  { non_zero_cache_9_ce0 mem_ce 1 1 }  { non_zero_cache_9_q0 mem_dout 0 1 } } }
}
