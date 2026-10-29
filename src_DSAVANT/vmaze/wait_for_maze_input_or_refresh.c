/* Show the maze message strip, wait for input or refresh, then restore it. */
extern int maze_message_state, escape_key_hit, object_search_active;
extern int dissolve_or_show_area();
extern int random_below();
extern long far *tick_counter_ptr;
extern long maze_refresh_deadline;
extern int message_delay;
extern char no_dissolve;
extern int wait_ticks_or_key();
extern int poll_fullscreen_hotspot();
extern int party_redraw_interval_elapsed();
extern int party_status_frame, hotspot_hit;
extern int redraw_maze_view();
extern int update_maze_refresh_timer();
extern int restore_area_a_draw_glyph();
extern int maze_message_row;

wait_for_maze_input_or_refresh(wait_for_message)
int wait_for_message;
{
	/* A pending message prevents another dissolve and refresh deadline. */
	if (maze_message_state != 0)
		return;

	/* Show the fixed message strip. */
	dissolve_or_show_area(55, 146, 265, 198);
	maze_refresh_deadline = *tick_counter_ptr + random_below(60) + 36L;

	if (wait_for_message != 0) {
		/* Skip the dissolve animation when the option is enabled. */
		wait_ticks_or_key(no_dissolve != 0 ? message_delay << 1 : message_delay);
	} else {
		/* Poll until input arrives, advancing the status frame on refreshes. */
		while (poll_fullscreen_hotspot() == 0) {
			if (party_redraw_interval_elapsed() != 0) {
				party_status_frame = (party_status_frame + 1) % 2;
				if (hotspot_hit == 0)
					redraw_maze_view();
			}
			update_maze_refresh_timer(0);
		}
	}

	/* Mark the strip only after Escape, and outside object search. */
	if (escape_key_hit != 0 && object_search_active == 0)
		maze_message_state = 1;

	restore_area_a_draw_glyph();
	maze_message_row = 0;
}
