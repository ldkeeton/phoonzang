/* Invert and reveal a button-sized rectangle, with an optional short delay. */

extern call_invert_area(), call_show_area(), delay_ms();

flash_button(left, top, button_width, button_height, pause)
int left, top, button_width, button_height, pause;
{
	/* Button dimensions are scaled to six-pixel cells, with two extra rows. */
	call_invert_area(left, top,
		left + button_width * 6,
		top + button_height * 6 + 2);
	call_show_area(left, top,
		left + button_width * 6,
		top + button_height * 6 + 2);
	/* A nonzero flag requests the same 35 millisecond pause. */
	if (pause)
		delay_ms(35);
}
