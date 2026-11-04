/* Restore screen areas and release the resources used by the current game. */
extern int saved_screen_pending, saved_screen_slot;
extern int party_char_count, game_state;
extern long base_screen_area, panel_area[], party_status_areas[];
extern restore_saved_screen(), call_restore_area(), free_current_maze();
extern free_picture_slot(), flush_keyboard();

release_main_screen()
{
	int area_index;

	if (saved_screen_pending) {
		/* Restore and release the pending saved-screen slot. */
		restore_saved_screen(saved_screen_slot, 1);
		saved_screen_pending = 0;
	}
	call_restore_area(base_screen_area, 1);
	party_char_count = 0;
	/* Restore each of the six panel areas and six party-status areas. */
	for (area_index = 0; area_index < 6; area_index++)
		call_restore_area(panel_area[area_index], 1);
	for (area_index = 0; area_index < 6; area_index++)
		call_restore_area(party_status_areas[area_index], 1);
	free_current_maze();
	/* Release the picture slots assigned to the game screen. */
	free_picture_slot(0);
	free_picture_slot(3);
	free_picture_slot(4);
	free_picture_slot(6);
	free_picture_slot(8);
	free_picture_slot(14);
	game_state = 2;
	flush_keyboard();
}
