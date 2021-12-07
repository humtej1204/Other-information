#include <stdio.h>
#include <stdlib.h>
#include <dirent.h>
#include <string.h>
#include <errno.h>
#include <sys/stat.h>
/*Funcion que imprime todas las carpetas y subcarpetas especificadas*/
void traverse(char *fn)
{
	DIR *dir;
	struct dirent *entry;
	char path[150];
	struct stat info;

	printf("%s\n", fn);
	
	dir = opendir(fn);
	if (dir == NULL)
		printf("Error\n");
	else
	{
		while ((entry = readdir(dir)) != NULL)
		{
			if ((entry->d_name[0]) != '.')
			{
				strcpy(path, fn);
				strcat(path, "/");
				strcat(path, (entry->d_name));
				if (stat(path, &info) != 0)
					printf("Error\n");
				else if (S_ISDIR(info.st_mode))
					traverse(path);
			}
		}
		closedir(dir);
	}
}

int main(int argc, char *argv[])
{
	if (argc != 2)
	{
		fprintf(stderr, "Usage: ./program directory_name\n");
		exit(EXIT_FAILURE);
	}
	printf("Directory Structure\n");
	traverse(argv[1]);

	return (0);
}
