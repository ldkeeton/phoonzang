/* Initialize the main game screen, picture slots, and saved display areas. */
extern int call_set_text_opaque(), call_set_text_color(), call_set_text_pos();
extern int load_monster_picture(), relay_npc_id_address();
extern int load_screen_file();
extern long call_save_area();
extern int startup_check_stage, saved_screen_pending, maze_state;
extern int maze_variant, current_maze, message_block_current;
extern int party_char_count, npc_id, game_state;
extern unsigned char picture_slot_number[], picture_slot_used[];
extern long party_status_areas[], panel_area[];
extern long base_screen_area;
extern int member_roster_index[];
extern char startup_main_screen_filename[];

/* Initialize screen, picture, maze, and party state before the main screen. */
initialize_main_screen()
{
	int area_index, slot_index, area_x, area_y;

	call_set_text_opaque(0);
	call_set_text_color(1, 0);
	call_set_text_pos(0, 0);
	/* Mark all eighteen picture slots empty and unused. */
	for (slot_index = 0; slot_index < 18; slot_index++) {
		picture_slot_number[slot_index] = 255;
		picture_slot_used[slot_index] = 0;
	}
	saved_screen_pending = 0;
	maze_state = 0;
	maze_variant = 0;
	current_maze = -1;
	load_monster_picture(1, 0);
	load_monster_picture(4, 3);
	load_monster_picture(5, 4);
	load_monster_picture(7, 6);
	load_monster_picture(12, 8);
	load_monster_picture(0, 14);
	if (startup_check_stage == 0)
		relay_npc_id_address();
	load_screen_file(startup_main_screen_filename, 2);
	/* Save the six party status rectangles using their screen positions. */
	for (area_index = 0; area_index < 6; area_index++) {
		area_x = (area_index / 3) * 40 + area_index * 25 + 68;
		area_y = 6;
		party_status_areas[area_index] = call_save_area(area_x, area_y,
			area_x + 17, area_y + 14);
	}
	message_block_current = -1;
	party_char_count = 0;
	/* Save six panel rectangles, alternating their horizontal positions. */
	for (area_index = 0; area_index < 6; area_index++) {
		(member_roster_index + 1)[area_index] = -1;
		area_x = (area_index % 2) * 252 + 5;
		area_y = (area_index / 2) * 45 + 18;
		panel_area[area_index] = call_save_area(area_x, area_y,
			area_x + 59, area_y + 43);
	}
	base_screen_area = call_save_area(305, 185, 316, 196);
	npc_id = 0;
	game_state = 4;
}
