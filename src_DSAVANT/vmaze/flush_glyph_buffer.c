/* Center and draw the pending maze glyph text, then advance its row. */
extern int maze_message_row, maze_message_previous_x;
extern int wait_for_maze_input_or_refresh();
extern int measure_text_width();
extern int strlen();
extern int call_set_text_pos(), call_set_text_color(), draw_text_glyphs();

flush_glyph_buffer(glyph_buffer)
unsigned char *glyph_buffer;
{
	int text_x;
	int last_glyph_index;

	/* Past the fourth message row, wait for input before drawing more. */
	if (maze_message_row > 3)
		wait_for_maze_input_or_refresh(0);
	if (glyph_buffer[0] == 0) {
		maze_message_row++;
		return;
	}

	text_x = 160 - (measure_text_width(glyph_buffer, 2) + 1) / 2;
	last_glyph_index = strlen(glyph_buffer) - 1;
	switch (glyph_buffer[last_glyph_index]) {
	case '$':
		/* Trailing '$': strip it and left-align the line at x 68. */
		glyph_buffer[last_glyph_index] = 0;
		text_x = 68;
		break;
	case '^':
		/* Trailing '^': strip it and start at the previous line's x. */
		glyph_buffer[last_glyph_index] = 0;
		text_x = maze_message_previous_x;
		break;
	}

	call_set_text_pos(text_x, maze_message_row * 12 + 146);
	call_set_text_color(85, 0);
	draw_text_glyphs(glyph_buffer, 2);
	glyph_buffer[0] = 0;
	maze_message_previous_x = text_x;
	maze_message_row++;
}
