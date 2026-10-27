/* Copyright (C) 1981,1982 by Manx Software Systems */
#include "stdio.h"

aztec_aputc(c, ptr)
register int c; register FILE *ptr;
{
	if (c == '\n')
		if (aztec_putc('\r', ptr) == EOF)
			return EOF;
	return aztec_putc(c, ptr);
}
