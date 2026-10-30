/* Draw one buffered line of scene text and advance the message row. */
extern int scene_message_previous_x, scene_message_row;
extern int measure_text_width(), aztec_strlen();
extern int wait_and_clear_scene_messages();
extern int call_set_text_pos(), call_set_text_color();
extern int draw_text_glyphs();

draw_scene_message_line(line_text)
char *line_text;
{
	int text_x;
	int last_character;

	/* Clear the displayed rows before writing beyond the fourth row. */
	if (scene_message_row > 3)
		wait_and_clear_scene_messages();

	/* Empty lines still consume one row. */
	if (line_text[0] == 0) {
		scene_message_row++;
		return;
	}

	/* Center ordinary text within the 160-pixel message area. */
	text_x = 160 - ((measure_text_width(line_text, 2) + 1) / 2);
	last_character = aztec_strlen(line_text) - 1;
	switch ((unsigned char)line_text[last_character]) {
	case 36:
		/* '$' marks a line that starts at the left margin. */
		line_text[last_character] = 0;
		text_x = 12;
		break;
	case 94:
		/* '^' marks a line that continues from the prior x position. */
		line_text[last_character] = 0;
		text_x = scene_message_previous_x;
		break;
	}

	/* Scene rows are spaced 12 pixels apart, starting at y=146. */
	call_set_text_pos(text_x, (scene_message_row * 12) + 146);
	call_set_text_color(85, 0);
	draw_text_glyphs(line_text, 2);
	line_text[0] = 0;
	scene_message_previous_x = text_x;
	scene_message_row++;
}
