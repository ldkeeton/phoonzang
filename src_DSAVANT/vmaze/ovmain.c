/* Initialize the maze overlay and draw/cache the first-person view. */
extern long far *tick_counter_ptr;
extern int capture_center_marker_mode, party_redraw_interval;
extern long party_redraw_last_tick;
extern int maze_sound_slot_e, maze_sound_slot_f, maze_sound_pair_state;
extern long maze_refresh_deadline;
extern int game_state, saved_screen_pending, saved_screen_slot;
extern int current_level, party_status_frame, screen_cache_index;
extern char maze_temp_filename[];
extern int clear_marker_string_frames(), restore_saved_screen();
extern int enter_level(), load_maze_resources(), stop_and_clear_maze_sounds();
extern int draw_first_person_maze_view(), save_screen_area();
extern int run_maze_loop();

ovmain()
{
	int frame_padding;

	capture_center_marker_mode = 0;
	/* Set the recurring redraw interval and snapshot the current tick. */
	party_redraw_interval = 5;
	party_redraw_last_tick = *tick_counter_ptr;
	maze_sound_slot_e = 0;
	maze_sound_slot_f = 0;
	maze_sound_pair_state = 0;
	/* Schedule the first refresh 36 ticks from the current time. */
	maze_refresh_deadline = *tick_counter_ptr + 36L;
	clear_marker_string_frames();
	/* Restore a saved screen left pending by the previous overlay pass. */
	if (saved_screen_pending != 0) {
		restore_saved_screen(saved_screen_slot, 1);
		saved_screen_pending = 0;
	}
	/* State 6 enters its requested level; state 5 reloads maze assets. */
	if (game_state == 6)
		enter_level(current_level);
	if (game_state == 5) {
		load_maze_resources();
		run_maze_loop();
	}
	stop_and_clear_maze_sounds();
	clear_marker_string_frames();
	/* These states skip drawing and caching the first-person view. */
	if (game_state != 30 && game_state != 27 && game_state != 24 &&
	    game_state != 17 && game_state != 19 && game_state != 20) {
		capture_center_marker_mode = 1;
		draw_first_person_maze_view();
		/* Save the current view rectangle for the next overlay pass. */
		saved_screen_slot = save_screen_area(72, 33, 247, 143, maze_temp_filename);
		saved_screen_pending = 1;
		/* Alternate between the two party status frames. */
		party_status_frame = (party_status_frame + 1) % 2;
		draw_first_person_maze_view();
		screen_cache_index = 1;
		capture_center_marker_mode = 0;
	}
	return 0;
}
