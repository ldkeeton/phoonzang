/* Initialize the main overlay state and dispatch pending party actions. */
extern int capture_center_marker_mode, party_redraw_interval;
extern long far *tick_counter_ptr;
extern long party_redraw_last_tick;
extern int marker_string_frames[];
extern int saved_screen_pending, saved_screen_slot, game_state,
	member_roster_index;
extern int restore_saved_screen(), load_maze_resources(), random_below();
extern int run_from_encounter(), drink_from_fountain(), pick_up_floor_item();
extern int swap_party_members();

/* Restore the display, run the requested action, and return to the main
   state. */
ovmain()
{
	int i;
	capture_center_marker_mode = 0;
	party_redraw_interval = 5;
	party_redraw_last_tick = *tick_counter_ptr;
	for (i = 0; i < 3; i++) marker_string_frames[i] = 0;
	if (saved_screen_pending) {
		restore_saved_screen(saved_screen_slot, 1);
		saved_screen_pending = 0;
	}
	if (game_state == 23) {
		load_maze_resources();
		run_from_encounter(random_below(10) + 4);
	}
	if (game_state == 27) drink_from_fountain();
	if (game_state == 30) pick_up_floor_item(member_roster_index);
	if (game_state == 31) swap_party_members(member_roster_index);
	game_state = 5;
	return 0;
}
