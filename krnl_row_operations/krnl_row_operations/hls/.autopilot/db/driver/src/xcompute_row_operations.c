// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcompute_row_operations.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCompute_row_operations_CfgInitialize(XCompute_row_operations *InstancePtr, XCompute_row_operations_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCompute_row_operations_Start(XCompute_row_operations *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_row_operations_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCompute_row_operations_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCompute_row_operations_IsDone(XCompute_row_operations *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_row_operations_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCompute_row_operations_IsIdle(XCompute_row_operations *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_row_operations_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCompute_row_operations_IsReady(XCompute_row_operations *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_row_operations_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCompute_row_operations_Continue(XCompute_row_operations *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_row_operations_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCompute_row_operations_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XCompute_row_operations_EnableAutoRestart(XCompute_row_operations *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_row_operations_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCompute_row_operations_DisableAutoRestart(XCompute_row_operations *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_row_operations_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_AP_CTRL, 0);
}

void XCompute_row_operations_Set_L(XCompute_row_operations *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_row_operations_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_L_DATA, (u32)(Data));
    XCompute_row_operations_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_L_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_row_operations_Get_L(XCompute_row_operations *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_row_operations_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_L_DATA);
    Data += (u64)XCompute_row_operations_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_L_DATA + 4) << 32;
    return Data;
}

void XCompute_row_operations_Set_non_zero(XCompute_row_operations *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_row_operations_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_NON_ZERO_DATA, (u32)(Data));
    XCompute_row_operations_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_NON_ZERO_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_row_operations_Get_non_zero(XCompute_row_operations *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_row_operations_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_NON_ZERO_DATA);
    Data += (u64)XCompute_row_operations_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_NON_ZERO_DATA + 4) << 32;
    return Data;
}

void XCompute_row_operations_Set_syndrome(XCompute_row_operations *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_row_operations_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_SYNDROME_DATA, (u32)(Data));
    XCompute_row_operations_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_SYNDROME_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_row_operations_Get_syndrome(XCompute_row_operations *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_row_operations_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_SYNDROME_DATA);
    Data += (u64)XCompute_row_operations_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_SYNDROME_DATA + 4) << 32;
    return Data;
}

void XCompute_row_operations_Set_size_checks(XCompute_row_operations *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_row_operations_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_SIZE_CHECKS_DATA, Data);
}

u32 XCompute_row_operations_Get_size_checks(XCompute_row_operations *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_row_operations_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_SIZE_CHECKS_DATA);
    return Data;
}

void XCompute_row_operations_Set_size_vnode(XCompute_row_operations *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_row_operations_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_SIZE_VNODE_DATA, Data);
}

u32 XCompute_row_operations_Get_size_vnode(XCompute_row_operations *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_row_operations_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_SIZE_VNODE_DATA);
    return Data;
}

void XCompute_row_operations_InterruptGlobalEnable(XCompute_row_operations *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_row_operations_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_GIE, 1);
}

void XCompute_row_operations_InterruptGlobalDisable(XCompute_row_operations *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_row_operations_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_GIE, 0);
}

void XCompute_row_operations_InterruptEnable(XCompute_row_operations *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCompute_row_operations_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_IER);
    XCompute_row_operations_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_IER, Register | Mask);
}

void XCompute_row_operations_InterruptDisable(XCompute_row_operations *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCompute_row_operations_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_IER);
    XCompute_row_operations_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCompute_row_operations_InterruptClear(XCompute_row_operations *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_row_operations_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_ISR, Mask);
}

u32 XCompute_row_operations_InterruptGetEnabled(XCompute_row_operations *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCompute_row_operations_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_IER);
}

u32 XCompute_row_operations_InterruptGetStatus(XCompute_row_operations *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCompute_row_operations_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_ISR);
}

