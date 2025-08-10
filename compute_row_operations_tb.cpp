#include <stdio.h>
#include "compute_row_operations.h"

int main() {
    float L[CHECK][VNODES];
    int aux[CHECK][VNODES];
    bit_t pcm[CHECK][VNODES];
    FILE *file = fopen("input_row_ops.txt","r");
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

    //leemos la pcm (beliefs iniciales)
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            if (fscanf(file, "%d", &aux[i][j]) != 1) {
                fprintf(stderr, "Error leyendo valor en fila %d columna %d\n", i, j);
                fclose(file);
                return 1;
            }
            pcm[i][j] = aux[i][j];
        }
    }


    bit_t syndrome[CHECK];
    int syndrome_read[CHECK];
     // Leer el síndrome
    for (int j = 0; j < rows; j++) {
        if (fscanf(file, "%d", &syndrome_read[j]) != 1) {
            fprintf(stderr, "Error leyendo syndrome[%d]\n", j);
            fclose(file);
            return 1;
        }
        syndrome[j] = syndrome_read[j];
    }
    compute_row_operations(L,pcm,
                            syndrome,rows, cols);

    // Mostrar resultados
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            printf("%.6f ", L[i][j]);
        }
        printf("\n");
    }

    return 0;
}