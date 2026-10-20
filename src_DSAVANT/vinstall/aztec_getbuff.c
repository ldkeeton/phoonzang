/* auto-generated */
/* Copyright (C) 1983 by Manx Software Systems */
/* Copyright (C) 1981,1982 by Manx Software Systems */
#include "stdio.h"

FILE Cbuffs[MAXSTREAM] = {
	{ 0,0,0, _BUSY,0,0,1 },
	{ 0,0,0, _BUSY,1,0,1 },
	{ 0,0,0, _BUSY,2,0,1 },
	{ 0,0,0, _BUSY,3,0,1 },
	{ 0,0,0, _BUSY,4,0,1 },
};

FILE *
aztec_newstream()
{
	register FILE *fp;

	fp = Cbuffs;
	while (fp->_flags)
		if (++fp >= &Cbuffs[MAXSTREAM])
			return NULL;
	return fp;
}

aztec_getbuff(ptr)
register FILE *ptr;
{
	char *buffer, *aztec_malloc();

	if (aztec_isatty(ptr->_unit)) {
smlbuff:
		ptr->_buflen = 1;
		ptr->_buff = &ptr->_bytbuf;
		return;
	}
	if ((buffer = aztec_malloc(BUFSIZ)) == NULL)
		goto smlbuff;
	ptr->_buflen = BUFSIZ;
	ptr->_flags |= _ALLBUF;
	ptr->_buff = buffer;
	return;
}

