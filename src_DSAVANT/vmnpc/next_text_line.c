/* Advance the visible NPC dialog lines and redraw their text. */
extern int text_line_index;
extern int text_line_color[];
extern char text_line_buffer[];
extern int rotate_npc_text_lines();
extern int redraw_area_set(), measure_text_width();
extern int call_set_text_pos(), call_set_text_color();
extern int draw_text_glyphs(), show_area_set();

/* Move the text window forward by one line and render all four rows. */
next_text_line()
{
	int text_left;
	int line_index;

	if (text_line_index > 2)
		rotate_npc_text_lines();
	else
		++text_line_index;
	redraw_area_set(3);
	for (line_index = 0; line_index < 4; ++line_index) {
		if (text_line_color[line_index] != 0)
			text_left = 160 - (measure_text_width(
				text_line_buffer + (line_index << 7), 2) + 1) / 2;
		else
			text_left = 68;
		call_set_text_pos(text_left, 12 * line_index +
			(text_line_color[line_index] != 0 ? 146 : 151));
		call_set_text_color(text_line_color[line_index] != 0 ? 85 : 1, 0);
		draw_text_glyphs(text_line_buffer + (line_index << 7),
			text_line_color[line_index]);
	}
	show_area_set(3);
}
