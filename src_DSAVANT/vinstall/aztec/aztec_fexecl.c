/* Copyright (C) 1983, 1984 by Manx Software Systems */

/*
 * fexecl: run a program with a variable argument list.
 * The arguments following path are already laid out on the stack
 * as a NULL-terminated char * array, so their address is passed
 * straight to fexecv as its argv.
 */
aztec_fexecl(path, arg0)
char *path, *arg0;
{
	return aztec_fexecv(path, &arg0);
}
