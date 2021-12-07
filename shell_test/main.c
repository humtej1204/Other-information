#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<readline/readline.h>
#include<readline/history.h>

#define clear() printf("\033[H\033[J")

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

void init_shell()
{
        char *cwd;
        char *username;

        clear();
        username = getenv("USER");
        printf("**********************\n");
        printf("       MY SHELL       \n");
        printf("-USE AT YOUR OWN RISK-\n");
        printf("----------------------\n");
        printf("Welcome User %s\n", username);
        printf("**********************\n\n");

        write(1, username, strlen(username));
        write(1, ":", 1);
        cwd = get_cwd();
        if (cwd == NULL)
        {
                perror("Current directory not found");
                exit(-1);
        }
        write(1, cwd, strlen(cwd));
        free(cwd);
        write(1, "$", 1);
}

int main()
{
    /*char inputString[MAXCOM], *parsedArgs[MAXLIST];
    char* parsedArgsPiped[MAXLIST];
    int execFlag = 0;*/
    init_shell();
  
    /*while (1) {
        // print shell line
        printDir();
        // take input
        if (takeInput(inputString))
            continue;
        // process
        execFlag = processString(inputString,
        parsedArgs, parsedArgsPiped);
        // execflag returns zero if there is no command
        // or it is a builtin command,
        // 1 if it is a simple command
        // 2 if it is including a pipe.
  
        // execute
        if (execFlag == 1)
            execArgs(parsedArgs);
  
        if (execFlag == 2)
            execArgsPiped(parsedArgs, parsedArgsPiped);
    }*/
    return 0;
}
