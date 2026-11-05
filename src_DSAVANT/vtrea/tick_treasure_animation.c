/* Advance the treasure screen animation after the redraw interval. */
extern long far *tick_counter_ptr;
extern long party_redraw_last_tick;
extern int party_redraw_interval;
extern int screen_cache_index, party_status_frame, animation_frame;
extern int animation_index;
extern int update_treasure_frame();

/* Tick the treasure animation and refresh its cached screen when due. */
tick_treasure_animation()
{
	if ((*tick_counter_ptr - party_redraw_last_tick) >=
		party_redraw_interval) {
		screen_cache_index = (screen_cache_index + 1) % 2;
		party_status_frame = (party_status_frame + 1) % 2;
		animation_frame = (animation_frame + 1) % 3;
		if (animation_index >= 0)
			animation_index++;
		party_redraw_last_tick = *tick_counter_ptr;
		update_treasure_frame();
		return 1;
	}
	return 0;
}
