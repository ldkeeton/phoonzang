/* Draw the shown page of a member's item slots and cache each item's name. */
#include "structs/pcrec.h"
#include "structs/itemrec.h"
#include "msg.h"

extern struct pc_rec party_records[6];
extern int roster_screen_a, roster_screen_b;
extern int item_page, item_page_alt_mode, item_page_drawn;
extern int item_slot_attr[10], item_slot_color[10];
extern char item_slot_names[10][22];
extern int equip_slot_colors[];
extern int call_restore_screen(), call_set_text_pos();
extern int draw_font_glyph(), call_fill_area(), data_record_io();
extern int strcpy(), load_message_string();
extern int draw_item_slot_label();

draw_member_item_page(member_index)
int member_index;
{
	int row_index;
	int order_index;
	struct item_record item;

	/* Restore the screen before drawing the item page. */
	call_restore_screen(roster_screen_b, roster_screen_a, 0, 0);
	if (item_page != 0) {
		call_set_text_pos(160, 172);
		draw_font_glyph(99, 4);
	}

	/* Clear the page's six row lines and three column lines when needed. */
	if (item_page_alt_mode != 0 || item_page != 0) {
		for (row_index = 0; row_index < 6; ++row_index)
			call_fill_area(1, 112 + 14 * row_index,
				159, 112 + 14 * row_index, 24);
		for (row_index = 0; row_index < 3; ++row_index)
			call_fill_area(79 * row_index + 1, 112,
				79 * row_index + 1, 182, 24);
	}

	/* Visit all ten item cells on the selected page. */
	for (row_index = 0; row_index < 10; ++row_index) {
		if (party_records[member_index].item_slots[item_page][row_index].item_id
			> 0) {
			if (item_page_drawn == 0) {
				/* Load the item record before choosing its name. */
				data_record_io(1, &item,
					party_records[member_index].item_slots[item_page][row_index].item_id,
					0);
				/* An identified item (flag bit 7) shows its own name;
				 * otherwise its glyph picks the generic name. */
				if (party_records[member_index]
					.item_slots[item_page][row_index].flags & 128)
					strcpy(item_slot_names[row_index], item.name);
				else
					load_message_string(MSG_DAGGER_6000 + item.glyph,
						item_slot_names[row_index]);
				item_slot_attr[row_index] = item.page_attr;
			}

			/* Set the base colour, then the equip slot colour when equipped. */
			item_slot_color[row_index] = 105;
			if (item_page == 0) {
				for (order_index = 0; order_index < 8; ++order_index) {
					if (party_records[member_index].equipped[order_index]
						== row_index)
						item_slot_color[row_index] = equip_slot_colors[order_index];
				}
			}
			/* Flag bit 1 uses the alternate highlight colour. */
			if (party_records[member_index]
				.item_slots[item_page][row_index].flags & 2)
				item_slot_color[row_index] = 85;
			draw_item_slot_label(member_index, row_index,
				&party_records[member_index].item_slots[item_page][row_index],
				item_slot_names[row_index], item_slot_color[row_index]);
		}
	}
	item_page_drawn = 1;
}
