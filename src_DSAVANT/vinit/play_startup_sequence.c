/* Run the startup story, draw its message blocks, and restore the screen. */
extern int score_music_enabled(), load_score_files(), play_score_at_volume();
extern int call_fill_area(), call_show_area(), draw_transition_glyph();
extern int call_reset_rgb(), call_fade_in(), poll_escape_key();
extern int wait_ticks_or_escape(), show_glyph_frame();
extern int load_monster_picture(), free_picture_slot(), load_screen_file();
extern long call_cache_area();
extern int call_restore_screen(), load_message_string();
extern int message_not_found, story_escape_state;
extern int story_music_enabled, story_score_number, story_score_volume;
extern int level_up_score_number, startup_hardware_flags;
extern unsigned char startup_aux_option_b;
extern int mouse_active, hotspot_hit, game_state;
extern unsigned char picture_slot_number[], picture_slot_used[];
extern int call_set_text_pos(), call_set_text_color(), draw_text_glyphs();
extern int measure_text_width(), aztec_strlen(), call_dissolve_area();
extern int call_is_music_playing(), fade_out_music(), free_loaded_score();
extern int poll_fullscreen_hotspot(), flush_keyboard(), call_fade_out();
extern int call_wait_sound(), call_mouse_init();
extern char startup_title_one_filename[],
	startup_title_two_filename[];

