/* Wait for a scene input event or until the requested tick deadline. */
extern long far *tick_counter_ptr;
extern void flush_keyboard();
extern int poll_fullscreen_hotspot();
extern int refresh_scene_frame_if_active();

wait_for_scene_input_or_timeout(timeout_ticks)
int timeout_ticks;
{
	long deadline;

	/* Start the timeout from the current 32-bit timer count. */
	flush_keyboard();
	deadline = *tick_counter_ptr + timeout_ticks;

	/* Poll input and refresh the scene while the deadline is in the future. */
	while (*tick_counter_ptr < deadline) {
		if (poll_fullscreen_hotspot())
			return;
		refresh_scene_frame_if_active();
	}
}
