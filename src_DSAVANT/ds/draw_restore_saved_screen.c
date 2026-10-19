extern int bss_5b72[];
extern struct { char name[20]; } bss_5b7c[];
extern long bss_5be0[];

draw_restore_saved_screen(n, flag)
{
	int fd;

	if (bss_5b72[n] == 3) {
		if ((fd = aztec_open(bss_5b7c[n].name, 0)) == -1)
			ds_app_UKIP(24);
	} else
		fd = 0;
	gfx_restore_screen(bss_5be0[n], flag, fd);
	if (bss_5b72[n] == 3)
		aztec_close(fd);
	if (flag) {
		if (bss_5b72[n] == 3)
			aztec_unlink(bss_5b7c[n].name);
		bss_5b72[n] = -1;
	}
}
