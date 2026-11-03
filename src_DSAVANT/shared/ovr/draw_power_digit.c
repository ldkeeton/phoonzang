/* Draw a power digit, highlighting the selected entry. */

extern int call_set_text_pos(), call_set_text_color();
extern int draw_font_glyph(), call_fill_area();

draw_power_digit(x, y, digit_index, selected)
int x, y, digit_index, selected;
{
	/* Each digit occupies a ten-pixel slot; offset one pixel for the marker. */
	call_set_text_pos(x + 10 * digit_index - 1, y);
	draw_font_glyph((unsigned char)(16 + (selected != 0)), 7);

	/* Draw the numeral in its own slot with the normal text color. */
	call_set_text_pos(x + 10 * digit_index, y);
	call_set_text_color(0, 0);
	draw_font_glyph((unsigned char)(digit_index + 1), 2);

	/* Clear the first slot when it is not selected. */
	if (digit_index == 0 && selected == 0)
		call_fill_area(x - 1, y, x - 1, y + 8, 194);
}
