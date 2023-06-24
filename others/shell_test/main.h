#ifndef MYSHELL_H
#define MYSHELL_H

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <signal.h>
#include <stdarg.h>
#include <errno.h>

#define clear(void) write(STDOUT_FILENO, " \033[1;1H\033[2J", 12)

/* STATUS CODES - TODO */
#define BASE_STATUS 0
#define EXIT_STATUS -1
#define SYS_CMD_FOUND 2
#define SYS_CMD_NOTFOUND -2
#define FORK_FAILED -3
#define DIR_NOTFOUND -4

/* INPUT TYPE */
#define F_TERMINAL 0
#define F_NOT_TERMINAL 1

/* structures */
/**
 * struct command - command data structure
 * @env_list: envirorment variables
 * @path: parsed path from envi list
 * @input: command read by readline - raw
 * @cmd: array of string with parsed input > command
 * @full_cmd_path: path pre appending full name if neccesary
 * @status_code: code used to performe shell operations
 * @exit_code: used to signal exit action
 * @input_type: track if input comes from terminal or other source
 * @lines_counter: to display multiple errors if necessary
 * @flags: keep track of currents flags (pipe, exit, etc)
 * @size: current size of used buffer
 */
typedef struct command
{
	char **cmd;
	char **env_list;
	char **path;
	char *input;
	char *full_cmd_path;
	int status_code;
	int exit_code;
	int input_type;
	int lines_counter;
	int flags;
	ssize_t size;
} cmd;
/**
 * struct builtin_cmd - choose functions format
 *
 * @b_key: key is first token of parsed command
 * @b_function: pointer to builtin function
 *
 */
typedef struct builtin_cmd
{
	char *b_key;
	void (*b_function)(struct command *);
} b_cmd;


