/* Show the disk error message, wait for input, then restore the full
   screen. */
extern int call_show_area();
extern int draw_message_box();
extern int flush_keyboard();
extern int play_sound_effect();
extern int wait_for_hotspot_timeout();

show_load_disk_error(error_text)
char *error_text;
{
	/* Clear the full 320 by 200 display before drawing the error box. */
	call_show_area(0, 0, 319, 199);
	draw_message_box(error_text, 3, 97, 36, 18, 13, 26);
	flush_keyboard();
	play_sound_effect(0);
	wait_for_hotspot_timeout(40);
	/* Show the full screen again after the wait. */
	call_show_area(0, 0, 319, 199);
}
