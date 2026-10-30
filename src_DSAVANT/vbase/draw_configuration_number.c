/* Draw a two-digit configuration value in a shaded panel. */
extern int call_fill_area(), call_set_text_pos(), call_set_text_color();
extern int draw_number_field(), call_show_area();

draw_configuration_number(value, left, top)
int value;
int left;
int top;
{
	/* Fill the fixed 14-by-6 area behind the value. */
	call_fill_area(left, top, left + 14, top + 6, 1);
	call_set_text_pos(left + 2, top + 1);
	/* Use the configured foreground/background color pair. */
	call_set_text_color(0, 1);
	/* Render a two-column number with no additional flags. */
	draw_number_field(value, 2, 0);
	call_show_area(left, top, left + 14, top + 6);
}
