/* Aztec runtime routine: aztec_open
 * source: Manx Aztec C86 v340a open.c (extracted function)
 * compiled with: Aztec C86 v52a (includes v340a)
 * recovered byte-exact by the C mux (lib/aztec/mux.py);
 * relocation bytes are supplied by the original image.
 */
/* Copyright (C) 1982 1983 1984 by Manx Software Systems */
#include "errno.h"
#include "fcntl.h"

extern int errno;
extern char _ioflg[];

open(name, flag, mode)
char *name;
{
	register int fd, m;

	//m = 0x3d00 | (flag&0x00f3);
	m = 0x4c00 | (flag&0x00f3);
	if ((flag&O_TRUNC) != 0)
		m = 0x3c00;

	if ((fd = _sys(m,name,0)) == -1) {
		if ((flag&O_CREAT) != 0)
			fd = _sys(0x3c,name,0);
	} else if ((flag&O_EXCL) != 0) {
		close(fd);
		errno = EEXIST;
		return -1;
	}
	if (fd >= 0) {
		if (flag&O_APPEND)
			(void)lseek(fd, 0L, 2);
		_ioflg[fd] = isatty(fd);	/* set flag for i/o routines */
	}
	return fd;
}
