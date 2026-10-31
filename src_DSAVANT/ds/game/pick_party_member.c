/* choose a party member from the keyboard or the mouse */

extern int mouse_active;
extern int party_char_count;
extern int hotspot_rects[];
extern int escape_key_hit;
extern int hotspot_hit;
extern int pointer_image_zero, pointer_image_zero_seg;
extern long call_save_area();
extern call_restore_area(), call_set_text_pos(), draw_font_glyph();
extern call_show_area(), set_mouse_pointer_shape();
extern unsigned char get_filtered_key();
extern set_hotspot(), call_get_mouse(), delay_ms(), poll_hotspots();

pick_party_member()
{
	int index;
	int selected;
	int mouse_buttons;
	int button_released;
	int mouse_x;
	int mouse_y;
	int saved_area_stack_pad;
		/* keeps the saved far pointer at its observed slot */
	long saved_area;

	if (!mouse_active) {
		/* Show a three-key prompt and wait for a valid member number. */
		saved_area = call_save_area(154, 144, 177, 163);
		call_set_text_pos(154, 144);
		draw_font_glyph(18, 7);
		call_set_text_pos(154, 156);
		draw_font_glyph(19, 7);
		call_set_text_pos(166, 156);
		draw_font_glyph(20, 7);
		call_show_area(154, 144, 177, 163);
		selected = -2;
		while (selected == -2) {
			index = get_filtered_key(1);
			if (index == 27)
				selected = -1;
			if (index >= 49 && index < party_char_count + 49)
				selected = index - 49;
		}
		call_restore_area(saved_area, 1);
		call_show_area(154, 144, 177, 163);
		return selected;
	}

	/* Use numbered hotspots when the mouse is active. */
	set_mouse_pointer_shape(pointer_image_zero, pointer_image_zero_seg);
	for (index = 0; index < party_char_count; index++) {
		/* Alternating entries add 0xfc; rows are spaced 45 pixels apart. */
		mouse_x = (index % 2) * 252 + 5;
		mouse_y = (index / 2) * 45 + 18;
		set_hotspot(index, mouse_x, mouse_y,
			mouse_x + 59, mouse_y + 43, (char)(index + 49), 0);
	}
	set_hotspot(party_char_count, -1, 0, 0, 0, 0, 0);
	button_released = 0;
	do {
		mouse_buttons = call_get_mouse(&mouse_x, &mouse_y);
		button_released |= (mouse_buttons == 0);
		delay_ms(20);
		selected = poll_hotspots(hotspot_rects) - 1;
		if (escape_key_hit) {
			set_mouse_pointer_shape(0L);
			return -1;
		}
		if (hotspot_hit == 1) {
			set_mouse_pointer_shape(0L);
			return selected;
		}
	} while (mouse_buttons == 0 || button_released == 0);
	set_mouse_pointer_shape(0L);
	return -1;
}
