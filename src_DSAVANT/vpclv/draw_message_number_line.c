/* Draw a message label with numeric values and refresh its screen area. */
draw_message_number_line(stat_only, x, y, first, second, label_msg, middle,
	ending,
	background, foreground)
int stat_only, x, y, first, second, label_msg;
char *middle, *ending;
int background, foreground;
{
	int width;
	char label_text[10];
	char first_text[10];
	char second_text[10];

	if (stat_only == 0) {
		load_message_string(label_msg, label_text);
		format_int_decimal(first, first_text);
		format_int_decimal(second, second_text);
		width = strlen(label_text) + strlen(first_text)
			+ strlen(middle) + strlen(second_text) + strlen(ending)
			+ 1;
		call_fill_area(x, y, x + 6 * width - 2, y + 4, background);
		call_set_text_pos(x, y);
		call_set_text_color(foreground, background);
		draw_text_glyphs(label_text, 0);
		draw_font_glyph(32, 0);
		draw_text_glyphs(first_text, 0);
		draw_text_glyphs(middle, 0);
		draw_text_glyphs(second_text, 0);
		draw_text_glyphs(ending, 0);
	} else {
		load_message_string(label_msg, label_text);
		width = 6;
		call_fill_area(x, y, x + 6 * width - 2, y + 4, background);
		call_set_text_pos(x, y);
		call_set_text_color(foreground, background);
		draw_text_glyphs(label_text, 0);
		draw_number_field(first, 3, 0);
	}
	call_show_area(x, y, x + 6 * width - 2, y + 4);
}
