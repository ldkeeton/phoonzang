/* Advance the scene frame when the configured tick delay has elapsed. */
extern int scene_frame_delay_ticks, scene_frame;
extern long party_redraw_last_tick;
extern long far *tick_counter_ptr;

advance_scene_frame()
{
	if ((*tick_counter_ptr - party_redraw_last_tick) >= scene_frame_delay_ticks) {
		/* Cycle through the twelve scene frames and save the current tick. */
		scene_frame = (scene_frame + 1) % 12;
		party_redraw_last_tick = *tick_counter_ptr;
		return 1;
	}
	return 0;
}
