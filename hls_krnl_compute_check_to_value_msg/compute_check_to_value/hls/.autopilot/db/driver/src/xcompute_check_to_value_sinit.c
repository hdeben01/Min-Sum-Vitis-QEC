// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xcompute_check_to_value.h"

extern XCompute_check_to_value_Config XCompute_check_to_value_ConfigTable[];

#ifdef SDT
XCompute_check_to_value_Config *XCompute_check_to_value_LookupConfig(UINTPTR BaseAddress) {
	XCompute_check_to_value_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XCompute_check_to_value_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XCompute_check_to_value_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XCompute_check_to_value_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCompute_check_to_value_Initialize(XCompute_check_to_value *InstancePtr, UINTPTR BaseAddress) {
	XCompute_check_to_value_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCompute_check_to_value_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCompute_check_to_value_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XCompute_check_to_value_Config *XCompute_check_to_value_LookupConfig(u16 DeviceId) {
	XCompute_check_to_value_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCOMPUTE_CHECK_TO_VALUE_NUM_INSTANCES; Index++) {
		if (XCompute_check_to_value_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCompute_check_to_value_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCompute_check_to_value_Initialize(XCompute_check_to_value *InstancePtr, u16 DeviceId) {
	XCompute_check_to_value_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCompute_check_to_value_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCompute_check_to_value_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

