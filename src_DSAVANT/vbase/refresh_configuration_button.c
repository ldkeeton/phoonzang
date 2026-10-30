/* Expose a highlighted border around one configuration button. */
extern int fill_rectangle_border(), call_show_area();

refresh_configuration_button(button_left, button_top, character_width)
int button_left, button_top, character_width;
{
	/* Six-pixel character cells define the button's right edge. */
	fill_rectangle_border(button_left, button_top,
		6 * character_width + button_left,
		button_top + 8, 22);
	/* Include the one-pixel border when exposing the highlighted area. */
	call_show_area(button_left - 1, button_top - 1,
		6 * character_width + button_left + 1, button_top + 9);
	/* Restore the backing border to color zero after it has been shown. */
	fill_rectangle_border(button_left, button_top,
		6 * character_width + button_left,
		button_top + 8, 0);
}
