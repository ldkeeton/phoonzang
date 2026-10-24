/* redraws saved screen n; kind 3 means it was spooled to a disk file.
   flag also releases the slot (deleting its file) after restoring */

extern int saved_screen_kind[];
extern struct {
	char name[20];
} saved_screen_file[];
extern long saved_screen_ref[];

restore_saved_screen(n, flag)
{
	int fd;

	if (saved_screen_kind[n] == 3) {
		if ((fd = aztec_open(saved_screen_file[n].name, 0)) == -1)
			release_and_exit(24);
	} else
		fd = 0;	/* in-memory save: driver ignores fd */
	gfx_restore_screen(saved_screen_ref[n], flag, fd);
	if (saved_screen_kind[n] == 3)
		aztec_close(fd);
	if (flag) {
		if (saved_screen_kind[n] == 3)
			aztec_unlink(saved_screen_file[n].name);
		saved_screen_kind[n] = -1;	/* slot free */
	}
}
