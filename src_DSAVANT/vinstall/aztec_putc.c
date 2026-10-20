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

static aztec_closall()		/* called by exit to close any open files */
{
	register FILE *fp;

	for ( fp = Cbuffs ; fp < Cbuffs+MAXSTREAM ; )
		aztec_fclose(fp++);
}

aztec_fclose(ptr)
register FILE *ptr;
{
	register int err;

	err = 0;
	if (!ptr)
		return -1;
	if ( ptr->_flags ) {
		if (ptr->_flags&_DIRTY)	/* if modifed flush buffer */
			err = aztec_flsh_(ptr,-1);
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

aztec_flsh_(ptr,data)
register FILE *ptr;
{
	register int size;
	extern int (*cls_)();

	cls_ = aztec_closall;
	if (ptr->_flags & _IOERR)
		return EOF;
	if (ptr->_flags & _DIRTY) {
		size = ptr->_bp - ptr->_buff;
		if (aztec_write(ptr->_unit, ptr->_buff, size) != size) {
ioerr:
			ptr->_flags |= _IOERR;
			ptr->_bend = ptr->_bp = NULL;
			return EOF;
		}
	}
	if (data == -1) {
		ptr->_flags &= ~_DIRTY;
		ptr->_bend = ptr->_bp = NULL;
		return 0;
	}
	if (ptr->_buff == NULL)
		aztec_getbuff(ptr);
	if (ptr->_buflen == 1) {	/* unbuffered I/O */
		if (aztec_write(ptr->_unit, &data, 1) != 1)
			goto ioerr;
		return data;
	}
	ptr->_bp = ptr->_buff;
	ptr->_bend = ptr->_buff + ptr->_buflen;
	ptr->_flags |= _DIRTY;
	return (*ptr->_bp++ = data) & 0xff;
}
