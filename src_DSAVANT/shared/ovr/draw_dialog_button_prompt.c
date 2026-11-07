/* Draw a centered prompt and a beveled button, then register its hotspot. */

extern long call_save_area();
extern int draw_dialog_box(), load_message_string();
extern int call_set_text_color(), call_set_text_pos(), strlen();
extern int draw_text_glyphs(), draw_bevel_frame(), set_hotspot();
extern int call_show_area();

long draw_dialog_button_prompt(text_id, x, y, width, unused_mode, hotspot_id)
int text_id, x, y, width, unused_mode, hotspot_id;
{
	int button_right;
	int message_y;
	char message[80];
	long saved_area;

	/* Save the fixed dialog frame before drawing over it. */
	button_right = 6 * width + x;
	message_y = y + 9;
	saved_area = call_save_area(x - 25, y - 21, button_right + 25,
		message_y + 6);
	draw_dialog_box(x - 24, y - 20, button_right + 24, message_y + 5);

	load_message_string(text_id, message);
	call_set_text_color(1, 194);
	/* Center the prompt at the fixed horizontal screen midpoint. */
	call_set_text_pos(161 - (strlen(message) * 6) / 2, y - 13);
	draw_text_glyphs(message, 0);

	load_message_string(text_id + 1, message);
	draw_bevel_frame(x, y, 6 * width + x, y + 8, 0);
	call_set_text_color(26, 192);
	/* Six pixels per glyph; center the button label within its width. */
	call_set_text_pos(x + ((width - strlen(message)) * 6) / 2 + 1,
		y + 2);
	draw_text_glyphs(message, 0);

	/* Enter activates the supplied hotspot; disable the following slot. */
	set_hotspot(hotspot_id, x, y, 6 * width + x, y + 8, 13, 0);
	set_hotspot(hotspot_id + 1, -1, 0, 0, 0, 0, 0);
	call_show_area(0, 0, 319, 199);
	return saved_area;
}
