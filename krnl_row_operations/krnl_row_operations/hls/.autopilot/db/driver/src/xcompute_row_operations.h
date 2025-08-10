// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XCOMPUTE_ROW_OPERATIONS_H
#define XCOMPUTE_ROW_OPERATIONS_H

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
#include "xcompute_row_operations_hw.h"

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
} XCompute_row_operations_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XCompute_row_operations;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCompute_row_operations_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCompute_row_operations_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCompute_row_operations_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCompute_row_operations_ReadReg(BaseAddress, RegOffset) \
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
int XCompute_row_operations_Initialize(XCompute_row_operations *InstancePtr, UINTPTR BaseAddress);
XCompute_row_operations_Config* XCompute_row_operations_LookupConfig(UINTPTR BaseAddress);
#else
int XCompute_row_operations_Initialize(XCompute_row_operations *InstancePtr, u16 DeviceId);
XCompute_row_operations_Config* XCompute_row_operations_LookupConfig(u16 DeviceId);
#endif
int XCompute_row_operations_CfgInitialize(XCompute_row_operations *InstancePtr, XCompute_row_operations_Config *ConfigPtr);
#else
int XCompute_row_operations_Initialize(XCompute_row_operations *InstancePtr, const char* InstanceName);
int XCompute_row_operations_Release(XCompute_row_operations *InstancePtr);
#endif

void XCompute_row_operations_Start(XCompute_row_operations *InstancePtr);
u32 XCompute_row_operations_IsDone(XCompute_row_operations *InstancePtr);
u32 XCompute_row_operations_IsIdle(XCompute_row_operations *InstancePtr);
u32 XCompute_row_operations_IsReady(XCompute_row_operations *InstancePtr);
void XCompute_row_operations_Continue(XCompute_row_operations *InstancePtr);
void XCompute_row_operations_EnableAutoRestart(XCompute_row_operations *InstancePtr);
void XCompute_row_operations_DisableAutoRestart(XCompute_row_operations *InstancePtr);

void XCompute_row_operations_Set_L(XCompute_row_operations *InstancePtr, u64 Data);
u64 XCompute_row_operations_Get_L(XCompute_row_operations *InstancePtr);
void XCompute_row_operations_Set_non_zero(XCompute_row_operations *InstancePtr, u64 Data);
u64 XCompute_row_operations_Get_non_zero(XCompute_row_operations *InstancePtr);
void XCompute_row_operations_Set_syndrome(XCompute_row_operations *InstancePtr, u64 Data);
u64 XCompute_row_operations_Get_syndrome(XCompute_row_operations *InstancePtr);
void XCompute_row_operations_Set_size_checks(XCompute_row_operations *InstancePtr, u32 Data);
u32 XCompute_row_operations_Get_size_checks(XCompute_row_operations *InstancePtr);
void XCompute_row_operations_Set_size_vnode(XCompute_row_operations *InstancePtr, u32 Data);
u32 XCompute_row_operations_Get_size_vnode(XCompute_row_operations *InstancePtr);

void XCompute_row_operations_InterruptGlobalEnable(XCompute_row_operations *InstancePtr);
void XCompute_row_operations_InterruptGlobalDisable(XCompute_row_operations *InstancePtr);
void XCompute_row_operations_InterruptEnable(XCompute_row_operations *InstancePtr, u32 Mask);
void XCompute_row_operations_InterruptDisable(XCompute_row_operations *InstancePtr, u32 Mask);
void XCompute_row_operations_InterruptClear(XCompute_row_operations *InstancePtr, u32 Mask);
u32 XCompute_row_operations_InterruptGetEnabled(XCompute_row_operations *InstancePtr);
u32 XCompute_row_operations_InterruptGetStatus(XCompute_row_operations *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
