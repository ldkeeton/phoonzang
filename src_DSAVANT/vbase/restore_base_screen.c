/* Restore saved screen areas, clear the party count, and enter state 4. */
extern int saved_screen_pending, saved_screen_slot;
extern long base_screen_area, panel_area[];
extern int dest_alt_arg, party_char_count, game_state;
extern int restore_saved_screen(), free_current_maze(), call_fill_area();
extern int call_restore_area(), play_story_sequence(), call_show_area();

restore_base_screen()
{
	int panel_index;

	/* Restore the saved screen only when its pending flag is set. */
	if (saved_screen_pending) {
		restore_saved_screen(saved_screen_slot, 1);
		saved_screen_pending = 0;
	}

	free_current_maze();
	/* Clear the base screen rectangle (0..319 by 0..199). */
	call_fill_area(72, 32, 247, 143, 0);
	call_restore_area(base_screen_area, 0);

	/* Restore the six saved party panel areas. */
	for (panel_index = 0; panel_index < 6; panel_index++)
		call_restore_area(panel_area[panel_index], 0);

	if (dest_alt_arg > 0)
		play_story_sequence(dest_alt_arg);

	call_show_area(0, 0, 319, 199);
	party_char_count = 0;
	game_state = 4;
}
