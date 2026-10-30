/* Draw a framed configuration label and position its text. */
extern draw_inset_panel();
extern call_set_text_pos();
extern call_set_text_color();
extern draw_text_glyphs();

draw_configuration_box_text(text, x, y, line_count)
char *text;
int x;
int y;
int line_count;
{
	/* The six-pixel line spacing sets the panel's lower edge. */
	draw_inset_panel(x, y, x + 6 * line_count + 2, y + 6);
	call_set_text_pos(x + 2, y + 1);
	/* Use the configured text color pair for the label. */
	call_set_text_color(180, 195);
	draw_text_glyphs(text, 0);
}
