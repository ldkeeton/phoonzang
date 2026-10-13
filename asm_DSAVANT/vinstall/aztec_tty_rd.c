/* auto-generated */
/* Copyright (C) 1983, 1984 by Manx Software Systems */
#include "errno.h"

extern int errno;

char dseg_2532 = '\n';
int bss_2afc;			/* # of bytes remaining in tty buffer */

aztec_tty_rd(fd,buff,len)
char *buff;
{
	static char buffer[260], *bp;
	register int l;

	if ((l = bss_2afc) == 0) {
		if ((l = aztec_read(fd, buffer, 260)) != 0 && buffer[l-1]=='\n') {
			--l;
			buffer[l-1] = dseg_2532;
		}
		bp = buffer;
		bss_2afc = l;
	}
	if (l > len)
		l = len;
	if (l)
		aztec_movmem(bp, buff, l);
	bp += l;
	bss_2afc -= l;
	return l;
}

