/* Copyright (C) Manx Software Systems. */
#include "stdio.h"

aztec_closall()		/* called by exit to close any open files */
{
	register FILE *fp;

	for ( fp = Cbuffs ; fp < Cbuffs+MAXSTREAM ; )
		aztec_fclose(fp++);
}
