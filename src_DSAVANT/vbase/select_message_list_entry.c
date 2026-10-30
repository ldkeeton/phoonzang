/* Display a selectable list of message strings and return its chosen item. */
extern char list_screen_temp_file[];
extern int menu_selection_index;
extern int mouse_active, hotspot_hit, hotspot_rects[];
extern int save_screen_area(), load_message_string(), draw_bevel_frame();
extern int call_set_text_color(), aztec_strlen(), call_set_text_pos();
extern int draw_text_glyphs(), set_hotspot(), call_show_area();
extern int poll_hotspots(), fill_rectangle_border(), poll_filtered_key();
extern unsigned char get_filtered_key();
extern int flash_button(), restore_saved_screen();

select_message_list_entry(first_message, left, top, columns, row_height,
	total_rows,
	text_color, item_flags)
int first_message, left, top, columns, row_height, total_rows, text_color;
int *item_flags;
{
	int item_count, item_index, box_left, box_top;
	int original_indices[15];
	char message_rows[15][20];
	int saved_area, pressed_key;

	box_left = left + 6 * columns + 16;
	box_top = top + row_height * total_rows + 16;
	/* Save the full list area to the V.$$$ backing file. */
	saved_area = save_screen_area(left - 1, top - 1, box_left + 1,
		box_top + 1, list_screen_temp_file);
	item_count = 0;
	item_index = 0;
	/* Keep only enabled entries and build one text row for each. */
	while (item_flags[item_index] != -1) {
		if (item_flags[item_index] == 1) {
			load_message_string(first_message + item_index,
				&message_rows[item_count][0]);
			draw_bevel_frame(left + 8,
				top + item_count * row_height + 7,
				left + 6 * columns + 8,
				top + item_count * row_height + 15, 0);
			call_set_text_color(text_color, 192);
			call_set_text_pos((columns -
				aztec_strlen(&message_rows[item_count][0])) * 6 / 2 +
				left + 9, top + item_count * row_height + 9);
			draw_text_glyphs(&message_rows[item_count][0], 0);
			set_hotspot(item_count, left + 8,
				top + item_count * row_height + 7,
				left + 6 * columns + 8,
				top + item_count * row_height + 15, 0, 0);
			original_indices[item_count] = item_index;
			item_count++;
		}
		item_index++;
	}
	/* A disabled hotspot marks the end of the selectable entries. */
	set_hotspot(item_count, -1, 0, 0, 0, 0, 0);
	call_show_area(left - 1, top - 1, box_left + 1, box_top + 1);
	if (mouse_active != 0) {
		/* Wait until a mouse poll reports a hotspot. */
		do {
			item_index = poll_hotspots(hotspot_rects);
		} while (hotspot_hit == 0);
	} else {
		item_index = 0;
		/* Draw the active row, then process arrows and Enter. */
		do {
			fill_rectangle_border(left + 8,
				top + item_index * row_height + 7,
				left + 6 * columns + 8,
				top + item_index * row_height + 15, 22);
			call_show_area(left - 1, top - 1, box_left + 1, box_top + 1);
			fill_rectangle_border(left + 8,
				top + item_index * row_height + 7,
				left + 6 * columns + 8,
				top + item_index * row_height + 15, 0);
			/* Poll until a key is ready, then read it. */
			while (poll_filtered_key(1) == 0)
				;
			pressed_key = get_filtered_key(1);
			/* Keys 9 and 11 move backward and forward, wrapping the list. */
			switch (pressed_key) {
			case 9:
				item_index = (item_index + item_count - 1) % item_count;
				break;
			case 11:
				item_index = (item_index + 1) % item_count;
				break;
			}
		} while (pressed_key != 13);
		item_index++;
		call_show_area(left - 1, top - 1, box_left + 1, box_top + 1);
	}
	/* Flash and restore the selected row before returning its source index. */
	item_index--;
	flash_button(left + 8, top + item_index * row_height + 7,
		columns, 1, 1);
	flash_button(left + 8, top + item_index * row_height + 7,
		columns, 1, 0);
	restore_saved_screen(saved_area, 1);
	menu_selection_index = item_index;
	return original_indices[item_index];
}
