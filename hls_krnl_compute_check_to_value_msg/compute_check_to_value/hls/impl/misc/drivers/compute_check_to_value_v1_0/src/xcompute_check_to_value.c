// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcompute_check_to_value.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCompute_check_to_value_CfgInitialize(XCompute_check_to_value *InstancePtr, XCompute_check_to_value_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCompute_check_to_value_Start(XCompute_check_to_value *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_check_to_value_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCompute_check_to_value_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCompute_check_to_value_IsDone(XCompute_check_to_value *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_check_to_value_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCompute_check_to_value_IsIdle(XCompute_check_to_value *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_check_to_value_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCompute_check_to_value_IsReady(XCompute_check_to_value *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_check_to_value_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCompute_check_to_value_Continue(XCompute_check_to_value *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_check_to_value_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCompute_check_to_value_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XCompute_check_to_value_EnableAutoRestart(XCompute_check_to_value *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_check_to_value_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCompute_check_to_value_DisableAutoRestart(XCompute_check_to_value *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_check_to_value_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_AP_CTRL, 0);
}

void XCompute_check_to_value_Set_L(XCompute_check_to_value *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_check_to_value_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_L_DATA, (u32)(Data));
    XCompute_check_to_value_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_L_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_check_to_value_Get_L(XCompute_check_to_value *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_check_to_value_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_L_DATA);
    Data += (u64)XCompute_check_to_value_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_L_DATA + 4) << 32;
    return Data;
}

void XCompute_check_to_value_Set_syndrome(XCompute_check_to_value *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_check_to_value_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_SYNDROME_DATA, (u32)(Data));
    XCompute_check_to_value_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_SYNDROME_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_check_to_value_Get_syndrome(XCompute_check_to_value *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_check_to_value_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_SYNDROME_DATA);
    Data += (u64)XCompute_check_to_value_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_SYNDROME_DATA + 4) << 32;
    return Data;
}

void XCompute_check_to_value_Set_out_r(XCompute_check_to_value *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_check_to_value_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_OUT_R_DATA, (u32)(Data));
    XCompute_check_to_value_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_check_to_value_Get_out_r(XCompute_check_to_value *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_check_to_value_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_OUT_R_DATA);
    Data += (u64)XCompute_check_to_value_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

void XCompute_check_to_value_Set_size_checks(XCompute_check_to_value *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_check_to_value_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_SIZE_CHECKS_DATA, Data);
}

u32 XCompute_check_to_value_Get_size_checks(XCompute_check_to_value *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_check_to_value_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_SIZE_CHECKS_DATA);
    return Data;
}

void XCompute_check_to_value_Set_size_vnode(XCompute_check_to_value *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_check_to_value_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_SIZE_VNODE_DATA, Data);
}

u32 XCompute_check_to_value_Get_size_vnode(XCompute_check_to_value *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_check_to_value_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_SIZE_VNODE_DATA);
    return Data;
}

void XCompute_check_to_value_InterruptGlobalEnable(XCompute_check_to_value *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_check_to_value_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_GIE, 1);
}

void XCompute_check_to_value_InterruptGlobalDisable(XCompute_check_to_value *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_check_to_value_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_GIE, 0);
}

void XCompute_check_to_value_InterruptEnable(XCompute_check_to_value *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCompute_check_to_value_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_IER);
    XCompute_check_to_value_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_IER, Register | Mask);
}

void XCompute_check_to_value_InterruptDisable(XCompute_check_to_value *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCompute_check_to_value_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_IER);
    XCompute_check_to_value_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCompute_check_to_value_InterruptClear(XCompute_check_to_value *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_check_to_value_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_ISR, Mask);
}

u32 XCompute_check_to_value_InterruptGetEnabled(XCompute_check_to_value *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCompute_check_to_value_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_IER);
}

u32 XCompute_check_to_value_InterruptGetStatus(XCompute_check_to_value *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCompute_check_to_value_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_CHECK_TO_VALUE_CONTROL_ADDR_ISR);
}

