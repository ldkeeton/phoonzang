/* Show the level-up sequence and process each party member's levels. */
extern int party_return_state;
extern int game_state;
extern int banner_offset;
extern int banner_plain_flag;
extern int banner_animation_frame;
extern int level_up_transition_state;
extern int party_char_count;
extern int item_page_drawn;
extern int item_page_alt_mode;
extern int item_page;
extern int story_music_enabled;
extern int level_up_score_number;
extern int story_score_number;
extern int story_score_volume;
extern char level_up_screen_file[];
extern long member_screen_cache_low;
extern long member_detail_cache_low;
extern long roster_screen_b;
extern long ac_screen_a_handle_low;
extern long ac_screen_b_handle_low;
extern long realm_panel_cache_high;
extern long saved_screen;
extern int member_screen_cache_high;
extern int member_detail_cache_high;
extern int roster_screen_a;
extern int ac_screen_a_handle_high;
extern int ac_screen_b_handle_high;
extern int realm_panel_cache_low;
extern int saved_screen_hi;
extern int check_or_apply_level_ups();
extern int free_current_maze();
extern int load_monster_picture();
extern int load_screen_file_immediate();
extern int score_music_enabled();
extern int load_score_files();
extern int play_score_at_volume();
extern int fade_out_music();
extern int free_loaded_score();
extern int free_picture_slot();
extern int call_restore_screen();
extern int draw_party_glyph_row();
extern int call_show_area();
extern long call_cache_area();

show_level_up_sequence()
{
	int member_index, any_levels, frame_word_a, frame_word_b;
	long transition_screen;
	party_return_state = 5;
	game_state = 5;
	banner_offset = 20;
	banner_plain_flag = 0;
	banner_animation_frame = 0;
	level_up_transition_state = -1;
	any_levels = 0;
	member_index = 0;
	for (; member_index < party_char_count; member_index++)
		any_levels |= check_or_apply_level_ups(member_index, 0);
	if (!any_levels)
		return;
	free_current_maze();
	load_monster_picture(2, 1);
	load_monster_picture(3, 2);
	transition_screen = call_cache_area(0, 0, 319, 199, 2, 0);
	load_screen_file_immediate(level_up_screen_file, 0);
	member_screen_cache_low = call_cache_area(6, 6, 162, 103, 2, 0);
	member_detail_cache_low = call_cache_area(228, 6, 310, 22, 2, 0);
	roster_screen_b = call_cache_area(1, 112, 171, 187, 2, 0);
	ac_screen_a_handle_low = call_cache_area(220, 30, 319, 35, 2, 0);
	ac_screen_b_handle_low = call_cache_area(276, 46, 310, 116, 2, 0);
	realm_panel_cache_high = call_cache_area(184, 126, 319, 191, 2, 0);
	saved_screen = call_cache_area(90, 25, 101, 65, 2, 0);
	load_monster_picture(11, 15);
	if ((story_music_enabled = score_music_enabled())) {
		load_score_files(0, 0);
		story_score_number = level_up_score_number;
		story_score_volume = play_score_at_volume(0, story_score_number, 1);
	}
	item_page_drawn = 0;
	item_page_alt_mode = 0;
	item_page = 0;
	for (member_index = 0; member_index < party_char_count; member_index++)
		check_or_apply_level_ups(member_index, 1);
	if (story_music_enabled) {
		fade_out_music(story_score_number, story_score_volume);
		free_loaded_score(0);
	}
	free_picture_slot(15);
	call_restore_screen(((int *)&saved_screen)[0], ((int *)&saved_screen)[1], 1,
		0);
	call_restore_screen(((int *)&realm_panel_cache_high)[0],
		((int *)&realm_panel_cache_high)[1], 1, 0);
	call_restore_screen(((int *)&ac_screen_b_handle_low)[0],
		((int *)&ac_screen_b_handle_low)[1], 1, 0);
	call_restore_screen(((int *)&ac_screen_a_handle_low)[0],
		((int *)&ac_screen_a_handle_low)[1], 1, 0);
	call_restore_screen(((int *)&roster_screen_b)[0],
		((int *)&roster_screen_b)[1], 1, 0);
	call_restore_screen(((int *)&member_detail_cache_low)[0],
		((int *)&member_detail_cache_low)[1], 1, 0);
	call_restore_screen(((int *)&member_screen_cache_low)[0],
		((int *)&member_screen_cache_low)[1], 1, 0);
	call_restore_screen(transition_screen, 1, 0);
	free_picture_slot(1);
	free_picture_slot(2);
	draw_party_glyph_row();
	call_show_area(0, 0, 319, 199);
}
