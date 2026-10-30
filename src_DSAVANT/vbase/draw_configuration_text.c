/* Draw a framed configuration text field and expose its contents. */
extern int draw_inset_panel(), call_fill_area(), call_set_text_pos();
extern int call_set_text_color(), draw_text_glyphs(), call_show_area();

draw_configuration_text(text, left, top, line_count)
char *text;
int left;
int top;
int line_count;
{
	/* The panel width follows the text line count at six pixels per line. */
	draw_inset_panel(left, top, left + 6 * line_count + 2, top + 6);
	call_fill_area(left, top, left + 6 * line_count + 2, top + 6, 1);
	call_set_text_pos(left + 2, top + 1);
	/* Select the two color values used for this text field. */
	call_set_text_color(0, 1);
	draw_text_glyphs(text, 0);
	call_show_area(left, top, left + 6 * line_count + 2, top + 6);
}
