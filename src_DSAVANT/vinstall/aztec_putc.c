/* auto-generated */
/* Copyright (C) 1981,1982,1983,1984 by Manx Software Systems */
#include "stdio.h"

aztec_putc(c,ptr)
int c; register FILE *ptr;
{
	if (ptr->_bp >= ptr->_bend)
		return aztec_flsh_(ptr,c&0xff);
	return (*ptr->_bp++ = c) & 0xff;
}

