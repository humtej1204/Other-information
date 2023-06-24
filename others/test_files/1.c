#include <stdio.h>
#include <unistd.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdlib.h>

int _getline(char **buff, int *size, FILE *file)
{
        char l[1024];
        int n = 0, rd, fd, i = 0;

        if (file == stdin)
                fd = 0;
        else if (file == stdout)
                fd = 1;
        else if (file == stderr)
                fd = 2;
        else
                perror("NO FILE STREAM DETECTED");

	*size = 1024;
        rd = read(fd, l, *size);
        if (rd == -1)
                return(-1);

        while (l[n] != '\0')
        {
                n++;
        }

        while (i < n - 1)
        {
                buff[0][i] = l[i];
                i++;
        }
        return(n - 1);
}

int main(void)
{
        int gtl;
        char *buff;
        int s = 0;
    
    
        while(gtl != EOF) 
        {    
                write(1,":) ", 3);
                gtl = _getline(&buff, &s, stdin);
                if (gtl == -1)
                {
                        puts("Error.");
                }
                else
                {
                        printf("La línea es: %s\n", buff);
                        printf("%d\n", gtl);
                }
        }
        return (0);
}
