/* Copyright (C) 1983 by Manx Software Systems */
/* Copyright (C) 1981,1982 by Manx Software Systems */
#include "stdio.h"

FILE Cbuffs[MAXSTREAM] = {
	{ 0, 0, 0, _BUSY, 0, 0, 1 },
	{ 0, 0, 0, _BUSY, 1, 0, 1 },
	{ 0, 0, 0, _BUSY, 2, 0, 1 },
	{ 0, 0, 0, _BUSY, 3, 0, 1 },
	{ 0, 0, 0, _BUSY, 4, 0, 1 },
};

FILE *
aztec_newstream()
{
	register FILE *fp;

	fp = Cbuffs;
	while (fp->_flags)
		if (++fp >= &Cbuffs[MAXSTREAM])
			return NULL;
	return fp;
}
