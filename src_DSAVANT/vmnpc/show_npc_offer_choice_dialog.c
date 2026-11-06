/* Displays the NPC offer choices and returns the selected option. */
extern int mouse_active, hotspot_hit, hotspot_rects[];
extern char npc_offer_choice_box_save_file[];
extern char npc_offer_choices_save_file[];
extern int menu_selection_index;
extern int save_screen_area(), restore_saved_screen();
extern int draw_dialog_box(), call_set_text_color(), call_set_text_pos();
extern int draw_text_glyphs(), aztec_strlen(), load_message_string();
extern int draw_bevel_frame(), set_hotspot(), call_show_area();
extern int poll_hotspots(), poll_filtered_key();
extern unsigned char get_filtered_key();
extern int fill_frame_border(), flash_button();

show_npc_offer_choice_dialog(message, prompt, message_id, box_x, box_y,
			     choice_width, column_spacing, row_spacing, rows_per_column,
			     choice_count, normal_color, selected_index, redraw_box, choice_states)
char *message;
char *prompt;
int message_id;
int box_x;
int box_y;
int choice_width;
int column_spacing;
int row_spacing;
int rows_per_column;
int choice_count;
int normal_color;
int selected_index;
int redraw_box;
int *choice_states;
{
	int total_choices, current_choice, box_right, box_bottom;
	int choice_x, choice_y;
	int choice_indices[15];
	char choice_text[300];
	int saved_area, key;

	box_right = ((choice_count - 1) / rows_per_column + 1) * column_spacing +
		box_x - (column_spacing - 6 * choice_width);
	box_bottom = row_spacing * rows_per_column + box_y -
		(row_spacing - 9);
	if (*message) {
		saved_area = save_screen_area(box_x - 6, box_y - 21,
			box_right + 6, box_bottom + 6, npc_offer_choice_box_save_file);
		draw_dialog_box(box_x - 5, box_y - 20,
			box_right + 5, box_bottom + 5);
		call_set_text_color(1, 194);
		call_set_text_pos(160 - aztec_strlen(message) * 6 / 2,
			box_y - 16);
		draw_text_glyphs(message, 0);
		call_set_text_pos(160 - aztec_strlen(prompt) * 6 / 2,
			box_y - 10);
		draw_text_glyphs(prompt, 0);
	} else {
		saved_area = save_screen_area(box_x - 1, box_y - 1,
			box_right + 1, box_bottom + 1, npc_offer_choices_save_file);
	}
	total_choices = 0;
	current_choice = 0;
	while (choice_states[current_choice] != -1) {
		if (choice_states[current_choice] == 1) {
			load_message_string(message_id + current_choice,
				choice_text + total_choices * 20);
			choice_x = total_choices / rows_per_column * column_spacing;
			choice_y = total_choices % rows_per_column * row_spacing;
			draw_bevel_frame(box_x + choice_x, box_y + choice_y,
				box_x + choice_x + 6 * choice_width,
				box_y + choice_y + 8, 0);
			call_set_text_color(current_choice == selected_index ?
				26 : normal_color, 192);
			call_set_text_pos(box_x + choice_x +
				(choice_width - aztec_strlen(
					choice_text + total_choices * 20)) * 6 / 2 + 1,
				box_y + choice_y + 2);
			draw_text_glyphs(choice_text + total_choices * 20, 0);
			set_hotspot(total_choices, box_x + choice_x,
				box_y + choice_y, box_x + choice_x + 6 * choice_width,
				box_y + choice_y + 8, 0, 0);
			choice_indices[total_choices] = current_choice;
			total_choices++;
		}
		current_choice++;
	}
	set_hotspot(total_choices, -1, 0, 0, 0, 0, 0);
	call_show_area(54, 142, 265, 198);
	if (mouse_active) {
		do {
			current_choice = poll_hotspots(hotspot_rects);
		} while (!hotspot_hit);
	} else {
		current_choice = 0;
		do {
			choice_x = current_choice / rows_per_column * column_spacing;
			choice_y = current_choice % rows_per_column * row_spacing;
			fill_frame_border(box_x + choice_x, box_y + choice_y,
				box_x + choice_x + 6 * choice_width,
				box_y + choice_y + 8, 22);
			call_show_area(box_x - 1, box_y - 1,
				box_right + 1, box_bottom + 1);
			fill_frame_border(box_x + choice_x, box_y + choice_y,
				box_x + choice_x + 6 * choice_width,
				box_y + choice_y + 8, 0);
			while (!poll_filtered_key(1))
				;
			key = get_filtered_key(1);
			switch (key) {
			case 8:
			case 11:
				current_choice = (current_choice + total_choices - 1) % total_choices;
				break;
			case 9:
			case 10:
				current_choice = (current_choice + 1) % total_choices;
				break;
			}
		} while (key != 13);
		current_choice++;
		call_show_area(box_x - 1, box_y - 1,
			box_right + 1, box_bottom + 1);
	}
	current_choice--;
	choice_x = current_choice / rows_per_column * column_spacing;
	choice_y = current_choice % rows_per_column * row_spacing;
	flash_button(box_x + choice_x, box_y + choice_y,
		choice_width, 1, 1);
	flash_button(box_x + choice_x, box_y + choice_y,
		choice_width, 1, 0);
	restore_saved_screen(saved_area, 1);
	if (redraw_box) {
		if (*message)
			call_show_area(box_x - 6, box_y - 21,
				box_right + 6, box_bottom + 6);
		else
			call_show_area(box_x - 1, box_y - 1,
				box_right + 1, box_bottom + 1);
	}
	menu_selection_index = current_choice;
	return choice_indices[current_choice];
}
