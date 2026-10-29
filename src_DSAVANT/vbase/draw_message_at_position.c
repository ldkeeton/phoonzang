/* Load a message and draw it at a fixed or horizontally centered position. */
extern int load_message_string(), call_set_text_color(), aztec_strlen();
extern int call_set_text_pos(), draw_text_glyphs();

draw_message_at_position(message_number, text_x, text_y, text_color)
int message_number, text_x, text_y, text_color;
{
	char message_text[80];

	load_message_string(message_number, message_text);
	/* Apply the requested foreground color with palette value 194. */
	call_set_text_color(text_color, 194);
	/* Negative x centers six-pixel glyphs on the 320-pixel screen. */
	if (text_x < 0)
		text_x = 160 - aztec_strlen(message_text) * 6 / 2;
	call_set_text_pos(text_x, text_y);
	draw_text_glyphs(message_text, 0);
}
