/* Copyright (C) 1981,1982 by Manx Software Systems */

aztec_printf(fmt, args)
char *fmt; unsigned args;
{
	extern int aztec_putchar();

	aztec_format(aztec_putchar, fmt, &args);
}
