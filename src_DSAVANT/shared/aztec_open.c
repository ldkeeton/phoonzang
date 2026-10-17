/* auto-generated */
/* Copyright (C) 1982 1983 1984 by Manx Software Systems */
#include "errno.h"
#include "fcntl.h"

extern int errno;
extern char _ioflg[];

aztec_open(name, flag, mode)
char *name;
{
	register int fd, m;

	m = 0x3d00 | (flag&0x00f3);
	if ((flag&O_TRUNC) != 0)
		m = 0x3c00;

	if ((fd = aztec_impl_sys(m,name,0)) == -1) {
		if ((flag&O_CREAT) != 0)
			fd = aztec_impl_sys(0x3c,name,0);
	} else if ((flag&O_EXCL) != 0) {
		aztec_close(fd);
		errno = EEXIST;
		return -1;
	}
	if (fd >= 0) {
		if (flag&O_APPEND)
			(void)aztec_lseek(fd, 0L, 2);
		_ioflg[fd] = aztec_isatty(fd);	/* set flag for i/o routines */
	}
	return fd;
}
