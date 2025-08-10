#include <math.h>
#include <float.h>
#include "compute_row_operations.h"

void compute_row_operations(float L[CHECK][VNODES], const bit_t non_zero[CHECK][VNODES], 
                            bit_t* syndrome, int size_checks, int size_vnode)
{
    #pragma HLS INTERFACE mode=m_axi port=L bundle=gmem0 
    #pragma HLS INTERFACE mode=m_axi port=non_zero bundle=gmem1 
    #pragma HLS INTERFACE mode=m_axi port=syndrome bundle=gmem2
    float L_cache[CHECK][VNODES];
    bit_t non_zero_cache[CHECK][VNODES];
    bit_t syndrome_cache[CHECK];
    //cache L
    for(int i = 0; i < CHECK; i++){
       
        for(int j = 0; j < VNODES; j++){
            L_cache[i][j] = L[i][j];
           
        }
    }
    // cache pcm
    for(int i = 0; i < CHECK; i++){
   
        for(int j = 0; j < VNODES; j++){
        
            non_zero_cache[i][j] = non_zero[i][j];
        }
    }
    //cache syndrome
    for(int i = 0; i < CHECK; i++){
        syndrome_cache[i] = syndrome[i];
    }


    
    for(int i = 0; i < CHECK; i++){
        if(i == size_checks) break;

        float min1 = FLT_MAX, min2 = FLT_MAX;
        int minpos = -1;
        bit_t sign_minpos = 0;
        bit_t row_sign = 0;
        float product = 1.0;

        // Search min1 and min2

        for(int j = 0; j < VNODES; j++){
            if(j == size_vnode) break;

            float val = L_cache[i][j];
            float abs_val = fabs(val);

            if(non_zero_cache[i][j]){
                if(abs_val < min1){
                    min2 = min1;
                    min1 = abs_val;
                    minpos = j;
                    sign_minpos = signbit(val);
                }else if (abs_val < min2) {
                    min2 = abs_val;
                }
            }

            row_sign = row_sign ^ signbit(val);
        }

        // Apply the corresponding value and sign to out[][]
        for(int j = 0; j < VNODES; j++){
            if(j == size_vnode) break;

            float val = L_cache[i][j];

            if(non_zero_cache[i][j]){
                // sign is negative (-1.0f) if the final signbit (operation in parethesis) is 0, 
                // and positive (1.0f) if its 1
                float sign =  1.0f - 2.0f * (row_sign ^ signbit(val) ^ syndrome_cache[i]);

                // Assign min2 to minpos when loop ends to save if statements
                L_cache[i][j] = sign * min1;
            }
        }

        // Assigning min2 to minpos
        L_cache[i][minpos] = (1.0f - 2.0f * (row_sign ^ sign_minpos ^ syndrome_cache[i]).to_float()) * min2;
    }
    for(int i = 0; i < CHECK; i++){
       
        for(int j = 0; j < VNODES; j++){
            L[i][j] = L_cache[i][j];
           
        }
    }

    
}