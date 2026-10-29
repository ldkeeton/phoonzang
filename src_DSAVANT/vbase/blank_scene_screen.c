/* resets scene_tick to 1, fades out and blanks the 320x200 screen */

extern int scene_tick;

blank_scene_screen()
{
	scene_tick = 1;
	call_fade_out(0, 0, 0, 0);
	call_fill_area(0, 0, 319, 199, 0);	/* 0..319 x 0..199 */
	call_show_area(0, 0, 319, 199);
}
