// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of L
//        bit 31~0 - L[31:0] (Read/Write)
// 0x14 : Data signal of L
//        bit 31~0 - L[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of non_zero
//        bit 31~0 - non_zero[31:0] (Read/Write)
// 0x20 : Data signal of non_zero
//        bit 31~0 - non_zero[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of syndrome
//        bit 31~0 - syndrome[31:0] (Read/Write)
// 0x2c : Data signal of syndrome
//        bit 31~0 - syndrome[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of size_checks
//        bit 31~0 - size_checks[31:0] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of size_vnode
//        bit 31~0 - size_vnode[31:0] (Read/Write)
// 0x40 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_AP_CTRL          0x00
#define XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_GIE              0x04
#define XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_IER              0x08
#define XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_ISR              0x0c
#define XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_L_DATA           0x10
#define XCOMPUTE_ROW_OPERATIONS_CONTROL_BITS_L_DATA           64
#define XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_NON_ZERO_DATA    0x1c
#define XCOMPUTE_ROW_OPERATIONS_CONTROL_BITS_NON_ZERO_DATA    64
#define XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_SYNDROME_DATA    0x28
#define XCOMPUTE_ROW_OPERATIONS_CONTROL_BITS_SYNDROME_DATA    64
#define XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_SIZE_CHECKS_DATA 0x34
#define XCOMPUTE_ROW_OPERATIONS_CONTROL_BITS_SIZE_CHECKS_DATA 32
#define XCOMPUTE_ROW_OPERATIONS_CONTROL_ADDR_SIZE_VNODE_DATA  0x3c
#define XCOMPUTE_ROW_OPERATIONS_CONTROL_BITS_SIZE_VNODE_DATA  32

