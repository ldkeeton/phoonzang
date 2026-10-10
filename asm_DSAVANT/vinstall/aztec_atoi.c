/* Aztec runtime routine: aztec_atoi
 * source: Manx Aztec C86 v340a atoi.c
 * compiled with: Aztec C86 v52a (includes v340a)
 * recovered byte-exact by the C mux (lib/aztec/mux.py);
 * relocation bytes are supplied by the original image.
 */
/* Copyright (C) 1981,1982 by Manx Software Systems */
#include <ctype.h>

atoi(cp)
register char *cp;
{
	register unsigned i;
	register sign;

	while (*cp == ' ' || *cp == '\t')
		++cp;
	sign = 0;
	if ( *cp == '-' ) {
		sign = 1;
		++cp;
	} else if ( *cp == '+' )
		++cp;

	for ( i = 0 ; isdigit(*cp) ; )
		i = i*10 + *cp++ - '0';
	return sign ? -i : i;
}
