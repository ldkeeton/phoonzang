/* Select an option from a treasure menu laid out as a grid. */
extern int animation_frame, mouse_active, hotspot_hit, hotspot_rects[];
extern int menu_selection_index;
extern int save_screen_area(), draw_dialog_box(), load_message_string();
extern int call_set_text_color(), call_set_text_pos(), draw_text_glyphs();
extern int aztec_strlen(), draw_bevel_frame(), set_hotspot();
extern int call_show_area(), poll_hotspots(), tick_treasure_animation();
extern int draw_colored_rect_outline(), poll_filtered_key(),
	get_filtered_key();
extern int flash_button(), restore_saved_screen();
extern char grid_menu_dialog_temp_file[], grid_menu_temp_file[];

select_treasure_grid_option(message_base, title_message, left, top,
	label_chars, column_step, row_step, rows_per_column, max_options,
	text_color, initial_option, redraw_after_close, option_flags)
int message_base;
int title_message;
int left;
int top;
int label_chars;
int column_step;
int row_step;
int rows_per_column;
int max_options;
int text_color;
int initial_option;
int redraw_after_close;
int *option_flags;
{
	int option_count;
	int selection;
	int right;
	int bottom;
	int cell_x;
	int cell_y;
	int option_map[15];
	char text_rows[380];
	int saved_screen;
	int key;

	right = ((max_options - 1) / rows_per_column + 1) * column_step + left -
		(column_step - 6 * label_chars);
	bottom = row_step * rows_per_column + top - (row_step - 9);
	if (title_message) {
		saved_screen = save_screen_area(left - 6, top - 21,
			right + 6, bottom + 6, grid_menu_dialog_temp_file);
		draw_dialog_box(left - 5, top - 20, right + 5, bottom + 5);
		load_message_string(title_message, text_rows);
		call_set_text_color(1, 194);
		call_set_text_pos(160 - (aztec_strlen(text_rows) * 6) / 2,
			top - 13);
		draw_text_glyphs(text_rows, 0);
	} else
		saved_screen = save_screen_area(left - 1, top - 1,
			right + 1, bottom + 1, grid_menu_temp_file);

	option_count = 0;
	selection = 0;
	while (option_flags[selection] != -1) {
		if (option_flags[selection] == 1) {
			load_message_string(message_base + selection,
				text_rows + 80 + option_count * 20);
			cell_x = (option_count / rows_per_column) * column_step;
			cell_y = (option_count % rows_per_column) * row_step;
			draw_bevel_frame(left + cell_x, top + cell_y,
				left + cell_x + 6 * label_chars, top + cell_y + 8, 0);
			call_set_text_color(selection == initial_option ?
				26 : text_color, 192);
			call_set_text_pos(left + cell_x + 1 +
				((label_chars - aztec_strlen(text_rows + 80 +
				option_count * 20)) * 6) / 2,
				top + cell_y + 2);
			draw_text_glyphs(text_rows + 80 + option_count * 20, 0);
			set_hotspot(option_count, left + cell_x, top + cell_y,
				left + cell_x + 6 * label_chars,
				top + cell_y + 8, 0, 0);
			option_map[option_count] = selection;
			option_count++;
		}
		selection++;
	}
	set_hotspot(option_count, -1, 0, 0, 0, 0, 0);
	call_show_area(0, 0, 319, 199);
	if (mouse_active) {
		do {
			selection = poll_hotspots(hotspot_rects);
			if (hotspot_hit == 0)
				tick_treasure_animation();
		} while (hotspot_hit == 0);
	} else {
		selection = 0;
		do {
			cell_x = (selection / rows_per_column) * column_step;
			cell_y = (selection % rows_per_column) * row_step;
			draw_colored_rect_outline(left + cell_x, top + cell_y,
				left + cell_x + 6 * label_chars, top + cell_y + 8, 22);
			call_show_area(left - 1, top - 1, right + 1, bottom + 1);
			draw_colored_rect_outline(left + cell_x, top + cell_y,
				left + cell_x + 6 * label_chars, top + cell_y + 8, 0);

			while (!poll_filtered_key(1))
				tick_treasure_animation();
			key = (unsigned char)get_filtered_key(1);
			cell_x = selection / rows_per_column;
			cell_y = (option_count - 1) / rows_per_column + 1;
			do {
				switch (key) {
				case 9:
					selection = (selection + rows_per_column - 1) % rows_per_column +
						cell_x * rows_per_column;
					break;
				case 11:
					selection = (selection + 1) % rows_per_column +
						cell_x * rows_per_column;
					break;
				case 8:
					cell_x = (cell_x + cell_y - 1) % cell_y;
					selection = selection % rows_per_column +
						cell_x * rows_per_column;
					break;
				case 10:
					cell_x = (cell_x + 1) % cell_y;
					selection = selection % rows_per_column +
						cell_x * rows_per_column;
					break;
				}
			} while (selection >= option_count);
		} while (key != 13);
		selection++;
		call_show_area(left - 1, top - 1, right + 1, bottom + 1);
	}
	selection--;
	cell_x = (selection / rows_per_column) * column_step;
	cell_y = (selection % rows_per_column) * row_step;
	flash_button(left + cell_x, top + cell_y, label_chars, 1, 1);
	flash_button(left + cell_x, top + cell_y, label_chars, 1, 0);
	restore_saved_screen(saved_screen, 1);
	if (redraw_after_close) {
		if (title_message)
			call_show_area(left - 6, top - 21, right + 6, bottom + 6);
		else
			call_show_area(left - 1, top - 1, right + 1, bottom + 1);
	}
	menu_selection_index = selection;
	return option_map[selection];
}
