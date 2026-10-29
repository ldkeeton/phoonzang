/* Release the saved game-screen areas, current maze, and picture slots. */
extern int saved_screen_pending, saved_screen_slot;
extern long base_screen_area, panel_area[], party_status_areas[];
extern restore_saved_screen(), call_restore_area(), free_current_maze(),
	free_picture_slot();

cleanup_game_screen()
{
	int slot;

	if (saved_screen_pending) {
		restore_saved_screen(saved_screen_slot, 1);
		saved_screen_pending = 0;
	}
	call_restore_area(base_screen_area, 1);
	/* Release the six member panels and six party-status areas. */
	slot = 0;
	do {
		call_restore_area(panel_area[slot], 1);
	} while (++slot < 6);
	slot = 0;
	do {
		call_restore_area(party_status_areas[slot], 1);
	} while (++slot < 6);
	free_current_maze();
	/* These are the picture slots owned by the game screen. */
	free_picture_slot(0);
	free_picture_slot(3);
	free_picture_slot(4);
	free_picture_slot(6);
	free_picture_slot(8);
	free_picture_slot(14);
}
