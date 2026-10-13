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
			leaf_loc_3829(fd, buff, cp-buff);
			leaf_loc_3829(fd, &crbuf, 1);
			buff = cp;
		}
	}
	if (cp != buff)
		leaf_loc_3829(fd, buff, cp-buff);
	return len;
}
