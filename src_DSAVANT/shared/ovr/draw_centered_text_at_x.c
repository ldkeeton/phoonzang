/* Draw text centered horizontally at the supplied x coordinate. */
extern int call_set_text_color(), aztec_strlen(), call_set_text_pos();
extern int draw_text_glyphs();

draw_centered_text_at_x(text, center_x, text_y, text_color)
char *text;
int center_x, text_y, text_color;
{
	call_set_text_color(text_color, 0);
	/* Six pixels per glyph; subtract half the string width to center it. */
	call_set_text_pos(center_x - (aztec_strlen(text) * 6) / 2, text_y);
	draw_text_glyphs(text, 0);
}
