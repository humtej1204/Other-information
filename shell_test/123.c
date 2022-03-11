#include <stdio.h>
#include <unistd.h>
int main(void)
{
	char cmd[] = "/usr/bin/ls";
	char *argVec[] = {"ls", NULL};
	char *envVec[] = {NULL};

	printf("start of execve call %s:\n", cmd);
	printf("=========================\n");
	if (execve(cmd, argVec, envVec) == -1)
	{
		perror("Could not execute execve");
	}
	printf("Oops, Something went wrong!\n");

	return (0);
}
