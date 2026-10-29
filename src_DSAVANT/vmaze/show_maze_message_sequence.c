/* Show consecutive maze messages inside the saved message area. */
extern long call_save_area();
extern int call_restore_area();
extern long saved_area_a;
extern int restore_area_a_draw_glyph();
extern int dissolve_or_show_area();
extern int load_message_string(), process_scene_message_words();
extern int message_not_found, maze_message_state, maze_message_row;
extern int maze_message_previous_x;
extern unsigned char maze_message_glyph_buffer[];
extern int flush_glyph_buffer(), wait_for_maze_input_or_refresh();

show_maze_message_sequence(message_number, wait_for_input)
int message_number, wait_for_input;
{
	char message_text[261];

	/* Save the message panel, then restore its text background. */
	maze_message_state = 0;
	/* These four coordinates bound the message panel rectangle. */
	saved_area_a = call_save_area(55, 146, 265, 198);
	restore_area_a_draw_glyph();
	maze_message_previous_x = 68;
	maze_message_row = 0;
	maze_message_glyph_buffer[0] = 0;
	/* Load message numbers until the loader reports a gap. */
	do {
		load_message_string(message_number, message_text);
		if (message_not_found == 0) {
			/* Process words only while the shared state is clear. */
			if (maze_message_state == 0)
				process_scene_message_words(message_text);
			message_number++;
		}
	} while (message_not_found == 0);
	/* Flush any glyph text left in the shared buffer. */
	if (maze_message_glyph_buffer[0] != 0)
		flush_glyph_buffer(maze_message_glyph_buffer);
	wait_for_maze_input_or_refresh(wait_for_input);
	call_restore_area(saved_area_a, 1);
	/* Reopen the same rectangle after restoring its saved pixels. */
	dissolve_or_show_area(55, 146, 265, 198);
}
