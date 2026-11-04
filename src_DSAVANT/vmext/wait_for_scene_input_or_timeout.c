/* Wait for scene input until the requested tick deadline. */
extern long far *tick_counter_ptr;
extern void flush_keyboard();
extern int poll_fullscreen_hotspot();
extern int advance_party_redraw_frame();
extern void roll_random_then_wait_10_ms();

wait_for_scene_input_or_timeout(timeout_ticks)
int timeout_ticks;
{
	long deadline;

	/* Start the timeout from the current 32-bit timer count. */
	flush_keyboard();
	deadline = *tick_counter_ptr + timeout_ticks;

	/* Poll input and service redraw timing while the deadline is ahead. */
	while (*tick_counter_ptr < deadline) {
		if (poll_fullscreen_hotspot())
			return;
		/* Delay only when the redraw routine reports no new frame. */
		if (!advance_party_redraw_frame())
			roll_random_then_wait_10_ms();
	}
}
