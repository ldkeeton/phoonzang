/* auto-generated */
/* Copyright (C) 1982 by Manx Software Systems */
static char *buff;

aztec_sprintf(str,fmt,args)
char *str, *fmt; unsigned args;
{
	int aztec_spsub();
	register int i;

	buff = str;
	i = aztec_format(aztec_spsub,fmt,&args);
	*buff = 0;
	return i;
}

