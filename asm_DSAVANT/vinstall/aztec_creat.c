/* Aztec runtime routine: aztec_creat
 * source: Manx Aztec C86 v340a open.c (extracted function)
 * compiled with: Aztec C86 v52a (includes v340a)
 * recovered byte-exact by the C mux (lib/aztec/mux.py);
 * relocations are linked against asm labels (lib/aztec/relink.py);
 * the identifiers below are the asm label names.
 */
/* Copyright (C) 1982 1983 1984 by Manx Software Systems */
#include "errno.h"
#include "fcntl.h"

extern int errno;
extern char _ioflg[];

aztec_creat(name, mode)
char *name;
{
	return aztec_open(name, O_WRONLY|O_TRUNC|O_CREAT, mode);
}

