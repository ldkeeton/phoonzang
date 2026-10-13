/* Aztec runtime routine: aztec_open
 * source: Manx Aztec C86 v340a open.c (extracted function)
 * compiled with: Aztec C86 v52a (includes v340a)
 * recovered byte-exact by the C mux (lib/aztec/mux.py);
 * relocations are linked against asm labels (lib/aztec/relink.py);
 * the identifiers below are the asm label names.
 */
/* Copyright (C) 1982 1983 1984 by Manx Software Systems */
#include "errno.h"
#include "fcntl.h"

extern int dseg_24d6;
extern char dseg_251a[];

aztec_open(name, flag, mode)
char *name;
{
	register int fd, m;

	m = 0x3d00 | (flag&0x00f3);
	if ((flag&O_TRUNC) != 0)
		m = 0x3c00;

	if ((fd = aztec_sys(m,name,0)) == -1) {
		if ((flag&O_CREAT) != 0)
			fd = aztec_sys(0x3c,name,0);
	} else if ((flag&O_EXCL) != 0) {
		aztec_close(fd);
		dseg_24d6 = EEXIST;
		return -1;
	}
	if (fd >= 0) {
		if (flag&O_APPEND)
			(void)aztec_lseek(fd, 0L, 2);
		dseg_251a[fd] = aztec_isatty(fd);	/* set flag for i/o routines */
	}
	return fd;
}
