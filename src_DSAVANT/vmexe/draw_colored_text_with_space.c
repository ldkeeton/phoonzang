/* Draw text in a color and append a space glyph. */

extern int call_set_text_color();
extern int draw_text_glyphs();
extern int draw_font_glyph();

int draw_colored_text_with_space(text, color)
char *text;
int color;
{
	call_set_text_color(color, 0);
	draw_text_glyphs(text, 0);
	draw_font_glyph(32, 0);
}
