/* Wait for the requested ticks, while polling input and maze refreshes. */
extern long far *tick_counter_ptr;
extern int flush_keyboard();
extern int poll_fullscreen_hotspot();
extern int advance_party_redraw_frame();
extern int update_maze_refresh_timer();

wait_ticks_or_key(ticks)
int ticks;
{
	long deadline;
	/* Preserve the original six-byte frame; this extra word is unused. */
	int frame_padding;

	flush_keyboard();
	deadline = *tick_counter_ptr + ticks;
	/* Keep servicing input and refresh work until the tick deadline. */
	while (*tick_counter_ptr < deadline) {
		/* Return immediately when a full-screen hotspot is hit. */
		if (poll_fullscreen_hotspot())
			return;
		/* Invert the redraw result to request waiting when no frame advanced. */
		update_maze_refresh_timer(~advance_party_redraw_frame());
	}
}
