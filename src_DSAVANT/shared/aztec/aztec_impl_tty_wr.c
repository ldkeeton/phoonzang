/* Copyright (C) Manx Software Systems. */
#include "errno.h"

/* Writes terminal output, inserting a carriage return before each newline. */
aztec_impl_tty_wr(fd, buff, len)
char *buff;
{
	register int count;
	register char *cp;
	static char crbuf = '\r';

	cp = buff;
	for (count = len ; count-- ; ) {
		if (*cp++ == '\n') {
			aztec_impl_write(fd, buff, cp-buff);
			aztec_impl_write(fd, &crbuf, 1);
			buff = cp;
		}
	}
	if (cp != buff)
		aztec_impl_write(fd, buff, cp-buff);
	return len;
}
