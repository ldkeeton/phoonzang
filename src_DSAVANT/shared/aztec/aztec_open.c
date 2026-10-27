/* Copyright (C) Manx Software Systems. */
#include "errno.h"
#include "fcntl.h"
extern int errno;
extern char _ioflg[];

/* Opens a DOS file and initializes its runtime descriptor flags. */
aztec_open(name, flag, mode)
char *name;
{
	register int fd, m;

	m = 15616 | (flag&243);
	if ((flag&O_TRUNC) != 0)
		m = 15360;

	if ((fd = aztec_impl_sys(m, name, 0)) == -1) {
		if ((flag&O_CREAT) != 0)
			fd = aztec_impl_sys(60, name, 0);
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
