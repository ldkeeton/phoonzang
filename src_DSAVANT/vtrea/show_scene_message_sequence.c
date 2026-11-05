/* Process consecutive message strings for the current scene. */
extern int maze_message_previous_x, maze_message_row;
extern int message_not_found;
extern char treasure_glyph_text_buffer[];
extern int redraw_treasure_caption(), load_message_string();
extern int process_scene_message_words(), flush_glyph_buffer();
extern int show_treasure_area(), dissolve_or_show_area();

show_scene_message_sequence(message_id, scene_index)
int message_id;
int scene_index;
{
	char message[261];

	redraw_treasure_caption(0);
	maze_message_previous_x = 68;
	maze_message_row = 0;
	treasure_glyph_text_buffer[0] = 0;
	do {
		load_message_string(message_id, message);
		if (!message_not_found) {
			process_scene_message_words(message);
			message_id++;
		}
	} while (!message_not_found);
	if (treasure_glyph_text_buffer[0])
		flush_glyph_buffer(treasure_glyph_text_buffer);
	show_treasure_area(scene_index);
	redraw_treasure_caption(0);
	dissolve_or_show_area(55, 146, 265, 198);
}
