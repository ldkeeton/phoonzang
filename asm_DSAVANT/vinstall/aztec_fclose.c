/* Aztec runtime routine: aztec_fclose
 * source: Manx Aztec C86 v340a putc.c (extracted function)
 * compiled with: Aztec C86 v52a (includes v340a)
 * recovered byte-exact by the C mux (lib/aztec/mux.py);
 * relocation bytes are supplied by the original image.
 */
/* Copyright (C) 1981,1982,1983,1984 by Manx Software Systems */
#include "stdio.h"

fclose(ptr)
register FILE *ptr;
{
	register int err;

	err = 0;
	if (!ptr)
		return -1;
	if ( ptr->_flags ) {
		if (ptr->_flags&_DIRTY)	/* if modifed flush buffer */
			err = flsh_(ptr,-1);
		err |= close(ptr->_unit);
		if (ptr->_flags&_ALLBUF)
			free(ptr->_buff);
		if (ptr->_flags&_TEMP) {	/* temp file, delete it */
			unlink(ptr->_tmpname);
			free(ptr->_tmpname);
		}
	}

	ptr->_buff = 
	ptr->_bend =  /* nothing in buffer */
	ptr->_bp = 0;
	ptr->_flags = 0;
	return err;
}

