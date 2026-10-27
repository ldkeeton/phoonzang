/* Copyright (C) Manx Software Systems. */
#include "errno.h"
#include "fcntl.h"
extern int errno;
extern char _ioflg[];

aztec_creat(name, mode)
char *name;
{
	return aztec_open(name, O_WRONLY|O_TRUNC|O_CREAT, mode);
}
