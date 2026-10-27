/* Copyright (C) Manx Software Systems. */
#include "stdio.h"

aztec_putc(c, ptr)
int c; register FILE *ptr;
{
	if (ptr->_bp >= ptr->_bend)
		return aztec_flsh_(ptr, c&255);
	return (*ptr->_bp++ = c) & 255;
}
