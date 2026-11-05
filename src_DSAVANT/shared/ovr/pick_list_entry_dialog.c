/* Scrollable seven-row entry chooser with three gated action buttons. */

extern int dialog_selection, dialog_button;
extern int space_key_hit, hotspot_hit, hotspot_rects[];
extern char list_dialog_temp_file[];

extern int save_screen_area(), draw_dialog_box(), load_message_string();
extern int draw_button(), draw_text_list(), draw_scrollbar();
extern int set_hotspot(), call_show_area(), poll_hotspots();
extern int call_get_mouse(), clamp_between(), flash_area();
extern int flash_button(), restore_saved_screen();

pick_list_entry_dialog(message_id, first_enabled, second_enabled,
		third_enabled, entry_count)
int message_id, first_enabled, second_enabled, third_enabled, entry_count;
{
	int i, box_x, box_y, box_right, box_bottom;
	int mouse_x, mouse_y, thumb_y, thumb_travel, grab_offset;
	int list_top, hit, dialog_active, mouse_button, rows_shown;
	int selected_entry, rows_to_draw;
	char label[20];
	int saved_area;

	dialog_selection = -1;
	box_x = 55;
	box_y = 143;
	box_right = 264;
	box_bottom = 197;
	thumb_travel = 22;
	rows_to_draw = entry_count < 7 ? entry_count : 7;
	saved_area = save_screen_area(box_x - 1, box_y - 1,
		box_right + 1, box_bottom + 1, list_dialog_temp_file);
	draw_dialog_box(box_x, box_y, box_right, box_bottom);

	/* The three action labels use consecutive message IDs. */
	load_message_string(message_id, label);
	draw_button(box_x + 8, box_y + 7, 12, 1, first_enabled, label);
	load_message_string(message_id + 1, label);
	draw_button(box_x + 8, box_y + 23, 12, 1, second_enabled, label);
	load_message_string(message_id + 2, label);
	draw_button(box_x + 8, box_y + 39, 12, 1, third_enabled, label);

	/* Start with the first seven entries and no selected row. */
	list_top = 0;
	selected_entry = -1;
	draw_text_list(box_x + 93, box_y + 6, 15, 7, list_top,
		selected_entry, rows_to_draw);
	thumb_y = 0;
	draw_scrollbar(box_x + 193, box_y + 6, 8, 7, thumb_y);
	set_hotspot(0, box_x + 193, box_y + thumb_y + 14,
		box_x + 201, box_y + thumb_y + 18, 0, 0);
	set_hotspot(1, box_x + 193, box_y + 6,
		box_x + 201, box_y + 12, 9, 0);
	set_hotspot(2, box_x + 193, box_y + 42,
		box_x + 201, box_y + 48, 11, 0);
	set_hotspot(3, box_x + 8, box_y + 7, box_x + 80,
		box_y + 15, 0, 0);
	set_hotspot(4, box_x + 8, box_y + 23, box_x + 80,
		box_y + 31, 13, 0);
	set_hotspot(5, box_x + 8, box_y + 39, box_x + 80,
		box_y + 47, 27, 0);
	rows_shown = entry_count < 7 ? entry_count : 7;
	for (i = 0; i < rows_shown; i++)	/* one hotspot per visible row */
		set_hotspot(i + 6, box_x + 93, box_y + 6 * i + 6,
			box_x + 185, box_y + 6 * i + 12, 0, 0);
	set_hotspot(rows_shown + 6, -1, 0, 0, 0, 0, 0);
	call_show_area(box_x - 1, box_y - 1,
		box_right + 1, box_bottom + 1);
	dialog_active = 1;
	do {
		hit = poll_hotspots(hotspot_rects) - 1;
		if (space_key_hit) {
			/* Space advances the highlighted entry within the visible rows. */
			if (selected_entry >= list_top)
				selected_entry++;
			if (selected_entry == -1 || selected_entry < list_top
				|| list_top + rows_shown - 1 < selected_entry)
				selected_entry = list_top;
			hotspot_hit = 1;
			hit = selected_entry - list_top + 6;
		}
		if (hotspot_hit == 1) {
			switch (hit) {
			case 0:
				/* Drag the thumb and map its travel to the list top. */
				call_get_mouse(&mouse_x, &mouse_y);
				grab_offset = clamp_between(mouse_y -
					(box_y + thumb_y + 14), 0, 4);
				do {
					mouse_button = call_get_mouse(&mouse_x, &mouse_y);
					thumb_y = clamp_between(mouse_y - (box_y + 14)
						- grab_offset, 0, thumb_travel);
					if (entry_count > 7)
						list_top = thumb_y * 100 /
							((thumb_travel * 100 + 100) /
							(entry_count - 6));
					draw_text_list(box_x + 93, box_y + 6, 15, 7,
						list_top, selected_entry, rows_to_draw);
					draw_scrollbar(box_x + 193, box_y + 6, 8, 7,
						thumb_y);
					set_hotspot(0, box_x + 193,
						box_y + thumb_y + 14,
						box_x + 201, box_y + thumb_y + 18, 0, 0);
					call_show_area(box_x + 93, box_y + 6,
						box_x + 201, box_y + 48);
				} while (mouse_button);
				break;
			case 1:
			case 2:
				/* Arrow clicks move the list by one entry. */
				if (hit == 1) {
					flash_area(box_x + 193, box_y + 6,
						box_x + 201, box_y + 12, 1);
					if (list_top > 0)
						list_top--;
				} else {
					flash_area(box_x + 193, box_y + 42,
						box_x + 201, box_y + 48, 1);
					if (entry_count - 7 > list_top)
						list_top++;
				}
				if (entry_count > 7)
					thumb_y = clamp_between((((thumb_travel * 100
						+ 100) / (entry_count - 7)) * list_top) / 100,
						0, thumb_travel);
				draw_text_list(box_x + 93, box_y + 6, 15, 7,
					list_top, selected_entry, rows_to_draw);
				draw_scrollbar(box_x + 193, box_y + 6, 8, 7, thumb_y);
				set_hotspot(0, box_x + 193,
					box_y + thumb_y + 14, box_x + 201,
					box_y + thumb_y + 18, 0, 0);
				call_show_area(box_x + 93, box_y + 6,
					box_x + 201, box_y + 48);
				break;
			case 3:
				/* The first button returns action zero when enabled. */
				if (first_enabled) {
					flash_button(box_x + 8, box_y + 7, 12, 1, 1);
					flash_button(box_x + 8, box_y + 7, 12, 1, 0);
					dialog_button = 0;
					dialog_active = 0;
				}
				break;
			case 4:
				/* The second button returns action one when enabled. */
				if (second_enabled) {
					flash_button(box_x + 8, box_y + 23, 12, 1, 1);
					flash_button(box_x + 8, box_y + 23, 12, 1, 0);
					dialog_button = 1;
					dialog_active = 0;
				}
				break;
			case 5:
				/* The third button returns action two when enabled. */
				if (third_enabled) {
					flash_button(box_x + 8, box_y + 39, 12, 1, 1);
					flash_button(box_x + 8, box_y + 39, 12, 1, 0);
					dialog_button = 2;
					dialog_active = 0;
				}
				break;
			default:
				/* A row click records its absolute list index. */
				selected_entry = list_top + hit - 6;
				draw_text_list(box_x + 93, box_y + 6, 15, 7,
					list_top, selected_entry, rows_to_draw);
				call_show_area(box_x + 93, box_y + 6,
					box_x + 185, box_y + 48);
				break;
			}
		}
	} while (dialog_active);

	/* Restore the underlying screen and return the selected entry and action. */
	restore_saved_screen(saved_area, 1);
	dialog_selection = selected_entry;
	return dialog_button;
}
