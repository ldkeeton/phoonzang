/* auto-generated */
/* Copyright (C) 1981,1982, 1983 by Manx Software Systems */
#include "errno.h"
#include "fcntl.h"

static char **bss_0d06;
static int bss_0d04;

noper()
{
	return 0;
}

int (*cls_)() = noper;
extern char _ioflg[];

aztec_Croot(cp, first)
register char *cp;
{
	register char **cpp;
	char *aztec_sbrk();
#ifdef REDIR
	register int k;
	register char *fname;
#endif

	_ioflg[0] = aztec_isatty(0);	/* set flag for i/o routines */
	_ioflg[1] = aztec_isatty(1);	/* set flag for i/o routines */
	_ioflg[2] = aztec_isatty(2);	/* set flag for i/o routines */

	bss_0d06 = (char **)aztec_sbrk((first+1)*sizeof(char *));
	bss_0d06[0] = "";
	cpp = &bss_0d06[bss_0d04 = first];
	for (;;) {
		while (*cp == ' ' || *cp == '\t')
			++cp;
		if (*cp == 0)
			break;
#ifdef REDIR
		if (*cp == '>') {		/* redirect output */
			k = 1;
			goto redirect;
		} else if (*cp == '<') {	/* redirect input */
			k = 0;
redirect:
			while (*++cp == ' ' || *cp == '\t')
				;
			fname = cp;
			while (*++cp)
				if (*cp == ' ' || *cp == '\t') {
					*cp++ = 0;
					break;
				}
			close(k);
			if (k)
				k = creat(fname, 0666);
			else
				k = open(fname, O_RDONLY);
			if (k == -1)
				redir_err(fname);
		} else 
#endif
		{
			*cpp++ = cp;
			bss_0d04++;
			if (aztec_sbrk(sizeof(char *)) == (char *)-1) {
				aztec_write(2, "Too many args.", 14);
				aztec_impl_exit(200);
			}
			while (*++cp)
				if (*cp == ' ' || *cp == '\t') {
					*cp++ = 0;
					break;
				}
		}
	}
	*cpp = 0;
	main(bss_0d04,bss_0d06);
	aztec_exit(0);
}

