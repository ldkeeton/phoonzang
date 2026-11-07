/* Show a grid of message choices and return the selected source index. */

extern int menu_selection_index;
extern int mouse_active, hotspot_hit, hotspot_rects[];
extern char title_panel_screen_file[], choice_grid_screen_file[];
extern int save_screen_area(), draw_dialog_box(), load_message_string();
extern int call_set_text_color(), strlen(), call_set_text_pos();
extern int draw_text_glyphs(), draw_bevel_frame(), set_hotspot();
extern int call_show_area(), poll_hotspots(), fill_rectangle_border();
extern int poll_filtered_key();
extern unsigned char get_filtered_key();
extern int flash_button(), restore_saved_screen();
extern int draw_frame_outline();

select_grid_text_option(first_message, title_message, left, top,
	text_width, column_step, row_step, rows, option_count,
	text_color, initial_index, redraw_background, option_flags)
int first_message, title_message, left, top;
int text_width, column_step, row_step, rows, option_count;
int text_color, initial_index, redraw_background;
int *option_flags;
{
	int display_count, item_index, box_right, box_bottom;
	int column_offset, row_offset;
	int original_indices[15];
	char choice_text[15][20];
	char title_text[80];
	int saved_area, pressed_key;

	/* Compute the right and bottom bounds of the choice grid. */
	box_right = left + (((option_count - 1) / rows + 1) * column_step) -
		(column_step - 6 * text_width);
	box_bottom = top + row_step * rows - (row_step - 9);
	if (title_message != 0) {
		/* Save and draw the title panel above the choice grid. */
		saved_area = save_screen_area(left - 6, top - 21,
			box_right + 6, box_bottom + 6, title_panel_screen_file);
		draw_dialog_box(left - 5, top - 20, box_right + 5,
			box_bottom + 5);
		load_message_string(title_message, title_text);
		call_set_text_color(1, 194);
		call_set_text_pos(160 - (strlen(title_text) * 6) / 2,
			top - 13);
		draw_text_glyphs(title_text, 0);
	} else {
		/* Save just the grid area when there is no title panel. */
		saved_area = save_screen_area(left - 1, top - 1,
			box_right + 1, box_bottom + 1, choice_grid_screen_file);
	}

	display_count = 0;
	item_index = 0;
	/* Load and draw each enabled choice, preserving its source index. */
	while (option_flags[item_index] != -1) {
		if (option_flags[item_index] == 1) {
			load_message_string(first_message + item_index,
				choice_text[display_count]);
			column_offset = display_count / rows * column_step;
			row_offset = display_count % rows * row_step;
			draw_bevel_frame(left + column_offset,
				top + row_offset,
				6 * text_width + left + column_offset,
				top + row_offset + 8, 0);
			call_set_text_color(item_index == initial_index ? 26 :
				text_color, 192);
			call_set_text_pos(left + column_offset +
				(text_width - strlen(choice_text[display_count])) * 6 / 2 + 1,
				top + row_offset + 2);
			draw_text_glyphs(choice_text[display_count], 0);
			set_hotspot(display_count, left + column_offset,
				top + row_offset,
				6 * text_width + left + column_offset,
				top + row_offset + 8, 0, 0);
			original_indices[display_count] = item_index;
			display_count++;
		}
		item_index++;
	}

	/* Add a disabled terminal hotspot and show the complete grid. */
	set_hotspot(display_count, -1, 0, 0, 0, 0, 0);
	/* Refresh the full 320 by 200 display before waiting for input. */
	call_show_area(0, 0, 319, 199);
	if (mouse_active != 0) {
		/* Mouse hotspot indices are one based at the polling interface. */
		do {
			item_index = poll_hotspots(hotspot_rects);
		} while (hotspot_hit == 0);
	} else {
		item_index = 0;
		/* Redraw the active frame until Enter accepts a valid item. */
		do {
			column_offset = item_index / rows * column_step;
			row_offset = item_index % rows * row_step;
			draw_frame_outline(left + column_offset, top + row_offset,
				6 * text_width + left + column_offset,
				top + row_offset + 8, 22);
			call_show_area(left - 1, top - 1, box_right + 1,
				box_bottom + 1);
			draw_frame_outline(left + column_offset, top + row_offset,
				6 * text_width + left + column_offset,
				top + row_offset + 8, 0);
			/* Wait for a key and then read its scan code. */
			while (poll_filtered_key(1) == 0)
				;
			pressed_key = get_filtered_key(1);
			column_offset = item_index / rows;
			row_offset = (display_count - 1) / rows + 1;
			/* Arrow keys wrap within the grid's rows and columns. */
			do {
				switch (pressed_key) {
				case 9:
					item_index = (item_index + rows - 1) % rows +
						column_offset * rows;
					break;
				case 11:
					item_index = (item_index + 1) % rows +
						column_offset * rows;
					break;
				case 8:
					column_offset = (column_offset + row_offset - 1) % row_offset;
					item_index = item_index % rows + column_offset * rows;
					break;
				case 10:
					column_offset = (column_offset + 1) % row_offset;
					item_index = item_index % rows + column_offset * rows;
					break;
				}
			} while (item_index >= display_count);
		} while (pressed_key != 13);
		item_index++;
		call_show_area(left - 1, top - 1, box_right + 1,
			box_bottom + 1);
	}

	/* Convert the hot spot to a zero-based choice and flash it. */
	item_index--;
	column_offset = item_index / rows * column_step;
	row_offset = item_index % rows * row_step;
	flash_button(left + column_offset, top + row_offset,
		text_width, 1, 1);
	flash_button(left + column_offset, top + row_offset,
		text_width, 1, 0);
	restore_saved_screen(saved_area, 1);
	if (redraw_background != 0) {
		if (title_message != 0)
			call_show_area(left - 6, top - 21,
				box_right + 6, box_bottom + 6);
		else
			call_show_area(left - 1, top - 1,
				box_right + 1, box_bottom + 1);
	}
	menu_selection_index = item_index;
	return original_indices[item_index];
}
