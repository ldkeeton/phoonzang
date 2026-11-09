/* Show the finished scene-message page, wait for a click or key, then
 * restore the roster screen and start a new page. */
extern long roster_screen;
extern int scene_message_line_index;
extern int call_show_area(), flush_keyboard(), poll_fullscreen_hotspot();
extern int call_restore_screen();

wait_for_scene_message_page()
{
	call_show_area(1, 112, 171, 187);
	flush_keyboard();
	while (poll_fullscreen_hotspot() == 0)
		;
	call_restore_screen(roster_screen, 0, 0);
	scene_message_line_index = 0;
}
