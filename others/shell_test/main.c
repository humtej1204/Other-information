#include "main.h"
/**
 * main - Entry Point for myShell
 * @argc: argument count
 * @argv: string of arguments
 * @envir: string of env variables
 * Return: 0 (on Success)
 */

char *get_cwd()
{
        char buff[512];
        char *cwd;
        int n = 0, i = 0;

        getcwd(buff, 512);
        while (buff[n] != '\0')
        {
                n++;
        }
        cwd = malloc(sizeof(char) * n);
        if (cwd == NULL)
                return (NULL);
        while (i < n)
        {
                cwd[i] = buff[i];
                i++;
        }
        return (cwd);
}

void *rd_ln()
{
	ssize_t bytes_leidos;
	size_t numero_bytes = 0;
	char *cadena = NULL;

	bytes_leidos = getline(&cadena, &numero_bytes, stdin);
	if (bytes_leidos == -1)
	{
		perror(We can't read the line);
		return(NULL);
	}

	 return(cadena);
}

void init_shell()
{
        char *cwd, *username;
	char *line, **args;
	int status;

        clear();
        username = getenv("USER");
        printf("**********************\n");
        printf("       MY SHELL       \n");
        printf("-USE AT YOUR OWN RISK-\n");
        printf("----------------------\n");
        printf("Welcome User %s\n", username);
        printf("**********************\n\n");

	/*
	 * Things to do to run a shell
	 *	read commands
	 *	parse commands
	 *	execute commands
	 */
	do
	{
		/* Print Prompt */
		write(1, username, strlen(username));
		write(1, ":", 1);
		write(1, "$", 1);

		/* Get line */
		line = rd_ln();

		args = parse(line);
		status = execute(args);

		/* Cleaning the memory */
		free(line);
		free(args);
	}while(status);
	
	/* write(1, username, strlen(username));
	write(1, ":", 1);
	cwd = get_cwd();
	if (cwd == NULL)
	{
	        perror("Current directory not found");
	        exit(-1);
	}
	write(1, cwd, strlen(cwd));
	free(cwd);
	write(1, "$", 1);*/
}

int main(int argc, char **argv)
{
	/* code */
	/* Load the configuration */

	/* Run shell in a loop */
	init_shell();

	/* Perform any shutdown cleanup */
	return (0);
}
