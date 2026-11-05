/* dissolve the treasure panel, then wait for input or animation to finish */
extern int message_delay, maze_message_row;
extern char no_dissolve;

extern int dissolve_or_show_area();
extern int wait_treasure_input_or_timeout();
extern int poll_fullscreen_hotspot();
extern int tick_treasure_animation();
extern int redraw_treasure_caption();

/* display the treasure area and wait according to the caller's mode */
show_treasure_area(show)
int show;
{
	dissolve_or_show_area(55, 146, 265, 198);
	if (show) {
		wait_treasure_input_or_timeout(no_dissolve ?
			message_delay << 1 : message_delay);
	} else {
		while (!poll_fullscreen_hotspot())
			tick_treasure_animation();
	}
	redraw_treasure_caption(0);
	maze_message_row = 0;
}
