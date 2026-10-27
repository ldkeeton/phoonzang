/* Copyright (C) 1981,1982 by Manx Software Systems */
#include "stdio.h"

#undef aztec_putchar

aztec_putchar(c)
{
	return aztec_aputc(c, stdout);
}
