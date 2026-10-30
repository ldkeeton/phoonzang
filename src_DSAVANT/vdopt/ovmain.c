/* Dispatch the overlay's spell menu or item menu from the game state. */
extern int saved_screen_pending, saved_screen_slot;
extern int pending_event, pending_event_hi, game_state;
extern int member_roster_index;
extern void restore_saved_screen();
extern void free_picture_slot();
extern void load_monster_picture();
extern void cast_spell_from_menu();
extern void use_item_menu();

ovmain()
{
	/* Restore the saved screen once it has been marked pending. */
	if (saved_screen_pending != 0) {
		restore_saved_screen(saved_screen_slot, 1);
		saved_screen_pending = 0;
	}
	pending_event = 0;
	pending_event_hi = 0;

	/* State 19 loads the spell scene, runs its menu, and releases pictures. */
	if (game_state == 19) {
		free_picture_slot(14);
		load_monster_picture(2, 1);
		load_monster_picture(3, 2);
		cast_spell_from_menu(member_roster_index);
		free_picture_slot(1);
		free_picture_slot(2);
		load_monster_picture(0, 14);
	}

	/* State 20 opens the member's item menu. */
	if (game_state == 20)
		use_item_menu(member_roster_index);

	game_state = 5;
	return 0;
}
