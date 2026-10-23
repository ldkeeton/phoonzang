extern int intro_screen_number, copy_protection_result;
extern char adjacent_object_type[];
extern int startup_check_stage;
extern int game_state_arg, party_tag;
extern int party_status_frame_step, party_status_heading, party_status_frame_seen;
extern int maze_state, maze_variant, current_maze, game_state;
extern unsigned char picture_slot_number[], picture_slot_used[];

/* starts a game: asks the copy-protection question once, loads the game data,
   resets the party/maze state and shows the new-game intro screen */
begin_game(load_mode)
int load_mode;
{
	int load_result, slot;

	intro_screen_number = 0;
	if (startup_check_stage == 0) {
		copy_protection_prompt();
		if (!(copy_protection_result = verify_answer_word())) {
			load_result = -1;
		} else {
			ds_app_OIGN(0xc);	/* let the prompt's screen settle */
			load_result = load_game_data(load_mode);
		}
		startup_check_stage = 1;
	} else {
		load_result = load_game_data(load_mode);
	}
	if (load_result == -1) {
		gfx_show_area(0x36, 0x8e, 0x109, 0xc6);	/* copy-protection dialog area */
		return;
	}
	ensure_game_disk(0, game_state_arg);
	aztec_setmem(adjacent_object_type, 8, 0);	/* four per-direction object codes */
	party_status_frame_step = 0;
	party_status_heading = party_tag << 1;	/* two glyphs per heading */
	party_status_frame_seen = 0;
	for (slot = 0xf; slot < 0x12; slot++) {	/* the three party picture slots */
		picture_slot_number[slot] = 0xff;
		picture_slot_used[slot] = 0;
	}
	maze_state = 0;
	maze_variant = 0;
	current_maze = 0xffff;
	if (startup_check_stage != 2) {
		ds_app_string_MPHP();	/* verify the message-file checksum */
		startup_check_stage = 2;
	}
	if (intro_screen_number > 0)
		show_intro_screen(intro_screen_number);
	game_state = 6;		/* enter the maze overlay */
}
