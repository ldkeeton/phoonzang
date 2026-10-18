/* auto-generated */
/* Copyright (C) 1982 by Manx Software Systems */
/* asm label names for identifiers the headers declare */
#define ctp_ dseg_2452
#include <ctype.h>

long
aztec_atol(cp)
register char *cp;
{
	long n;
	register sign;

	while (*cp == ' ' || *cp == '\t')
		++cp;
	sign = 0;
	if ( *cp == '-' ) {
		sign = 1;
		++cp;
	} else if ( *cp == '+' )
		++cp;

	for ( n = 0 ; isdigit(*cp) ; )
		n = n*10 + *cp++ - '0';
	return sign ? -n : n;
}
