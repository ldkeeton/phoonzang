/* Screen file loading with optional immediate display. */
extern char *data_file_path();
extern int aztec_open(), aztec_close();
extern int gfx_wait_sound(), gfx_load_screen(), gfx_show_area();
extern int release_and_exit();

/* Load a screen file and optionally display the full screen. */
load_screen_file_immediate(filename, show_screen)
char *filename;
int show_screen;
{
	int screen_fd;

	gfx_wait_sound(0);
	if ((screen_fd = aztec_open(data_file_path(filename, 1), 0)) == -1)
		release_and_exit(28); /* Screen file open failure. */
	gfx_load_screen(screen_fd, 0);
	aztec_close(screen_fd);
	if (show_screen) { /* Reveal the loaded screen immediately. */
		gfx_show_area(0, 0, 319, 199); /* Full 320 by 200 screen. */
	}
}
