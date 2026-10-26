/* Screen file loading and optional display transitions. */
extern char *data_file_path();
extern int aztec_open(), aztec_close();
extern int gfx_wait_sound(), gfx_load_screen(), gfx_show_area(),
	gfx_reset_rgb(), gfx_fade_in(), release_and_exit();

/* Load a screen file and optionally reveal it immediately or with a fade. */
load_screen_file(filename, display_mode)
char *filename;
int display_mode;
{
	int screen_fd;

	gfx_wait_sound(0);
	if ((screen_fd = aztec_open(data_file_path(filename, 1), 0)) == -1)
		release_and_exit(14); /* Screen file open failure. */
	gfx_load_screen(screen_fd, 0);
	aztec_close(screen_fd);
	if (display_mode == 1) { /* Reveal the loaded screen immediately. */
		gfx_show_area(0, 0, 319, 199); /* Full 320 by 200 screen. */
	} else if (display_mode == 2) { /* Reveal from a black palette. */
		gfx_reset_rgb(0, 0, 0);
		gfx_show_area(0, 0, 319, 199);
		gfx_fade_in(0);
	}
}
