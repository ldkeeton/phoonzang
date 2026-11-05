/* draws one of two eight-glyph strings in a four-column, two-row layout */

extern unsigned char trap_row_codes[240];
extern unsigned char member_trap_clues[60];

extern call_set_text_color();
extern call_set_text_pos();
extern draw_font_glyph();

draw_glyph_string_grid(string_index, x, y, use_alternate)
int string_index, x, y, use_alternate;
{
	int glyph_index;

	call_set_text_color(180, 195);
	for (glyph_index = 0; glyph_index < 8; glyph_index++) {
		call_set_text_pos(x + (glyph_index % 4) * 6,
			y + (glyph_index / 4) * 6);
		if (use_alternate)
			draw_font_glyph(
				member_trap_clues[string_index * 10 + glyph_index], 0);
		else
			draw_font_glyph(trap_row_codes[string_index * 10 + glyph_index], 0);
	}
}
