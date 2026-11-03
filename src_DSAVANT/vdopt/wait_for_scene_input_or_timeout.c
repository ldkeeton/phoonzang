/* Wait for scene input until the requested tick deadline. */
extern long far *tick_counter_ptr;
extern void flush_keyboard();
extern int poll_fullscreen_hotspot();
extern void wait_10_ms();

wait_for_scene_input_or_timeout(timeout_ticks)
int timeout_ticks;
{
	long deadline;

	flush_keyboard();
	deadline = *tick_counter_ptr + timeout_ticks;
	/* Keep polling while the current tick count is before the deadline. */
	while (*tick_counter_ptr < deadline) {
		/* A successful hotspot poll ends the wait immediately. */
		if (poll_fullscreen_hotspot())
			return;
		wait_10_ms();
	}
}
