/* show the directory and filename chooser; return the selected action */

#include "msg.h"

extern int spell_dialog_result, spell_dialog_button;
extern int space_key_hit, hotspot_hit, hotspot_rects[];
extern char known_spell_names[];
extern char dialog_screen_temp_file[];
extern char filename_edit_buffer[];

choose_game_file(dialog_message, first_action_enabled, second_action_enabled,
		cancel_enabled, directory_buffer, filename_buffer)
int dialog_message, first_action_enabled, second_action_enabled,
	cancel_enabled;
char *directory_buffer, *filename_buffer;
{
	int box_x0, box_y0, box_x1, box_y1;
	int dialog_frame_padding[2], hotspot_index, dialog_active;
	char message[20];
	int saved_area, active_text_row;

	spell_dialog_result = -1;
	active_text_row = -1;
	/* Fixed coordinates for the chooser box. */
	box_x0 = 55;
	box_y0 = 143;
	box_x1 = 264;
	box_y1 = 197;
	saved_area = save_screen_area(box_x0 - 1, box_y0 - 1,
		box_x1 + 1, box_y1 + 1, dialog_screen_temp_file);
	draw_dialog_box(box_x0, box_y0, box_x1, box_y1);
	/* The three 12-by-1 buttons are placed 16 pixels apart. */
	load_message_string(dialog_message, message);
	draw_button(box_x0 + 8, box_y0 + 7, 12, 1, first_action_enabled, message);
	load_message_string(dialog_message + 1, message);
	draw_button(box_x0 + 8, box_y0 + 23, 12, 1, second_action_enabled, message);
	load_message_string(dialog_message + 2, message);
	draw_button(box_x0 + 8, box_y0 + 39, 12, 1, cancel_enabled, message);
	load_message_string(MSG_DIRECTORY, message);
	call_set_text_color(155, 194);
	/* Center this heading across 17 glyph cells, each 6 pixels wide. */
	call_set_text_pos(((17 - aztec_strlen(message)) * 6 + 2) / 2 +
		box_x0 + 93, box_y0 + 6);
	draw_text_glyphs(message, 0);
	aztec_strcpy(known_spell_names, directory_buffer);
	/* Show the two 17-column text rows, separated by 24 pixels. */
	draw_text_list(box_x0 + 93, box_y0 + 15, 17, 1, 0, -1, 1);
	/* D/F select the text rows; Enter and Escape map to lower buttons. */
	set_hotspot(0, box_x0 + 93, box_y0 + 15, box_x0 + 197,
		box_y0 + 21, 'D', 0);
	load_message_string(MSG_FILENAME, message);
	call_set_text_color(155, 194);
	/* Center the filename heading with the same glyph-cell calculation. */
	call_set_text_pos(((17 - aztec_strlen(message)) * 6 + 2) / 2 +
		box_x0 + 93, box_y0 + 30);
	draw_text_glyphs(message, 0);
	aztec_strcpy(filename_edit_buffer, filename_buffer);
	draw_text_list(box_x0 + 93, box_y0 + 39, 17, 1, 1, -1, 1);
	set_hotspot(1, box_x0 + 93, box_y0 + 39, box_x0 + 197,
		box_y0 + 45, 'F', 0);
	set_hotspot(2, box_x0 + 8, box_y0 + 7, box_x0 + 80,
		box_y0 + 15, 0, 0);
	set_hotspot(3, box_x0 + 8, box_y0 + 23, box_x0 + 80,
		box_y0 + 31, 13, 0);
	set_hotspot(4, box_x0 + 8, box_y0 + 39, box_x0 + 80,
		box_y0 + 47, 27, 0);
	set_hotspot(5, -1, 0, 0, 0, 0, 0); /* disabled hotspot sentinel */
	call_show_area(box_x0 - 1, box_y0 - 1, box_x1 + 1, box_y1 + 1);
	dialog_active = 1;
	do { /* poll until an action button closes the dialog */
		hotspot_index = poll_hotspots(hotspot_rects) - 1;
		if (space_key_hit) {
			/* Space toggles between the filename and directory fields. */
			active_text_row++;
			if (active_text_row > 1)
				active_text_row = 0;
			hotspot_hit = 1;
			hotspot_index = active_text_row;
		}
		if (hotspot_hit == 1) {
			/* Row hotspots edit text; button hotspots may close the dialog. */
			switch (hotspot_index) {
			case 0:
				/* Edit the directory row. */
				flush_keyboard();
				draw_text_list(box_x0 + 93, box_y0 + 15,
					17, 1, 0, 0, 1);
				call_show_area(box_x0 + 93, box_y0 + 15,
					box_x0 + 197, box_y0 + 22);
				input_text_field(known_spell_names,
					box_x0 + 95, box_y0 + 16, 16, 0, 1, 0);
				aztec_strcpy(directory_buffer, known_spell_names);
				draw_text_list(box_x0 + 93, box_y0 + 15,
					17, 1, 0, -1, 1);
				call_show_area(box_x0 + 93, box_y0 + 15,
					box_x0 + 197, box_y0 + 22);
				break;
			case 1:
				/* Edit the filename row. */
				flush_keyboard();
				draw_text_list(box_x0 + 93, box_y0 + 39,
					17, 1, 1, 1, 1);
				call_show_area(box_x0 + 93, box_y0 + 39,
					box_x0 + 197, box_y0 + 46);
				input_text_field(filename_edit_buffer,
					box_x0 + 95, box_y0 + 40, 16, 0, 1, 0);
				aztec_strcpy(filename_buffer, filename_edit_buffer);
				draw_text_list(box_x0 + 93, box_y0 + 39,
					17, 1, 1, -1, 1);
				call_show_area(box_x0 + 93, box_y0 + 39,
					box_x0 + 197, box_y0 + 46);
				break;
			case 2:
				/* Preserve the flag gate before recording this action. */
				if (first_action_enabled) {
					flash_button(box_x0 + 8, box_y0 + 7, 12, 1, 1);
					flash_button(box_x0 + 8, box_y0 + 7, 12, 1, 0);
					spell_dialog_button = 0;
					dialog_active = 0;
				}
				break;
			case 3:
				/* The second action records result 1 when enabled. */
				if (second_action_enabled) {
					flash_button(box_x0 + 8, box_y0 + 23, 12, 1, 1);
					flash_button(box_x0 + 8, box_y0 + 23, 12, 1, 0);
					spell_dialog_button = 1;
					dialog_active = 0;
				}
				break;
			case 4:
				/* The cancel action records result 2 when enabled. */
				if (cancel_enabled) {
					flash_button(box_x0 + 8, box_y0 + 39, 12, 1, 1);
					flash_button(box_x0 + 8, box_y0 + 39, 12, 1, 0);
					spell_dialog_button = 2;
					dialog_active = 0;
				}
				break;
			}
		}
	} while (dialog_active);
	restore_saved_screen(saved_area, 1);
	spell_dialog_result = -1;
	return spell_dialog_button;
}
