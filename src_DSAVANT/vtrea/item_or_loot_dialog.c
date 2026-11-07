/* Display the item or loot chooser and return the chosen button. */
#include "msg.h"
extern int dialog_selection, dialog_button, show_area_bottom;
extern int party_redraw_interval, space_key_hit, hotspot_hit;
extern char treasure_item_dialog_temp_file[];
extern int save_screen_area(), draw_dialog_box(), load_message_string();
extern int strcpy(), draw_button(), draw_inset_list_rows(),
	draw_scrollbar();
extern int set_hotspot(), call_show_area(), tick_treasure_animation();
extern int poll_hotspots(), call_get_mouse(), clamp_between(), flash_area();
extern int hotspot_rects[];
extern int flash_button(), restore_saved_screen();

/* Draw the dialog and track the selected list row until a button is chosen. */
item_or_loot_dialog(title, msg1, msg2, msg3, row_count, msg)
int title, msg1, msg2, msg3, row_count;
char *msg;
{
	int i, x, y, right, bottom, mouse_x, mouse_y, scroll_pos;
	int row_height, mouse_row, selection, hit, repeat, poll_result;
	int visible_rows, scroll_top, max_rows, unused[9];
	char text[2];
	int save_id;

	dialog_selection = -1;
	x = 55; y = 143; right = 264; bottom = 197; show_area_bottom = 141;
	row_height = 22;
	max_rows = row_count < 3 ? row_count : 3;
	save_id =
	save_screen_area(x-1, y-1, right+1, bottom+1, treasure_item_dialog_temp_file);
	draw_dialog_box(x, y, right, bottom);
	if (msg1) load_message_string(title, text); else strcpy(text, msg);
	draw_button(x+8, y+7, 12, 1, msg1, text);
	load_message_string(title+1, text);
	draw_button(x+8, y+23, 12, 1, msg2, text);
	load_message_string(title+2, text);
	draw_button(x+8, y+39, 12, 1, msg3, text);
	selection = 0;
	scroll_top = -1;
	draw_inset_list_rows(x+93, y+6, 15, 7, selection, scroll_top, max_rows);
	scroll_pos = 0;
	draw_scrollbar(x+193, y+6, 8, 7, scroll_pos);
	set_hotspot(0, x+193, y+scroll_pos+14, x+201, y+scroll_pos+18, 0, 0);
	set_hotspot(1, x+193, y+6, x+201, y+12, 9, 0);
	set_hotspot(2, x+193, y+42, x+201, y+48, 11, 0);
	if (msg1) {
	set_hotspot(3, x+8, y+7, x+80, y+15, 85, 13);
	set_hotspot(4, x+8, y+23, x+80, y+31, 68, 0);
	set_hotspot(5, x+8, y+39, x+80, y+47, 27, 0);
	} else {
	set_hotspot(3, x+8, y+7, x+80, y+15, 0, 0);
	set_hotspot(4, x+8, y+23, x+80, y+31, 84, 13);
	set_hotspot(5, x+8, y+39, x+80, y+47, 76, 27);
	}
	visible_rows = row_count < 3 ? row_count : 3;
	for (i=0; i<visible_rows; i++)
	set_hotspot(i+6, x+93, y+7+14*i, x+185, y+19+14*i, 0, 0);
	set_hotspot(visible_rows+6, -1, 0, 0, 0, 0, 0);
	call_show_area(x-1, y-1, right+1, bottom+1);
	repeat = 1;
	party_redraw_interval = 5;
	do {
	if (!msg1) tick_treasure_animation();
	hit = poll_hotspots(hotspot_rects)-1;
	if (space_key_hit) {
	if (scroll_top >= selection) {
	scroll_top++;
	}
	if (scroll_top == -1 || scroll_top < selection ||
		selection+visible_rows-1 < scroll_top) scroll_top = selection;
	hotspot_hit = 1;
	hit = scroll_top-selection+6;
	}
	if (hotspot_hit == 1) {
	switch (hit) {
	case 0:
	call_get_mouse(&mouse_x, &mouse_y);
	mouse_row = clamp_between(mouse_y-(y+scroll_pos+14), 0, 4);
	do {
		poll_result = call_get_mouse(&mouse_x, &mouse_y);
		scroll_pos = clamp_between(mouse_y-(y+14)-mouse_row, 0, row_height);
		if (row_count > 3)
		selection = scroll_pos*100/((row_height*100+100)/(row_count-2));
		draw_inset_list_rows(x+93, y+6, 15, 7, selection, scroll_top, max_rows);
		draw_scrollbar(x+193, y+6, 8, 7, scroll_pos);
		set_hotspot(0, x+193, y+scroll_pos+14, x+201, y+scroll_pos+18, 0, 0);
		call_show_area(x+93, y+6, x+201, y+48);
	} while (poll_result);
	break;
	case 1:
	case 2:
	if (hit == 1) {
		flash_area(x+193, y+6, x+201, y+12, 1);
		if (selection > 0) selection--;
	} else {
		flash_area(x+193, y+42, x+201, y+48, 1);
		if (row_count-3 > selection) selection++;
	}
	if (row_count > 3)
		scroll_pos =
		clamp_between((((row_height*100+100)/(row_count-3))*selection)/100,
		0, row_height);
	draw_inset_list_rows(x+93, y+6, 15, 7, selection, scroll_top, max_rows);
	draw_scrollbar(x+193, y+6, 8, 7, scroll_pos);
	set_hotspot(0, x+193, y+scroll_pos+14, x+201, y+scroll_pos+18, 0, 0);
	call_show_area(x+93, y+6, x+201, y+48);
	break;
	case 3:
	if (msg1) {
		flash_button(x+8, y+7, 12, 1, 1);
		flash_button(x+8, y+7, 12, 1, 0);
		dialog_button = 0; repeat = 0;
	}
	break;
	case 4:
	if (msg2) {
		flash_button(x+8, y+23, 12, 1, 1);
		flash_button(x+8, y+23, 12, 1, 0);
		dialog_button = 1; repeat = 0;
	}
	break;
	case 5:
	if (msg3) {
		flash_button(x+8, y+39, 12, 1, 1);
		flash_button(x+8, y+39, 12, 1, 0);
		dialog_button = 2; repeat = 0;
	}
	break;
	default:
	scroll_top = selection + hit - 6;
	draw_inset_list_rows(x+93, y+6, 15, 7, selection, scroll_top, max_rows);
	call_show_area(x+93, y+6, x+185, y+48);
	}
	}
	} while (repeat);
	restore_saved_screen(save_id, 1);
	show_area_bottom = 143;
	dialog_selection = scroll_top;
	return dialog_button;
}
