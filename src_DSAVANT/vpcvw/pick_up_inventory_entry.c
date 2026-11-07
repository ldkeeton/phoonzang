/* Pick up an inventory entry: the mouse pointer becomes the item image, or
   the keyboard selection marks it. */
#include "structs/pcrec.h"

extern int selected_item_list_index;
extern int selected_item_list_glyph;
extern int selected_item_list_color;
extern char selected_item_list_text[];
extern int selected_item_type, selected_item_count;
extern int mouse_active;
extern char far *runtime_buffer_1k;
extern int call_get_mouse(), call_set_mouse_pointer();
extern long call_save_area();
extern int call_fill_area(), call_restore_area(), call_show_area();
extern int draw_item_slot_label(), draw_font_glyph();
extern int call_set_text_color(), call_set_text_pos();
extern int flush_keyboard(), clamp_between(), strcpy(), app_memmove();
extern int draw_selected_item_list_entry();

pick_up_inventory_entry(member_index, entry_index, slot, label, color,
	mouse_x_offset, mouse_y_offset)
int member_index, color, mouse_x_offset, mouse_y_offset;
int entry_index;
struct pc_item_slot *slot;
char *label;
{
	int cell_index;
	int mouse_x, mouse_y;
	int text_x, text_y;
	long saved_area;
	char far *saved_overlay;

	selected_item_list_index = -1;
	cell_index = entry_index >= 0 ? entry_index :
		(entry_index >= 0 ? entry_index : -entry_index) - 1;
	text_x = (0, cell_index / 5 * 13) * 6 + cell_index / 5 + 2;
	text_y = cell_index % 5 * 2 * 6 + cell_index % 5 * 2 + 113;
	if (mouse_active) {
		if (entry_index < 0) {
			call_get_mouse(&mouse_x, &mouse_y);
			call_set_mouse_pointer(0L, 0, 0,
				mouse_x + mouse_x_offset,
				mouse_y + mouse_y_offset);
			flush_keyboard();
		} else {
			saved_area = call_save_area(text_x, text_y,
				text_x + 75, text_y + 12);
			call_fill_area(text_x, text_y, text_x + 75,
				text_y + 12, 255);
			draw_item_slot_label(member_index, cell_index, slot,
				label, color);
			call_set_text_color(21, 255);
			call_set_text_pos(text_x, text_y);
			draw_font_glyph(4, 0);
			saved_overlay = call_save_area(text_x, text_y,
				text_x + 75, text_y + 12);
			app_memmove(saved_overlay + 12, runtime_buffer_1k, 988);
			call_restore_area(saved_overlay, 1);
			call_restore_area(saved_area, 1);
			call_get_mouse(&mouse_x, &mouse_y);
			mouse_x = clamp_between(mouse_x + mouse_x_offset - 36,
				0, 319);
			mouse_y = clamp_between(mouse_y + mouse_y_offset - 6,
				0, 199);
			call_set_mouse_pointer(runtime_buffer_1k, 76, 13,
				mouse_x, mouse_y);
			flush_keyboard();
		}
	} else {
		if (entry_index < 0)
			selected_item_list_index = -1;
		else {
			selected_item_list_index = cell_index;
			strcpy(selected_item_list_text, label);
			selected_item_list_glyph = slot->glyph;
			selected_item_type = slot->item_type;
			selected_item_count = slot->level;
			selected_item_list_color = 1;
			draw_selected_item_list_entry();
		}
	}
	call_show_area(1, 112, 171, 182);
}
