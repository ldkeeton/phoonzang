/* Draw a two-digit number inside a small inset panel at (left, top). */
extern int draw_inset_panel(), call_set_text_pos(), call_set_text_color();
extern int draw_number_field();

draw_inset_two_digit_number(value, left, top)
int value, left, top;
{
	/* Panel extends 14 pixels right and 6 down; text starts inset by (2, 1). */
	draw_inset_panel(left, top, left + 14, top + 6);
	call_set_text_pos(left + 2, top + 1);
	/* Text colors 180 and 195 for the digits. */
	call_set_text_color(180, 195);
	/* Two columns, no flags. */
	draw_number_field(value, 2, 0);
}
