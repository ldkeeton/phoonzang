/* Select an inventory slot with the keyboard or mouse. */
extern int mouse_active;
extern char far *pointer_image_two;
extern int escape_key_hit;
extern int hotspot_hit;
extern int hotspot_rects[];

extern long call_save_area();
extern int call_set_text_pos();
extern int draw_font_glyph();
extern int call_show_area();
extern int get_filtered_key();
extern int call_restore_area();
extern int set_mouse_pointer_shape();
extern int set_hotspot();
extern int call_get_mouse();
extern int delay_ms();
extern int poll_hotspots();

/* Return the selected slot, or -1 when selection is cancelled. */
select_inventory_slot()
{
	int key;
	int result;
	int mouse_read_result;
	int mouse_state;
	int mouse_button;
	int mouse_x;
	int mouse_y;
	long saved_area;

	if (mouse_active == 0) {
		saved_area = call_save_area(154, 144, 177, 163);
		call_set_text_pos(154, 144);
		draw_font_glyph(18, 7);
		call_set_text_pos(154, 156);
		draw_font_glyph(21, 7);
		call_set_text_pos(166, 156);
		draw_font_glyph(22, 7);
		call_show_area(154, 144, 177, 163);
		result = -2;
		while (result == -2) {
			key = (unsigned char)get_filtered_key(1);
			if (key == 27)
				result = -1;
			if (key >= 48 && key <= 57)
				result = (key - 39) % 10;
		}
		call_restore_area(saved_area, 1);
		call_show_area(154, 144, 177, 163);
		return result;
	} else {
		set_mouse_pointer_shape(pointer_image_two);
		for (key = 0; key < 10; ++key) {
			set_hotspot(key, key / 5 * 79 + 1 + 1,
				key % 5 * 14 + 113,
				key / 5 * 79 + 78,
				key % 5 * 14 + 125,
				(char)((key + 1) % 10 + 48), 0);
		}
		set_hotspot(10, -1, 0, 0, 0, 0, 0);
		mouse_state = 0;
		do {
			mouse_read_result = call_get_mouse(&mouse_button, &mouse_x);
			mouse_state |= mouse_read_result == 0;
			delay_ms(20);
			result = poll_hotspots(hotspot_rects) - 1;
			if (escape_key_hit != 0) {
				set_mouse_pointer_shape(0L);
				return -1;
			}
			if (hotspot_hit == 1) {
				set_mouse_pointer_shape(0L);
				return result;
			}
		} while (mouse_read_result == 0 || mouse_state == 0);
		set_mouse_pointer_shape(0L);
		return -1;
	}
}
