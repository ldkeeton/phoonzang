/* Presents the item list and Use, Drop and Esc buttons; returns the button. */
extern int spell_dialog_result, spell_dialog_button;
extern int space_key_hit, hotspot_hit, hotspot_rects[];
extern char item_dialog_temp_file[];

extern int save_screen_area(), restore_saved_screen();
extern int draw_dialog_box(), draw_button(), draw_inset_list_rows();
extern int load_message_string(), aztec_strcpy(), set_hotspot();
extern int call_show_area(), draw_scrollbar(), poll_hotspots();
extern int call_get_mouse(), clamp_between(), flash_area(), flash_button();

item_action_dialog(message_id, first_enabled, second_enabled,
			  third_enabled, row_count, first_label)
int message_id;
int first_enabled;
int second_enabled;
int third_enabled;
int row_count;
char *first_label;
{
	int i, box_x, box_y, box_right, box_bottom, mouse_x, mouse_y, thumb_y;
	int thumb_travel, grab_offset, list_top, hit, running, mouse_button;
	int rows_shown, selected_row, rows_drawn, spare_count;
	char label[18];
	int saved_area;

	spell_dialog_result = -1;
	box_x = 55;
	box_y = 143;
	box_right = 264;
	box_bottom = 197;
	thumb_travel = 22;
	rows_drawn = row_count < 3 ? row_count : 3;
	saved_area = save_screen_area(box_x - 1, box_y - 1, box_right + 1,
		box_bottom + 1, item_dialog_temp_file);
	draw_dialog_box(box_x, box_y, box_right, box_bottom);

	if (first_enabled)
		load_message_string(message_id, label);
	else
		aztec_strcpy(label, first_label);
	draw_button(box_x + 8, box_y + 7, 12, 1, first_enabled, label);
	load_message_string(message_id + 1, label);
	draw_button(box_x + 8, box_y + 23, 12, 1, second_enabled, label);
	load_message_string(message_id + 2, label);
	draw_button(box_x + 8, box_y + 39, 12, 1, third_enabled, label);

	list_top = 0;
	selected_row = -1;
	draw_inset_list_rows(box_x + 93, box_y + 6, 15, 7, list_top,
		selected_row, rows_drawn);
	thumb_y = 0;
	draw_scrollbar(box_x + 193, box_y + 6, 8, 7, thumb_y);
	set_hotspot(0, box_x + 193, box_y + thumb_y + 14,
		box_x + 201, box_y + thumb_y + 18, 0, 0);
	set_hotspot(1, box_x + 193, box_y + 6, box_x + 201,
		box_y + 12, 9, 0);
	set_hotspot(2, box_x + 193, box_y + 42, box_x + 201,
		box_y + 48, 11, 0);
	set_hotspot(3, box_x + 8, box_y + 7, box_x + 80,
		box_y + 15, 85, 13);
	set_hotspot(4, box_x + 8, box_y + 23, box_x + 80,
		box_y + 31, 68, 0);
	set_hotspot(5, box_x + 8, box_y + 39, box_x + 80,
		box_y + 47, 27, 0);
	rows_shown = row_count < 3 ? row_count : 3;
	for (i = 0; i < rows_shown; i++)
		set_hotspot(i + 6, box_x + 93, 14 * i + box_y + 7,
			box_x + 185, 14 * i + box_y + 19, 0, 0);
	set_hotspot(rows_shown + 6, -1, 0, 0, 0, 0, 0);
	call_show_area(box_x - 1, box_y - 1, box_right + 1, box_bottom + 1);
	running = 1;
	do {
		hit = poll_hotspots(hotspot_rects) - 1;
		if (space_key_hit) {
			if (selected_row >= list_top)
				selected_row++;
			if (selected_row == -1 || selected_row < list_top ||
			    list_top + rows_shown - 1 < selected_row)
				selected_row = list_top;
			hotspot_hit = 1;
			hit = selected_row - list_top + 6;
		}
		if (hotspot_hit == 1) {
			switch (hit) {
			case 0: /* Drag the thumb while its hotspot remains pressed. */
				call_get_mouse(&mouse_x, &mouse_y);
				grab_offset = clamp_between(mouse_y - (box_y + thumb_y + 14),
					0, 4);
				do {
					mouse_button = call_get_mouse(&mouse_x, &mouse_y);
					thumb_y = clamp_between(mouse_y - (box_y + 14) - grab_offset,
						0, thumb_travel);
					if (row_count > 3)
						list_top = thumb_y * 100 /
							((thumb_travel * 100 + 100) / (row_count - 2));
					draw_inset_list_rows(box_x + 93, box_y + 6, 15, 7,
						list_top, selected_row, rows_drawn);
					draw_scrollbar(box_x + 193, box_y + 6, 8, 7, thumb_y);
					set_hotspot(0, box_x + 193, box_y + thumb_y + 14,
						box_x + 201, box_y + thumb_y + 18, 0, 0);
					call_show_area(box_x + 93, box_y + 6,
						box_x + 201, box_y + 48);
				} while (mouse_button);
				break;
			case 1:
			case 2: /* The two arrows move the list by one row. */
				if (hit == 1) {
					flash_area(box_x + 193, box_y + 6,
						box_x + 201, box_y + 12, 1);
					if (list_top > 0)
						list_top--;
				} else {
					flash_area(box_x + 193, box_y + 42,
						box_x + 201, box_y + 48, 1);
					if (row_count - 3 > list_top)
						list_top++;
				}
				if (row_count > 3)
					thumb_y = clamp_between(((thumb_travel * 100 + 100) /
						(row_count - 3)) * list_top / 100, 0, thumb_travel);
				draw_inset_list_rows(box_x + 93, box_y + 6, 15, 7,
					list_top, selected_row, rows_drawn);
				draw_scrollbar(box_x + 193, box_y + 6, 8, 7, thumb_y);
				set_hotspot(0, box_x + 193, box_y + thumb_y + 14,
					box_x + 201, box_y + thumb_y + 18, 0, 0);
				call_show_area(box_x + 93, box_y + 6,
					box_x + 201, box_y + 48);
				break;
			case 3:
				if (first_enabled) {
					flash_button(box_x + 8, box_y + 7, 12, 1, 1);
					flash_button(box_x + 8, box_y + 7, 12, 1, 0);
					spell_dialog_button = 0;
					running = 0;
				}
				break;
			case 4:
				if (second_enabled) {
					flash_button(box_x + 8, box_y + 23, 12, 1, 1);
					flash_button(box_x + 8, box_y + 23, 12, 1, 0);
					spell_dialog_button = 1;
					running = 0;
				}
				break;
			case 5:
				if (third_enabled) {
					flash_button(box_x + 8, box_y + 39, 12, 1, 1);
					flash_button(box_x + 8, box_y + 39, 12, 1, 0);
					spell_dialog_button = 2;
					running = 0;
				}
				break;
			default:
				selected_row = list_top + hit - 6;
				draw_inset_list_rows(box_x + 93, box_y + 6, 15, 7,
					list_top, selected_row, rows_drawn);
				call_show_area(box_x + 93, box_y + 6,
					box_x + 185, box_y + 48);
				break;
			}
		}
	} while (running);
	restore_saved_screen(saved_area, 1);
	spell_dialog_result = selected_row;
	return spell_dialog_button;
}
