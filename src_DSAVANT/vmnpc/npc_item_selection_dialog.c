/* Shows the NPC item selection dialog. */
#include "msg.h"
#include "structs/pcrec.h"

extern int npc_item_scroll_top, npc_area_bottom;
extern int dialog_selection, dialog_button;
extern char npc_item_value_unit_text, npc_item_dialog_screen_backup;
extern char hotspot_rects[];
extern int hotspot_hit, space_key_hit;
extern struct pc_rec party_records[];

extern int load_message_string(), strlen(), draw_dialog_box();
extern int save_screen_area(), restore_saved_screen();
extern int call_set_text_color(), call_set_text_pos(), draw_text_glyphs();
extern int format_long_decimal(), draw_button(), draw_scrollbar();
extern int set_hotspot(), call_show_area(), call_get_mouse();
extern int poll_hotspots(), step_npc_screen_animation();
extern int step_list_selection(), clamp_between(), flash_area();
extern int flash_button(), draw_npc_item_list_panel();

npc_item_selection_dialog(member_index, title_message, yes_message, no_message,
		item_count, scroll_offset)
int member_index;
int title_message;
int yes_message;
int no_message;
int item_count;
int scroll_offset;
{
	int row, left, top, right, bottom, mouse_x, mouse_y;
	int scroll_thumb, visible_rows, drag_offset, first_visible;
	int event, keep_open, mouse_button, selected_item, current_item, max_rows;
	char text[20];
	int saved_screen;

	load_message_string(MSG_GP_1508, &npc_item_value_unit_text);
	dialog_selection = -1;
	npc_area_bottom = 141;
	left = 35;
	top = 143;
	right = 284;
	bottom = 197;
	visible_rows = 22;
	max_rows = item_count < 3 ? item_count : 3;
	saved_screen = save_screen_area(left - 1, top - 1, right + 1,
		bottom + 1, &npc_item_dialog_screen_backup);
	draw_dialog_box(left, top, right, bottom);
	call_set_text_color(1, 194);
	call_set_text_pos(left + 38 -
		(strlen(party_records[member_index].name) * 6) / 2,
		top + 6);
	draw_text_glyphs(party_records[member_index].name, 0);
	call_set_text_color(179, 194);
	format_long_decimal(party_records[member_index].gold, text);
	call_set_text_pos(left + 38 - (strlen(text) * 6 + 18) / 2,
		top + 12);
	draw_text_glyphs(text, 0);
	load_message_string(title_message, text);
	call_set_text_color(26, 194);
	draw_text_glyphs(text, 0);
	load_message_string(title_message + 1, text);
	draw_button(left + 8, top + 23, 10, 1, yes_message, text);
	load_message_string(title_message + 2, text);
	draw_button(left + 8, top + 39, 10, 1, no_message, text);
	if (scroll_offset + 3 > item_count)
		scroll_offset = item_count - 3;
	first_visible = scroll_offset > 0 ? scroll_offset : 0;
	current_item = -1;
	npc_item_scroll_top = -1;
	draw_npc_item_list_panel(member_index, left + 78, top + 6, 24, 7,
		first_visible, current_item, max_rows);
	scroll_thumb = 0;
	if (item_count > 3)
		scroll_thumb = clamp_between((((100 * visible_rows + 100) /
			(item_count - 3)) * first_visible) / 100, 0, visible_rows);
	draw_scrollbar(left + 232, top + 6, 8, 7, scroll_thumb);
	set_hotspot(0, left + 232, top + scroll_thumb + 14, left + 240,
		top + scroll_thumb + 18, 0, 0);
	set_hotspot(1, left + 232, top + 6, left + 240, top + 12, 9, 0);
	set_hotspot(2, left + 232, top + 42, left + 240, top + 48, 11, 0);
	set_hotspot(3, left + 8, top + 7, left + 68, top + 15, 0, 0);
	set_hotspot(4, left + 8, top + 23, left + 68, top + 31, 66, 13);
	set_hotspot(5, left + 8, top + 39, left + 68, top + 47, 27, 0);
	selected_item = item_count < 3 ? item_count : 3;
	for (row = 0; row < selected_item; ++row)
		set_hotspot(row + 6, left + 78, top + 7 + row * 14,
			left + 224, top + 19 + row * 14, 0, 0);
	set_hotspot(selected_item + 6, -1, 0, 0, 0, 0, 0);
	call_show_area(9, 142, 313, 198);
	keep_open = 1;
	do {
		event = poll_hotspots(hotspot_rects) - 1;
		step_npc_screen_animation();
		if (space_key_hit) {
			current_item = step_list_selection(current_item, first_visible,
				selected_item);
			hotspot_hit = 1;
			event = current_item - first_visible + 6;
		}
		if (hotspot_hit == 1) {
		switch (event) {
		case 0:
			call_get_mouse(&mouse_x, &mouse_y);
			drag_offset = clamp_between(mouse_y - (top + scroll_thumb + 14), 0, 4);
			do {
				mouse_button = call_get_mouse(&mouse_x, &mouse_y);
				scroll_thumb = clamp_between(mouse_y - (top + 14) - drag_offset,
					0, visible_rows);
				if (item_count > 3) {
				first_visible = (scroll_thumb * 100) /
					((100 * visible_rows + 100) / (item_count - 2));
					if (scroll_thumb == visible_rows)
						first_visible = item_count - 3;
				}
				draw_npc_item_list_panel(member_index, left + 78, top + 6,
					24, 7, first_visible, current_item, max_rows);
				draw_scrollbar(left + 232, top + 6, 8, 7, scroll_thumb);
				set_hotspot(0, left + 232, top + scroll_thumb + 14,
					left + 240, top + scroll_thumb + 18, 0, 0);
				call_show_area(left + 78, top + 6, left + 240,
					top + 48);
			} while (mouse_button != 0);
			break;
		case 1:
		case 2:
			if (event == 1) {
				flash_area(left + 232, top + 6, left + 240, top + 12, 1);
				if (first_visible > 0)
					--first_visible;
			} else {
				flash_area(left + 232, top + 42, left + 240, top + 48, 1);
				if (first_visible < item_count - 3)
					++first_visible;
			}
			if (item_count > 3)
				scroll_thumb = clamp_between((((100 * visible_rows + 100) /
					(item_count - 3)) * first_visible) / 100,
					0, visible_rows);
			draw_npc_item_list_panel(member_index, left + 78, top + 6, 24, 7,
				first_visible, current_item, max_rows);
			draw_scrollbar(left + 232, top + 6, 8, 7, scroll_thumb);
			set_hotspot(0, left + 232, top + scroll_thumb + 14,
				left + 240, top + scroll_thumb + 18, 0, 0);
			call_show_area(left + 78, top + 6, left + 240,
				top + 48);
			break;
		case 3:
			break;
		case 4:
			if (yes_message) {
				flash_button(left + 8, top + 23, 10, 1, 1);
				flash_button(left + 8, top + 23, 10, 1, 0);
				dialog_button = 1;
				keep_open = 0;
			}
			break;
		case 5:
			if (no_message) {
				flash_button(left + 8, top + 39, 10, 1, 1);
				flash_button(left + 8, top + 39, 10, 1, 0);
				dialog_button = 2;
				keep_open = 0;
			}
			break;
		default:
			current_item = first_visible + event - 6;
			npc_item_scroll_top = event - 6;
			draw_npc_item_list_panel(member_index, left + 78, top + 6, 24, 7,
				first_visible, current_item, max_rows);
			call_show_area(left + 78, top + 6, left + 224,
				top + 48);
			break;
		}
		}
	} while (keep_open);
	restore_saved_screen(saved_screen, 1);
	npc_area_bottom = 143;
	dialog_selection = current_item;
	return dialog_button;
}
