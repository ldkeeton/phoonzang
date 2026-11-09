/* Let the player inspect a party member from the roster screen. */
extern long roster_screen;
extern int party_char_count;
extern int mouse_active;
extern int hotspot_rects[];
extern int escape_key_hit;
extern int hotspot_hit;
extern char far *pointer_image_zero;
extern long call_save_area();
extern int call_restore_screen(), call_restore_area();
extern int call_set_text_pos(), draw_font_glyph(), call_show_area();
extern int set_mouse_pointer_shape(), set_hotspot();
extern int call_get_mouse(), delay_ms(), poll_hotspots();
extern unsigned char get_filtered_key();
extern int draw_party_member_overview();

/* Return the selected member index, or -1 when selection is cancelled. */
select_party_member_from_roster()
{
	int member_index;
	int selected_member;
	int mouse_buttons;
	int button_released;
	int column;
	int row;
	int saved_area_stack_pad;
	long saved_area;

	call_restore_screen(roster_screen, 0, 0);
	member_index = 0;
	for (; member_index < party_char_count; ++member_index) {
		draw_party_member_overview(member_index, 0, 0);
		column = (member_index % 3) * 50 + 4;
		row = (member_index / 3) * 39 + 112;
		set_hotspot(member_index, column, row, column + 46, row + 38,
			(char)(member_index + 49), 0);
	}
	set_hotspot(party_char_count, -1, 0, 0, 0, 0, 0);
	call_show_area(1, 112, 171, 187);

	if (!mouse_active) {
		saved_area = call_save_area(154, 144, 177, 163);
		call_set_text_pos(154, 144);
		draw_font_glyph(18, 7);
		call_set_text_pos(154, 156);
		draw_font_glyph(19, 7);
		call_set_text_pos(166, 156);
		draw_font_glyph(20, 7);
		call_show_area(154, 144, 177, 163);
		selected_member = -2;
		while (selected_member == -2) {
			member_index = get_filtered_key(1);
			if (member_index == 27)
				selected_member = -1;
		if (member_index >= 49) {
			if (member_index < party_char_count + 49) {
				selected_member = member_index - 49;
				draw_party_member_overview(selected_member, 1, 1);
			}
		}
		}
		call_restore_area(saved_area, 1);
		call_show_area(154, 144, 177, 163);
		return selected_member;
	}

	set_mouse_pointer_shape(pointer_image_zero);
	button_released = 0;
	do {
		mouse_buttons = call_get_mouse(&column, &row);
		button_released |= (mouse_buttons == 0);
		delay_ms(20);
		selected_member = poll_hotspots(hotspot_rects) - 1;
		if (escape_key_hit) {
			set_mouse_pointer_shape(0L);
			return -1;
		}
		if (hotspot_hit == 1) {
			draw_party_member_overview(selected_member, 1, 1);
			set_mouse_pointer_shape(0L);
			return selected_member;
		}
	} while (mouse_buttons == 0 || button_released == 0);
	set_mouse_pointer_shape(0L);
	return -1;
}
