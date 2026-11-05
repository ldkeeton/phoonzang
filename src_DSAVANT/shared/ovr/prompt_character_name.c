/* Three-button character-name dialog with an editable text field. */

extern int dialog_selection, dialog_button, hotspot_rects[];
extern int hotspot_hit;
extern char list_entry_text[];
extern char screen_save_temp_file[];

extern int save_screen_area(), draw_dialog_box(), load_message_string();
extern int draw_button(), call_set_text_color(), call_set_text_pos();
extern int aztec_strlen(), draw_text_glyphs(), aztec_strcpy();
extern int draw_text_list(), set_hotspot(), call_show_area();
extern int flush_keyboard(), input_text_field(), poll_hotspots();
extern int flash_button(), restore_saved_screen();

prompt_character_name(message_id, first_enabled, second_enabled,
					third_enabled, name_buffer)
int message_id, first_enabled, second_enabled, third_enabled;
char *name_buffer;
{
	int box_x, box_y, box_right, box_bottom;
	int unused_dialog_word_a, unused_dialog_word_b;
	int hit, running;
	char button_label[20];
	int saved_area;

	/* The caller's buffer is the editable name; clear the shared dialog
	   result. */
	dialog_selection = -1;
	box_x = 55;
	box_y = 143;
	box_right = 264;
	box_bottom = 197;
	saved_area = save_screen_area(box_x - 1, box_y - 1, box_right + 1,
		box_bottom + 1, screen_save_temp_file);
	draw_dialog_box(box_x, box_y, box_right, box_bottom);

	/* Three labels are consecutive messages and correspond to the buttons. */
	load_message_string(message_id, button_label);
	draw_button(box_x + 8, box_y + 7, 32, 1, first_enabled, button_label);
	load_message_string(message_id + 1, button_label);
	draw_button(box_x + 8, box_y + 23, 12, 1, second_enabled,
		button_label);
	load_message_string(message_id + 2, button_label);
	draw_button(box_x + 8, box_y + 39, 12, 1, third_enabled,
		button_label);

	/* Center the fourth message above the editable name. */
	load_message_string(message_id + 3, button_label);
	call_set_text_color(155, 194);
	call_set_text_pos(box_x + 93 +
		((17 - aztec_strlen(button_label)) * 6 + 2) / 2,
		box_y + 22);
	draw_text_glyphs(button_label, 0);

	/* Draw the caller's current name, then register the field and buttons. */
	aztec_strcpy(list_entry_text, name_buffer);
	draw_text_list(box_x + 93, box_y + 31, 17, 1, 0, 0, 1);
	set_hotspot(0, box_x + 93, box_y + 31,
		box_x + 197, box_y + 37, 32, 0);
	set_hotspot(1, box_x + 8, box_y + 7, box_x + 80, box_y + 15, 0, 0);
	set_hotspot(2, box_x + 8, box_y + 23, box_x + 80, box_y + 31,
		13, 0);
	set_hotspot(3, box_x + 8, box_y + 39, box_x + 80, box_y + 47,
		27, 0);
	set_hotspot(4, -1, 0, 0, 0, 0, 0);
	call_show_area(box_x - 1, box_y - 1, box_right + 1, box_bottom + 1);

	/* The text field edits the shared scratch name before copying it back. */
	flush_keyboard();
	input_text_field(list_entry_text, box_x + 95, box_y + 32,
		7, 0, 1, 0);
	aztec_strcpy(name_buffer, list_entry_text);
	draw_text_list(box_x + 93, box_y + 31, 17, 1, 0, -1, 1);
	call_show_area(box_x + 93, box_y + 31,
		box_x + 197, box_y + 38);

	running = 1;
	do {
		hit = poll_hotspots(hotspot_rects) - 1;
		if (hotspot_hit == 1) {
			switch (hit) {
			case 0:
				/* Reopen text entry when the name field is clicked. */
				flush_keyboard();
				draw_text_list(box_x + 93, box_y + 31,
					17, 1, 0, 0, 1);
				call_show_area(box_x + 93, box_y + 31,
					box_x + 197, box_y + 38);
				input_text_field(list_entry_text, box_x + 95,
					box_y + 32, 7, 0, 1, 0);
				aztec_strcpy(name_buffer, list_entry_text);
				draw_text_list(box_x + 93, box_y + 31,
					17, 1, 0, -1, 1);
				call_show_area(box_x + 93, box_y + 31,
					box_x + 197, box_y + 38);
				break;
			case 1:
				/* Return button 0 only when the caller enabled it. */
				if (first_enabled) {
					flash_button(box_x + 8, box_y + 7, 12, 1, 1);
					flash_button(box_x + 8, box_y + 7, 12, 1, 0);
					dialog_button = 0;
					running = 0;
				}
				break;
			case 2:
				/* Return button 1 only when the caller enabled it. */
				if (second_enabled) {
					flash_button(box_x + 8, box_y + 23, 12, 1, 1);
					flash_button(box_x + 8, box_y + 23, 12, 1, 0);
					dialog_button = 1;
					running = 0;
				}
				break;
			case 3:
				/* Return button 2 only when the caller enabled it. */
				if (third_enabled) {
					flash_button(box_x + 8, box_y + 39, 12, 1, 1);
					flash_button(box_x + 8, box_y + 39, 12, 1, 0);
					dialog_button = 2;
					running = 0;
				}
				break;
			}
		}
	} while (running);

	/* Restore the saved screen and mark the dialog result as inactive. */
	restore_saved_screen(saved_area, 1);
	dialog_selection = -1;
	return dialog_button;
}
