/* One file the installer copies; vinstall/data/install_tables.c lists them. */
#ifndef INSTFILE_H
#define INSTFILE_H

struct install_file {
	int disk;		/* archive disk it comes from; -1 ends the list */
	char *name;		/* its file name */
	char *letters[3];	/* per disk format, letters of the archives
				   that hold it ("*" for every one) */
};

#endif
