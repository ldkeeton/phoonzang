/* Display consecutive scene messages, then optionally wait before clearing. */
extern int scene_running, message_not_found;
extern int scene_message_previous_x, scene_message_row;
extern char scene_message_line_buffer[];
extern int clear_scene_message_area(), load_message_string(),
	process_scene_message_words();
extern int draw_scene_message_line(), wait_and_clear_scene_messages();

play_scene_message_sequence(message_number, wait_after_messages)
int message_number, wait_after_messages;
{
	char message_text[261]; /* Space reserved for each loaded message. */

	clear_scene_message_area();
	scene_running = 0;
	/* Start at row zero with a 12-pixel left position and empty text. */
	scene_message_previous_x = 12;
	scene_message_row = 0;
	scene_message_line_buffer[0] = 0;
	/* Stop at the first missing message number. */
	do {
		load_message_string(message_number, message_text);
		if (message_not_found == 0) {
			process_scene_message_words(message_text);
			message_number++;
		}
	} while (message_not_found == 0);
	/* Draw any text still buffered after the last message. */
	if (scene_message_line_buffer[0] != 0)
		draw_scene_message_line(scene_message_line_buffer);
	/* The caller selects whether to wait and clear the displayed lines. */
	if (wait_after_messages != 0)
		wait_and_clear_scene_messages();
}
