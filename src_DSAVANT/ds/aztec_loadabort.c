/* auto-generated */
/* Copyright (C) 1984 by Manx Software Systems */

#define OV_MAGIC 0xf2

struct ovrheader {			/* overlay header header */
	short o_magic;
	unsigned short o_corg;
	unsigned short o_csize;
	unsigned short o_dorg;
	unsigned short o_dsize;
	unsigned short o_bss;
	unsigned short o_entry;
};

static char *ovname;

#asm
	public	ovloader_
ovloader_ proc near
	mov	bx,sp
	mov	ax,word ptr 2[bx]
	mov	ovname_,ax
	call	_ovld_
	jmp	ax
ovloader_ endp
#endasm

static
_ovld()
{
	int fd, flag;
	register char *cp, *xp;
	auto struct ovrheader hdr;
	char *getenv(), path[64];
	extern char *_mbot, _Cend[], _Uend[];

#ifdef DOS20
	if ((cp = getenv("PATH")) == 0)
		cp = "";
	xp = path;
	for (;;) {
		strcpy(xp, ovname);
		strcat(path, ".ovr");
		if ((fd = open(path, 0)) != -1)
			break;
		do {
			if (*cp == 0)
				aztec_loadabort(10);
			xp = path;
			while (*cp) {
				if (*cp == ';') {
					++cp;
					break;
				}
				*xp++ = *cp++;
			}
			*xp = 0;
		} while (path[0] == 0);
	}

#else
	strcpy(path, ovname);
	strcat(path, ".ovr");
	if ((fd = open(path, 0)) == -1)
		aztec_loadabort(10);
#endif

	if (read(fd, &hdr, sizeof hdr) != sizeof hdr)
		aztec_loadabort(20);

	/* safety check overlay header */
	if (hdr.o_magic != OV_MAGIC)
		aztec_loadabort(30);
	if (_mbot < hdr.o_dorg+hdr.o_dsize+hdr.o_bss)
		aztec_loadabort(40);
	if (_Cend > hdr.o_corg || _Uend > hdr.o_dorg)
		aztec_loadabort(60);

	if (_csread(fd, hdr.o_corg, hdr.o_csize) < hdr.o_csize
			|| read(fd, hdr.o_dorg, hdr.o_dsize) < hdr.o_dsize)
		aztec_loadabort(50);
	close(fd);
	return hdr.o_entry;
}

static
aztec_loadabort(code)
{
	char buffer[80];

	aztec_sprintf(buffer, "Error %d loading overlay: %s$", code, ovname);
	aztec_bdos(9, buffer);
	aztec_exit(100);
}
