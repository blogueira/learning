#include <stdio.h>
#include <stdlib.h>

int main(void)
{    
    int i, j;
    const int dimx = 800, dimy = 600;

    FILE *fp = fopen("second.ppm", "wb"); 
    fprintf(fp, "P6\n%d %d\n255\n", dimx, dimy);

    for (j = 0; j < dimy; ++j)
    {
        for (i = 0; i < dimx; ++i)
        {
            static unsigned char color[3];
            color[0] = i;  /* red */
            color[1] = j;  /* green */
            color[2] = i+j;  /* blue */
            fwrite(color, 1, 3, fp);//Escreve no arquivo a cor
        }
    }
    fclose(fp);//Salva o arquivo
    return EXIT_SUCCESS;
}
