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

static char *bss_0cfa;

#asm
	public	ovloader_
ovloader_ proc near
	mov	bx,sp
	mov	ax,word ptr 2[bx]
	mov	bss_0cfa_,ax
	call	ds_loc_4386_
	jmp	ax
ovloader_ endp
#endasm

static
ds_loc_4386()
{
	int fd, flag;
	register char *cp, *xp;
	auto struct ovrheader hdr;
	char *getenv(), path[64];
	extern char *dseg_0c78, __zres_end[], __zdseg_end[];

#ifdef DOS20
	if ((cp = getenv("PATH")) == 0)
		cp = "";
	xp = path;
	for (;;) {
		aztec_strcpy(xp, bss_0cfa);
		ds_string_loc_VOPH(path, ".ovr");
		if ((fd = aztec_open(path, 0)) != -1)
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
	aztec_strcpy(path, bss_0cfa);
	ds_string_loc_VOPH(path, ".ovr");
	if ((fd = aztec_open(path, 0)) == -1)
		aztec_loadabort(10);
#endif

	if (ds_leaf_loc_JKTJ(fd, &hdr, sizeof hdr) != sizeof hdr)
		aztec_loadabort(20);

	/* safety check overlay header */
	if (hdr.o_magic != OV_MAGIC)
		aztec_loadabort(30);
	if (dseg_0c78 < hdr.o_dorg+hdr.o_dsize+hdr.o_bss)
		aztec_loadabort(40);
	if (__zres_end > hdr.o_corg || __zdseg_end > hdr.o_dorg)
		aztec_loadabort(60);

	if (aztec_csread(fd, hdr.o_corg, hdr.o_csize) < hdr.o_csize
			|| ds_leaf_loc_JKTJ(fd, hdr.o_dorg, hdr.o_dsize) < hdr.o_dsize)
		aztec_loadabort(50);
	aztec_close(fd);
	return hdr.o_entry;
}

static
aztec_loadabort(code)
{
	char buffer[80];

	ds_loc_44d4(buffer, "Error %d loading overlay: %s$", code, bss_0cfa);
	aztec_bdos(9, buffer);
	ds_loc_4f73(100);
}
