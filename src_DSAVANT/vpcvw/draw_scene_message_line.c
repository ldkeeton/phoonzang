/* Draw one line from a scene message. */
extern int scene_message_line_index, scene_message_last_x;
extern int measure_text_width(), aztec_strlen();
extern int call_set_text_pos(), call_set_text_color(), draw_text_glyphs();
extern int wait_for_scene_message_page();

/* Render message text and update the line cursor. */
draw_scene_message_line(text)
unsigned char *text;
{
	int text_x;
	int last_character;

	if (scene_message_line_index > 5)
		wait_for_scene_message_page();
	if (*text == 0) {
		scene_message_line_index++;
		return;
	}

	text_x = 84 - (measure_text_width(text, 2) + 1) / 2;
	last_character = aztec_strlen(text) - 1;
	switch (text[last_character]) {
	case '$':
		text[last_character] = 0;
		text_x = 4;
		break;
	case '^':
		text[last_character] = 0;
		text_x = scene_message_last_x;
		break;
	}

	call_set_text_pos(text_x, 112 + 12 * scene_message_line_index);
	call_set_text_color(85, 0);
	draw_text_glyphs(text, 2);
	*text = 0;
	scene_message_last_x = text_x;
	scene_message_line_index++;
}
