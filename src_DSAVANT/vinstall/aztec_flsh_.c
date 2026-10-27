/* Copyright (C) Manx Software Systems. */
#include "stdio.h"

int aztec_closall();

aztec_flsh_(ptr, data)
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
	return (*ptr->_bp++ = data) & 255;
}
