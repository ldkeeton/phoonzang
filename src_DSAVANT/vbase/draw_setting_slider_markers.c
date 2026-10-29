/* Draw the two fixed glyphs around a variable-width text position. */
extern int call_set_text_color();
extern int call_set_text_pos();
extern int draw_font_glyph();

draw_setting_slider_markers(left_x, text_y, glyph_spacing)
int left_x;
int text_y;
int glyph_spacing;
{
	call_set_text_color(1, 0);
	call_set_text_pos(left_x, text_y);
	/* Glyph 5 marks the left position; glyph 6 follows the supplied spacing. */
	draw_font_glyph(5, 0);
	call_set_text_pos(left_x + glyph_spacing, text_y);
	draw_font_glyph(6, 0);
}
