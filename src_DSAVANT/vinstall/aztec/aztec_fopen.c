/* Copyright (C) Manx Software Systems. */
#include "stdio.h"

FILE *
aztec_fopen(name, mode)
char *name, *mode;
{
	register FILE *fp;
	FILE *aztec_newstream(), *aztec_freopen();

	if ((fp = aztec_newstream()) == NULL)
		return NULL;
	return aztec_freopen(name, mode, fp);
}
