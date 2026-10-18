/* auto-generated */
/* Copyright (C) 1981,1982 by Manx Software Systems */
/* asm label names for identifiers the headers declare */
#define ctp_ dseg_2452
#include <ctype.h>

aztec_atoi(cp)
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
