/* Draws the enabled NPC dialog actions as a two-page grid of framed labels
 * and lets the player pick one with the mouse or the cursor keys.  Returns
 * the chosen entry's index into enabled[] (the option index). */
extern int menu_selection_index, mouse_active, hotspot_hit;
extern int hotspot_rects[];
extern int load_message_string(), draw_bevel_frame(), fill_frame_border();
extern int call_set_text_color(), call_set_text_pos(), strlen();
extern int draw_text_glyphs(), set_hotspot(), show_area_set();
extern int poll_hotspots(), step_npc_screen_animation();
extern int poll_filtered_key();
extern unsigned char get_filtered_key();
extern int call_invert_area(), call_show_area(), delay_ms();

draw_npc_dialog_action_menu(message_id, saved_area, first_top, second_top,
			    left, text_width, row_stride, column_stride,
			    columns, sparse_mode, text_color, enabled)
int message_id, saved_area, first_top, second_top;
int left, text_width, row_stride, column_stride, columns;
int sparse_mode, text_color;
int *enabled;
{
	int shown, index, top, position;
	int x_offset, y_offset, unused_word, total_columns;
	int display_to_option[15];
	char option_text[15][20];
	int unused_words[40];
	int option_count, key, step;
	int option_to_display[15];
	int key_delta;

	menu_selection_index = -1;
	total_columns = columns * 2;
	shown = 0;
	index = 0;
	while (enabled[index] != -1) {
		if (enabled[index] == 1) {
			position = sparse_mode ? index : shown;
			top = position < total_columns ? first_top : second_top;
			load_message_string(message_id + index, option_text[shown]);
			x_offset = position % total_columns / columns * row_stride;
			y_offset = position % total_columns % columns * column_stride;
			draw_bevel_frame(top + x_offset, left + y_offset,
				6 * text_width + top + x_offset, left + y_offset + 6, 0);
			call_set_text_color(text_color, 0);
			call_set_text_pos((text_width - strlen(option_text[shown])) * 6 / 2
				+ top + x_offset + 1, left + y_offset + 1);
			draw_text_glyphs(option_text[shown], 0);
			set_hotspot(shown, top + x_offset, left + y_offset,
				6 * text_width + top + x_offset, left + y_offset + 6, 0, 0);
			display_to_option[shown] = index;
			option_to_display[position] = shown;
			shown++;
		}
		index++;
	}
	option_count = index;
	set_hotspot(shown, -1, 0, 0, 0, 0, 0);
	show_area_set(saved_area);
	if (mouse_active) {
		do {
			index = poll_hotspots(hotspot_rects);
			step_npc_screen_animation();
		} while (!hotspot_hit);
	} else {
		index = 0;
		while (sparse_mode && enabled[index] != 1)
			index++;
		do {
			top = index < total_columns ? first_top : second_top;
			x_offset = index % total_columns / columns * row_stride;
			y_offset = index % total_columns % columns * column_stride;
			fill_frame_border(top + x_offset, left + y_offset,
				6 * text_width + top + x_offset, left + y_offset + 6, 22);
			show_area_set(saved_area);
			fill_frame_border(top + x_offset, left + y_offset,
				6 * text_width + top + x_offset, left + y_offset + 6, 0);
			while (!poll_filtered_key(1))
				step_npc_screen_animation();
			key = get_filtered_key(1);
			x_offset = index / columns;
			y_offset = ((option_count - 1) / columns + 1) * columns;
			switch (key) {
			case 9:		/* left / right: move within the row */
			case 11:
				key_delta = key == 9 ? -1 : 1;
				do
					index = (index + key_delta + columns) % columns
						+ x_offset * columns;
				while ((sparse_mode && enabled[index] != 1) ||
				       (!sparse_mode && index >= shown));
				break;
			case 8:		/* up / down: move to another row */
			case 10:
				key_delta = key == 8 ? -1 : 1;
				do {
					index = (columns * key_delta + index + y_offset) % y_offset;
					x_offset = index / columns;
					step = 0;
					while (step < columns &&
					       ((sparse_mode && enabled[index] != 1) ||
						(!sparse_mode && index >= shown))) {
						index = (index + key_delta + columns) % columns
							+ x_offset * columns;
						step++;
					}
				} while ((sparse_mode && enabled[index] != 1) ||
					 (!sparse_mode && index >= shown));
				break;
			}
		} while (key != 13);
		index = option_to_display[index];
		index++;
		show_area_set(saved_area);
	}
	index--;
	position = sparse_mode ? display_to_option[index] : index;
	top = position < total_columns ? first_top : second_top;
	x_offset = position % total_columns / columns * row_stride;
	y_offset = position % total_columns % columns * column_stride;
	call_invert_area(top + x_offset, y_offset + left,
		6 * text_width + top + x_offset, y_offset + left + 6);
	call_show_area(top + x_offset, y_offset + left,
		6 * text_width + top + x_offset, y_offset + left + 6);
	delay_ms(25);
	call_invert_area(top + x_offset, left + y_offset,
		6 * text_width + top + x_offset, left + y_offset + 6);
	call_show_area(top + x_offset, left + y_offset,
		6 * text_width + top + x_offset, left + y_offset + 6);
	menu_selection_index = index;
	return display_to_option[index];
}