play_startup_sequence()
{
	int message_line_count, message_line, local_alignment_word, slot_index;
	long saved_area;
	char message_buffer[80];
	char *message_cursor;
	int message_number, message_token, text_x;
	int previous_line_count, text_mode;

	/* Load the story score when music is enabled. */
	if (story_music_enabled = score_music_enabled()) {
		load_score_files(0, 0);
		story_score_number = level_up_score_number;
	}
	/* Mark the eighteen picture slots empty and unused. */
	for (slot_index = 0; slot_index < 18; slot_index++) {
		picture_slot_number[slot_index] = 255;
		picture_slot_used[slot_index] = 0;
	}
	/* Use picture slot 15 for the first transition image. */
	load_monster_picture(60, 15);
	/* Clear and reveal the full 320 by 200 display. */
	call_fill_area(0, 0, 319, 199, 0);
	draw_transition_glyph(1, 0);
	call_reset_rgb(0, 0, 0);
	call_show_area(0, 0, 319, 199);
	call_fade_in(0);
	story_escape_state = 0;
	if (!poll_escape_key()) {
		if (story_music_enabled) {
			story_score_volume = play_score_at_volume(0, story_score_number, 0);
		}
		wait_ticks_or_escape(180);
	}
	/* Each key poll gates one successive frame of up to three glyphs. */
	if (!poll_escape_key()) show_glyph_frame(2, 3, 0, 10);
	if (!poll_escape_key()) show_glyph_frame(4, 5, 0, 10);
	if (!poll_escape_key()) show_glyph_frame(6, 7, 0, 10);
	if (!poll_escape_key()) show_glyph_frame(8, 9, 10, 10);
	if (!poll_escape_key()) show_glyph_frame(11, 12, 13, 10);
	if (!poll_escape_key()) show_glyph_frame(14, 15, 0, 10);
	if (!poll_escape_key()) show_glyph_frame(16, 17, 0, 0);
	free_picture_slot(15);
	if (!poll_escape_key()) {
		load_monster_picture(61, 15);
		wait_ticks_or_escape(152);
		if (!poll_escape_key()) show_glyph_frame(1, 2, 3, 10);
		if (!poll_escape_key()) show_glyph_frame(4, 5, 6, 10);
		if (!poll_escape_key()) show_glyph_frame(7, 8, 0, 0);
		wait_ticks_or_escape(144);
		if (!poll_escape_key()) show_glyph_frame(9, 10, 11, 10);
		if (!poll_escape_key()) show_glyph_frame(12, 13, 14, 10);
		if (!poll_escape_key()) show_glyph_frame(15, 16, 17, 0);
		wait_ticks_or_escape(5);
		free_picture_slot(15);
	}
	/* Draw the second transition set while the next picture is visible. */
	if (!poll_escape_key()) {
		load_monster_picture(62, 15);
		if (!poll_escape_key()) call_fill_area(0, 0, 319, 199, 0);
		if (!poll_escape_key()) draw_transition_glyph(1, 0);
		if (!poll_escape_key()) draw_transition_glyph(2, 0);
		if (!poll_escape_key()) draw_transition_glyph(3, 0);
		if (!poll_escape_key()) draw_transition_glyph(4, 0);
		if (!poll_escape_key()) call_show_area(0, 0, 319, 199);
		wait_ticks_or_escape(5);
		free_picture_slot(15);
	}
	if (!poll_escape_key()) {
		load_screen_file(startup_title_one_filename, 1);
		wait_ticks_or_escape(5);
	}
	load_screen_file(startup_title_two_filename, 0);
	load_monster_picture(63, 15);
	if (!poll_escape_key()) {
		call_show_area(0, 0, 319, 199);
		wait_ticks_or_escape(12);
		saved_area = call_cache_area(55, 0, 272, 98, 2, 0);
		/* Draw each message block over the cached story panel. */
		for (message_line_count = 95; message_line_count >= 0;
		     message_line_count -= 5) {
			call_restore_screen(saved_area, 0, 0);
			draw_transition_glyph(1, message_line_count);
			call_show_area(55, 9, 272, 98);
		}
		call_restore_screen(saved_area, 1, 0);
	}
	else {
		draw_transition_glyph(1, 0);
		call_show_area(0, 0, 319, 199);
	}
	free_picture_slot(15);
	/* Begin with message 0x0b54, or 0x0b69 when the story was skipped with
	   Escape. */
	saved_area = call_cache_area(0, 102, 319, 162, 2, 0);
	poll_escape_key();
	message_number = story_escape_state ? 2921 : 2900;
	load_message_string(message_number, message_buffer);
	message_cursor = message_buffer;
	message_line_count = 0;
	/* Read each block's line count, then draw its encoded lines. */
	do {
		previous_line_count = message_line_count;
		message_line_count = (unsigned char)*message_cursor;
		message_cursor++;
		for (message_line = 0; message_line < message_line_count;
		     message_line++) {
			message_token = (unsigned char)*message_cursor;
			message_cursor++;
			if (message_token == 2) {
				/* Token 2 draws a centered line with a four-sided outline. */
				text_x = 160 - (measure_text_width(message_cursor, 2) + 1) / 2;
				call_set_text_pos(text_x - 1, 102 + 12 * message_line);
				call_set_text_color(12, 0);
				draw_text_glyphs(message_cursor, 2);
				call_set_text_pos(text_x + 1, 102 + 12 * message_line);
				call_set_text_color(12, 0);
				draw_text_glyphs(message_cursor, 2);
				call_set_text_pos(text_x, 103 + 12 * message_line);
				call_set_text_color(12, 0);
				draw_text_glyphs(message_cursor, 2);
				call_set_text_pos(text_x, 101 + 12 * message_line);
				call_set_text_color(12, 0);
				draw_text_glyphs(message_cursor, 2);
				call_set_text_pos(text_x, 102 + 12 * message_line);
				call_set_text_color(1, 0);
				draw_text_glyphs(message_cursor, 2);
			}
			else {
				/* Token 3 uses six-pixel character spacing; other tokens use measured
				   width. */
				if (message_token == 3) {
					text_x = 160 - (aztec_strlen(message_cursor) * 6) / 2;
					text_mode = 0;
				}
				else {
					text_x = 160 - (measure_text_width(message_cursor, 2) + 1) / 2;
					text_mode = 2;
				}
				call_set_text_pos(text_x - 1, 102 + 12 * message_line);
				call_set_text_color(message_token == 1 ? 34 : 0, 0);
				draw_text_glyphs(message_cursor, text_mode);
				call_set_text_pos(text_x + 1, 102 + 12 * message_line);
				call_set_text_color(message_token == 1 ? 34 : 0, 0);
				draw_text_glyphs(message_cursor, text_mode);
				call_set_text_pos(text_x, 103 + 12 * message_line);
				call_set_text_color(message_token == 1 ? 34 : 0, 0);
				draw_text_glyphs(message_cursor, text_mode);
				call_set_text_pos(text_x, 101 + 12 * message_line);
				call_set_text_color(message_token == 1 ? 34 : 0, 0);
				draw_text_glyphs(message_cursor, text_mode);
				call_set_text_pos(text_x, 102 + 12 * message_line);
				call_set_text_color(message_token == 1 ? 22 : 85, 0);
				draw_text_glyphs(message_cursor, text_mode);
			}
			message_number++;
			load_message_string(message_number, message_buffer);
			message_cursor = message_buffer;
		}
		/* Dissolve only through the lines shared with the next block. */
		call_dissolve_area(50, 102, 269,
			102 + (message_line_count > previous_line_count ?
				12 * message_line_count :
				12 * previous_line_count), 0);
		wait_ticks_or_escape(16);
		call_restore_screen(saved_area, 0, 0);
		if (poll_escape_key() && message_number < 2921) {
			message_number = 2921;
			load_message_string(message_number, message_buffer);
			message_cursor = message_buffer;
		}
	} while (!message_not_found);
	if (poll_escape_key()) story_escape_state = -1;
	wait_ticks_or_escape(50);
	call_restore_screen(saved_area, 1, 0);
	if (story_music_enabled) {
		if (!story_escape_state) {
			while (call_is_music_playing()) ;
		}
		fade_out_music(story_score_number, story_score_volume);
		free_loaded_score(0);
	}
	else {
		while (!poll_fullscreen_hotspot()) ;
	}
	flush_keyboard();
	call_fade_out(0, 0, 0, 0);
	call_fill_area(0, 0, 319, 199, 0);
	call_show_area(0, 0, 319, 199);
	call_wait_sound(1);
	/* Initialize the mouse when the hardware flag and option are both set. */
	if ((startup_hardware_flags & 4096) && startup_aux_option_b == 1) {
		call_mouse_init();
		mouse_active = 1;
	}
	else mouse_active = 0;
	hotspot_hit = 0;
	game_state = 2;
}
