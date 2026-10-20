extern int saved_screen_kind[];
extern struct { char name[20]; } saved_screen_file[];
extern long saved_screen_ref[];

draw_restore_saved_screen(n, flag)
{
	int fd;

	if (saved_screen_kind[n] == 3) {
		if ((fd = aztec_open(saved_screen_file[n].name, 0)) == -1)
			fatal_error(24);
	} else
		fd = 0;
	gfx_restore_screen(saved_screen_ref[n], flag, fd);
	if (saved_screen_kind[n] == 3)
		aztec_close(fd);
	if (flag) {
		if (saved_screen_kind[n] == 3)
			aztec_unlink(saved_screen_file[n].name);
		saved_screen_kind[n] = -1;
	}
}
