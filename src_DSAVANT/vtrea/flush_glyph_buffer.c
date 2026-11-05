/* Draw the buffered treasure message and advance its display row. */
extern int maze_message_row, maze_message_previous_x;
extern int show_treasure_area();
extern int measure_text_width(), aztec_strlen();
extern int call_set_text_pos(), call_set_text_color(), draw_text_glyphs();

/* Center and draw one buffered glyph string, honoring its positioning
   marker. */
flush_glyph_buffer(text)
char *text;
{
	int text_x;
	int last_character;

	if (maze_message_row > 3)
		show_treasure_area(0);
	if (*text == 0) {
		maze_message_row++;
		return;
	}
	text_x = 160 - (measure_text_width(text, 2) + 1) / 2;
	last_character = aztec_strlen(text) - 1;
	switch ((unsigned char)text[last_character]) {
	case '$':
		text[last_character] = 0;
		text_x = 68;
		break;
	case '^':
		text[last_character] = 0;
		text_x = maze_message_previous_x;
		break;
	}
	call_set_text_pos(text_x, 12 * maze_message_row + 146);
	call_set_text_color(85, 0);
	draw_text_glyphs(text, 2);
	text[0] = 0;
	maze_message_previous_x = text_x;
	maze_message_row++;
}
