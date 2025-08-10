# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
# Tool Version Limit: 2025.05
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
cmake_minimum_required(VERSION 3.15)
project(compute_row_operations)
find_package(common)
collector_create (PROJECT_LIB_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_SOURCES xcompute_row_operations.c)
collect (PROJECT_LIB_SOURCES xcompute_row_operations_sinit.c)
collect (PROJECT_LIB_SOURCES xcompute_row_operations_linux.c)
collect (PROJECT_LIB_SOURCES xcompute_row_operations_g.c)
collector_list (_sources PROJECT_LIB_SOURCES)
collector_create (PROJECT_LIB_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_HEADERS xcompute_row_operations.h)
collect (PROJECT_LIB_HEADERS xcompute_row_operations_hw.h)
collector_list (_headers PROJECT_LIB_HEADERS)
file(COPY ${_headers} DESTINATION ${CMAKE_BINARY_DIR}/include)
include_directories(${CMAKE_BINARY_DIR}/include)
add_library(compute_row_operations STATIC ${_sources})
set_target_properties(compute_row_operations PROPERTIES LINKER_LANGUAGE C)

