#pragma once
#include "ap_int.h"


#include <hls_vector.h>
#define CHECK 3
#define VNODES 10
typedef ap_uint<1> bit_t;
typedef hls::vector<float,16> float_32; 

void compute_row_operations(float L[CHECK][VNODES], const bit_t non_zero[CHECK][VNODES], 
                            bit_t* syndrome, int size_checks, int size_vnode);