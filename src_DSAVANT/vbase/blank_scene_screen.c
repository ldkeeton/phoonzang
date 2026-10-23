extern int scene_tick;

/* resets scene_tick to 1, fades out and blanks the 320x200 screen */
blank_scene_screen()
{
	scene_tick = 1;
	gfx_fade_out(0, 0, 0, 0);
	gfx_fill_area(0, 0, 319, 199, 0);	/* 0..319 x 0..199 */
	gfx_show_area(0, 0, 319, 199);
}
