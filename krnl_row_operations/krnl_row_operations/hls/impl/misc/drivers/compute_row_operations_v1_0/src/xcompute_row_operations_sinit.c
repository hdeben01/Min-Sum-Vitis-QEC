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
#include "xcompute_row_operations.h"

extern XCompute_row_operations_Config XCompute_row_operations_ConfigTable[];

#ifdef SDT
XCompute_row_operations_Config *XCompute_row_operations_LookupConfig(UINTPTR BaseAddress) {
	XCompute_row_operations_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XCompute_row_operations_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XCompute_row_operations_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XCompute_row_operations_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCompute_row_operations_Initialize(XCompute_row_operations *InstancePtr, UINTPTR BaseAddress) {
	XCompute_row_operations_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCompute_row_operations_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCompute_row_operations_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XCompute_row_operations_Config *XCompute_row_operations_LookupConfig(u16 DeviceId) {
	XCompute_row_operations_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCOMPUTE_ROW_OPERATIONS_NUM_INSTANCES; Index++) {
		if (XCompute_row_operations_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCompute_row_operations_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCompute_row_operations_Initialize(XCompute_row_operations *InstancePtr, u16 DeviceId) {
	XCompute_row_operations_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCompute_row_operations_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCompute_row_operations_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

