#include "compute_check_to_value_msg.h"
#include <math.h>
#include <float.h>
#include <stdio.h>

int main() {
    float L[CHECK][VNODES];
    FILE *file = fopen("input.txt","r");
    if (file == NULL){
        perror("Error abriendo el archivo");
        return 1;
    }

    //leemos las columnas y filas
    int rows,cols;
    if (fscanf(file, "%d %d", &rows, &cols) != 2) {
        fprintf(stderr, "Error leyendo dimensiones\n");
        fclose(file);
        return 1;
    }

    //leemos la matriz L (beliefs iniciales)
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            if (fscanf(file, "%f", &L[i][j]) != 1) {
                fprintf(stderr, "Error leyendo valor en fila %d columna %d\n", i, j);
                fclose(file);
                return 1;
            }
        }
    }

    int syndrome[CHECK];
     // Leer el síndrome
    for (int j = 0; j < cols; j++) {
        if (fscanf(file, "%d", &syndrome[j]) != 1) {
            fprintf(stderr, "Error leyendo syndrome[%d]\n", j);
            fclose(file);
            return 1;
        }
    }
    float out[CHECK][VNODES];

    compute_check_to_value(L, syndrome, out, rows, cols);

    // Mostrar resultados
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            printf("%.6f ", out[i][j]);
        }
        printf("\n");
    }

    return 0;
}