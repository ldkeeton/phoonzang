/* Copyright (C) Manx Software Systems. */
#include "stdio.h"

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
