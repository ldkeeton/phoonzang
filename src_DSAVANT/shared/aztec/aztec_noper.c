/* Copyright (C) 1981,1982, 1983 by Manx Software Systems */
#include "errno.h"
#include "fcntl.h"

static char **Argv;
static int Argc;

aztec_noper()
{
	return 0;
}

int (*cls_)() = aztec_noper;
extern char _ioflg[];

/* Builds argv from the command tail and invokes main. */
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

	Argv = (char **)aztec_sbrk((first+1)*sizeof(char *));
	Argv[0] = "";
	cpp = &Argv[Argc = first];
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
			Argc++;
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
	main(Argc, Argv);
	aztec_exit(0);
}

#ifdef REDIR
static redir_err(name)
char *name;
{
	char buff[200];

	strcpy(buff, "Can't open file for redirection: ");
	strcat(buff, name);
	strcat(buff, "\n");
	aztec_write(2, buff, strlen(buff));
	aztec_exit(10);
}
#endif

/* Runs the registered cleanup routine before terminating. */
aztec_exit(code)
{
	(*cls_)();
	aztec_impl_exit(code);
}
