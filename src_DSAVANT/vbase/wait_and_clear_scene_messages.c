/* Wait for input or a scene-message timeout, then clear the message area. */
extern long far *tick_counter_ptr;
extern int scene_message_row;
extern int dissolve_scene_message_area();
extern int poll_fullscreen_hotspot();
extern int refresh_scene_frame_if_active();
extern int clear_scene_message_area();

wait_and_clear_scene_messages()
{
	long deadline;

	dissolve_scene_message_area();
	/* The wait expires 270 timer ticks after the current count. */
	deadline = *tick_counter_ptr + 270L;
	/* Keep refreshing until input arrives or the timer reaches the deadline. */
	while (!poll_fullscreen_hotspot() && *tick_counter_ptr < deadline)
		refresh_scene_frame_if_active();
	clear_scene_message_area();
	scene_message_row = 0;
}
