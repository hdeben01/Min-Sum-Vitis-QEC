// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XCOMPUTE_CHECK_TO_VALUE_H
#define XCOMPUTE_CHECK_TO_VALUE_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcompute_check_to_value_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XCompute_check_to_value_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XCompute_check_to_value;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCompute_check_to_value_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCompute_check_to_value_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCompute_check_to_value_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCompute_check_to_value_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XCompute_check_to_value_Initialize(XCompute_check_to_value *InstancePtr, UINTPTR BaseAddress);
XCompute_check_to_value_Config* XCompute_check_to_value_LookupConfig(UINTPTR BaseAddress);
#else
int XCompute_check_to_value_Initialize(XCompute_check_to_value *InstancePtr, u16 DeviceId);
XCompute_check_to_value_Config* XCompute_check_to_value_LookupConfig(u16 DeviceId);
#endif
int XCompute_check_to_value_CfgInitialize(XCompute_check_to_value *InstancePtr, XCompute_check_to_value_Config *ConfigPtr);
#else
int XCompute_check_to_value_Initialize(XCompute_check_to_value *InstancePtr, const char* InstanceName);
int XCompute_check_to_value_Release(XCompute_check_to_value *InstancePtr);
#endif

void XCompute_check_to_value_Start(XCompute_check_to_value *InstancePtr);
u32 XCompute_check_to_value_IsDone(XCompute_check_to_value *InstancePtr);
u32 XCompute_check_to_value_IsIdle(XCompute_check_to_value *InstancePtr);
u32 XCompute_check_to_value_IsReady(XCompute_check_to_value *InstancePtr);
void XCompute_check_to_value_Continue(XCompute_check_to_value *InstancePtr);
void XCompute_check_to_value_EnableAutoRestart(XCompute_check_to_value *InstancePtr);
void XCompute_check_to_value_DisableAutoRestart(XCompute_check_to_value *InstancePtr);

void XCompute_check_to_value_Set_L(XCompute_check_to_value *InstancePtr, u64 Data);
u64 XCompute_check_to_value_Get_L(XCompute_check_to_value *InstancePtr);
void XCompute_check_to_value_Set_syndrome(XCompute_check_to_value *InstancePtr, u64 Data);
u64 XCompute_check_to_value_Get_syndrome(XCompute_check_to_value *InstancePtr);
void XCompute_check_to_value_Set_out_r(XCompute_check_to_value *InstancePtr, u64 Data);
u64 XCompute_check_to_value_Get_out_r(XCompute_check_to_value *InstancePtr);
void XCompute_check_to_value_Set_size_checks(XCompute_check_to_value *InstancePtr, u32 Data);
u32 XCompute_check_to_value_Get_size_checks(XCompute_check_to_value *InstancePtr);
void XCompute_check_to_value_Set_size_vnode(XCompute_check_to_value *InstancePtr, u32 Data);
u32 XCompute_check_to_value_Get_size_vnode(XCompute_check_to_value *InstancePtr);

void XCompute_check_to_value_InterruptGlobalEnable(XCompute_check_to_value *InstancePtr);
void XCompute_check_to_value_InterruptGlobalDisable(XCompute_check_to_value *InstancePtr);
void XCompute_check_to_value_InterruptEnable(XCompute_check_to_value *InstancePtr, u32 Mask);
void XCompute_check_to_value_InterruptDisable(XCompute_check_to_value *InstancePtr, u32 Mask);
void XCompute_check_to_value_InterruptClear(XCompute_check_to_value *InstancePtr, u32 Mask);
u32 XCompute_check_to_value_InterruptGetEnabled(XCompute_check_to_value *InstancePtr);
u32 XCompute_check_to_value_InterruptGetStatus(XCompute_check_to_value *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
