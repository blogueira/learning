#include <stdio.h>
#include <stdlib.h>

int main(void)
{    
    int i, j;
    const int dimx = 512, dimy = 512;

    FILE *fp = fopen("third.ppm", "wb"); 
    fprintf(fp, "P6\n%d %d\n255\n", dimx, dimy);

    for (j = 0; j < dimy; ++j)
    {
        for (i = 0; i < dimx; ++i)
        {
            static unsigned char color[3];
            color[0] = i*8;  /* red */
            color[1] = j*8;  /* green */
            color[2] = j+i;  /* blue */
            fwrite(color, 1, 3, fp);//Escreve no arquivo a cor
        }
    }
    fclose(fp);//Salva o arquivo
    return EXIT_SUCCESS;
}
