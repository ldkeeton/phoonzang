/* Copyright (C) Manx Software Systems. */
#include "stdio.h"

aztec_fclose(ptr)
register FILE *ptr;
{
	register int err;

	err = 0;
	if (!ptr)
		return -1;
	if ( ptr->_flags ) {
		if (ptr->_flags&_DIRTY)	/* if modifed flush buffer */
			err = aztec_flsh_(ptr, -1);
		err |= aztec_close(ptr->_unit);
		if (ptr->_flags&_ALLBUF)
			aztec_free(ptr->_buff);
		if (ptr->_flags&_TEMP) {	/* temp file, delete it */
			aztec_unlink(ptr->_tmpname);
			aztec_free(ptr->_tmpname);
		}
	}

	ptr->_buff =
	ptr->_bend =  /* nothing in buffer */
	ptr->_bp = 0;
	ptr->_flags = 0;
	return err;
}
