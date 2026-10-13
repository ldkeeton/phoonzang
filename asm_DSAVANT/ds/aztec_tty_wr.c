/* auto-generated */
/* Copyright (C) 1983, 1984 by Manx Software Systems */
#include "errno.h"

extern int errno;

char _Eol = '\n';
int _TTrem;			/* # of bytes remaining in tty buffer */

aztec_tty_wr(fd, buff, len)
char *buff;
{
	register int count;
	register char *cp;
	static char crbuf = '\r';

	cp = buff;
	for (count = len ; count-- ; ) {
		if (*cp++ == '\n') {
			ds_leaf_loc_4fac(fd, buff, cp-buff);
			ds_leaf_loc_4fac(fd, &crbuf, 1);
			buff = cp;
		}
	}
	if (cp != buff)
		ds_leaf_loc_4fac(fd, buff, cp-buff);
	return len;
}
