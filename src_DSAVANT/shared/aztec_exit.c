/* auto-generated */
/* Copyright (C) 1981,1982, 1983 by Manx Software Systems */
#include "errno.h"
#include "fcntl.h"

static char **Argv;
static int Argc;

noper()
{
	return 0;
}

int (*cls_)() = noper;
extern char _ioflg[];

#ifdef REDIR
#endif

aztec_exit(code)
{
	(*cls_)();
	aztec_impl_exit(code);
}

