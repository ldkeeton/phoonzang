/* Word-wrap one word of a maze message: run its leading control codes, then
   append it to the line. */
extern unsigned char maze_message_glyph_buffer[];
extern int maze_message_state, maze_message_row;
extern int message_delay, escape_key_hit, object_search_active;
extern int strpos(), flush_glyph_buffer();
extern int dissolve_or_show_area(), wait_ticks_or_key();
extern int restore_area_a_draw_glyph(), wait_for_maze_input_or_refresh();
extern int stop_and_clear_maze_sounds(), load_monster_picture();
extern int call_draw_text(), free_picture_slot(),
	load_maze_variant_resources();
extern int play_maze_sound_effect(), aztec_strcpy(), aztec_strcat();
extern int measure_text_width();
extern char maze_message_control_code_table[], maze_message_word_separator[];

process_maze_message_controls(message_text)
unsigned char *message_text;
{
	int text_width;
	int control_code;
	int sound_code;
	char text_buffer[128];
	char draw_text[10];

	/* Handle each control code before appending the remaining text. */
	for (;;) {
		control_code = strpos(maze_message_control_code_table, *message_text);
		/* A missing control-code character marks the text tail. */
		if (control_code < 0)
			goto append_text;
		switch (control_code) {
		case 0:
			message_text++;
			flush_glyph_buffer(maze_message_glyph_buffer);
			break;
		case 1:
			message_text++;
			flush_glyph_buffer(maze_message_glyph_buffer);
			if (maze_message_state == 0) {
				dissolve_or_show_area(55, 146, 265, 198);
				wait_ticks_or_key(message_delay);
				if (escape_key_hit != 0 &&
				    object_search_active == 0)
					maze_message_state = 1;
			}
			break;
		case 2:
			message_text++;
			flush_glyph_buffer(maze_message_glyph_buffer);
			if (maze_message_state == 0)
				dissolve_or_show_area(55, 146, 265, 198);
			break;
		case 3:
			message_text++;
			restore_area_a_draw_glyph();
			maze_message_row = 0;
			break;
		case 4:
			message_text++;
			flush_glyph_buffer(maze_message_glyph_buffer);
			wait_for_maze_input_or_refresh(0);
			break;
		case 5:
			message_text++;
			stop_and_clear_maze_sounds();
			load_monster_picture(10, 16);
			draw_text[0] = 1;
			draw_text[1] = 0;
			call_draw_text(16, 89, 146, 0, 319, 0, 199, 0,
				draw_text, 0, 0);
			free_picture_slot(16);
			load_maze_variant_resources();
			break;
		case 6:
			message_text++;
			sound_code = *message_text;
			/* Sound code 99 is remapped to 32. */
			if (sound_code == 99)
				sound_code = 32;
			play_maze_sound_effect(sound_code);
			message_text++;
			break;
		}
	}
append_text:
	if (maze_message_glyph_buffer[0] != 0) {
		aztec_strcpy(text_buffer, maze_message_glyph_buffer);
		aztec_strcat(text_buffer, maze_message_word_separator);
		aztec_strcat(text_buffer, message_text);
	} else
		aztec_strcpy(text_buffer, message_text);
	text_width = measure_text_width(text_buffer, 2);
	/* Past 184 px, flush the line and start the next one with this word. */
	if (text_width > 184) {
		flush_glyph_buffer(maze_message_glyph_buffer);
		aztec_strcpy(maze_message_glyph_buffer, message_text);
	} else
		aztec_strcpy(maze_message_glyph_buffer, text_buffer);
}
