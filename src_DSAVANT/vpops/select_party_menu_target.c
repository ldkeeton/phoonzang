/* Build a party target grid, navigate it, and return the selected target. */
extern int menu_selection_index;
extern int mouse_active, hotspot_hit, hotspot_rects[];
extern int monster_group_count;
extern int load_message_string(), draw_bevel_frame();
extern int call_set_text_color(), aztec_strlen(), call_set_text_pos();
extern int draw_text_glyphs(), set_hotspot(), call_show_area();
extern int show_area_set(), poll_hotspots(), step_party_screen_animation();
extern int poll_filtered_key(), call_invert_area(), delay_ms();
extern unsigned char get_filtered_key();
extern int fill_rectangle_border();

select_party_menu_target(first_message, area_set, first_column_x,
	second_column_x, top, text_width, column_step, row_step, rows,
	monster_mode, text_color, option_flags)
int first_message, area_set, first_column_x, second_column_x;
int top, text_width, column_step, row_step, rows;
int monster_mode, text_color;
int *option_flags;
{
	int display_count, item_index, column_x, item_slot;
	int cell_x, cell_y, group_index, grid_width;
	int display_to_item[15];
	char option_text[15][20];
	char auxiliary_text[80];
	int last_item, key, scan_index;
	int item_to_display[15];

	/* Leave the global selection invalid until an option is accepted. */
	menu_selection_index = -1;
	grid_width = rows * 2;
	display_count = 0;
	item_index = 0;
	/* Add each enabled option to the display and remember both index maps. */
	while (option_flags[item_index] != -1) {
		if (option_flags[item_index] == 1) {
			item_slot = monster_mode ? item_index : display_count;
			column_x = item_slot < grid_width ? first_column_x : second_column_x;
			load_message_string(first_message + item_index,
				option_text[display_count]);
			cell_x = item_slot % grid_width / rows * column_step;
			cell_y = item_slot % grid_width % rows * row_step;
			draw_bevel_frame(column_x + cell_x, top + cell_y,
				6 * text_width + column_x + cell_x,
				top + cell_y + 6, 0);
			call_set_text_color(text_color, 0);
			call_set_text_pos(column_x + cell_x +
				(text_width - aztec_strlen(option_text[display_count])) * 6 / 2 + 1,
				top + cell_y + 1);
			draw_text_glyphs(option_text[display_count], 0);
			set_hotspot(display_count, column_x + cell_x, top + cell_y,
				6 * text_width + column_x + cell_x,
				top + cell_y + 6, 0, 0);
			display_to_item[display_count] = item_index;
			item_to_display[item_slot] = display_count;
			display_count++;
		}
		item_index++;
	}
	last_item = item_index;
	/* Install the terminal hotspot, then add numbered monster entries. */
	set_hotspot(display_count, -1, 0, 0, 0, 0, 0);
	if (monster_mode == 1) {
		/* Each monster group gets a numbered hotspot beside the grid. */
		for (group_index = 0; group_index < monster_group_count; group_index++)
			set_hotspot(display_count + group_index, 98,
				164 + 6 * group_index, 221,
				168 + 6 * group_index,
				(char)(49 + group_index), 0);
		set_hotspot(display_count + monster_group_count, -1, 0, 0, 0, 0, 0);
	}
	/* Refresh the requested area before entering mouse or keyboard input. */
	show_area_set(area_set);
	if (mouse_active) {
		/* Poll hotspots while the party screen animation advances. */
		do {
			item_index = poll_hotspots(hotspot_rects);
			step_party_screen_animation();
		} while (hotspot_hit == 0);
	} else {
		item_index = 0;
		/* Skip disabled entries when navigating the sparse target list. */
		while (monster_mode && option_flags[item_index] != 1)
			item_index++;
		do {
			/* Highlight the current entry while waiting for the next key. */
			column_x = item_index < grid_width ? first_column_x : second_column_x;
			cell_x = item_index % grid_width / rows * column_step;
			cell_y = item_index % grid_width % rows * row_step;
			fill_rectangle_border(column_x + cell_x, top + cell_y,
				6 * text_width + column_x + cell_x,
				top + cell_y + 6, 22);
			show_area_set(area_set);
			fill_rectangle_border(column_x + cell_x, top + cell_y,
				6 * text_width + column_x + cell_x,
				top + cell_y + 6, 0);
			/* Wait for a key and advance the party screen while idle. */
			while (poll_filtered_key(1) == 0)
				step_party_screen_animation();
			key = get_filtered_key(1);
			/* Enter resolves the slot; digits select a monster group. */
			if (key == 13)
				item_index = item_to_display[item_index];
			else if (monster_mode == 1 && key >= 49 &&
			    key <= monster_group_count + 48) {
				item_index = display_count + key - 49;
				key = 13;
			} else {
				/* Current column and the rounded grid capacity. */
				cell_x = item_index / rows;
				cell_y = ((last_item - 1) / rows + 1) * rows;
				switch (key) {
				case 9:		/* up: wrap within the column */
					do {
						item_index = (item_index + rows - 1) % rows + cell_x * rows;
					} while ((monster_mode && option_flags[item_index] != 1) ||
					    (!monster_mode && item_index >= display_count));
					break;
				case 11:	/* down: wrap within the column */
					do {
						item_index = (item_index + 1) % rows + cell_x * rows;
					} while ((monster_mode && option_flags[item_index] != 1) ||
					    (!monster_mode && item_index >= display_count));
					break;
				case 8:		/* left: previous column, then scan up for an entry */
					do {
						item_index = (item_index - rows + cell_y) % cell_y;
						cell_x = item_index / rows;
						scan_index = 0;
						while (scan_index < rows &&
						    ((monster_mode && option_flags[item_index] != 1) ||
						    (!monster_mode && item_index >= display_count))) {
							item_index = (item_index + rows - 1) % rows + cell_x * rows;
							scan_index++;
						}
					} while ((monster_mode && option_flags[item_index] != 1) ||
					    (!monster_mode && item_index >= display_count));
					break;
				case 10:	/* right: next column, then scan down for an entry */
					do {
						item_index = (item_index + rows) % cell_y;
						cell_x = item_index / rows;
						scan_index = 0;
						while (scan_index < rows &&
						    ((monster_mode && option_flags[item_index] != 1) ||
						    (!monster_mode && item_index >= display_count))) {
							item_index = (item_index + 1) % rows + cell_x * rows;
							scan_index++;
						}
					} while ((monster_mode && option_flags[item_index] != 1) ||
					    (!monster_mode && item_index >= display_count));
					break;
				}
			}
		} while (key != 13);
		item_index++;
		show_area_set(area_set);
	}
	/* Turn the selected one-based hotspot into its menu slot. */
	item_index--;
	if (item_index >= display_count)
		return 0 - (item_index - display_count) - 1;
	item_slot = monster_mode ? display_to_item[item_index] : item_index;
	column_x = item_slot < grid_width ? first_column_x : second_column_x;
	cell_x = item_slot % grid_width / rows * column_step;
	cell_y = item_slot % grid_width % rows * row_step;
	/* Flash the selected target, then restore the background area. */
	call_invert_area(column_x + cell_x, top + cell_y,
		column_x + cell_x + 6 * text_width, top + cell_y + 6);
	call_show_area(column_x + cell_x, top + cell_y,
		column_x + cell_x + 6 * text_width, top + cell_y + 6);
	delay_ms(25);
	call_invert_area(column_x + cell_x, top + cell_y,
		column_x + cell_x + 6 * text_width, top + cell_y + 6);
	call_show_area(column_x + cell_x, top + cell_y,
		column_x + cell_x + 6 * text_width, top + cell_y + 6);
	menu_selection_index = item_index;
	return display_to_item[item_index];
}
