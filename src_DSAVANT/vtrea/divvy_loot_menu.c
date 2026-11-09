/* Let the party choose loot items to take or leave behind. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int loot_row_total, loot_row_identified[];
extern int loot_row_value[], loot_row_flag2[];
extern int list_row_count[], list_row_marked[], list_row_glyph[];
extern char list_row_name[];
extern int dialog_selection, mouse_active;

extern int load_message_string();
extern int item_or_loot_dialog();
extern int draw_selected_button_label();
extern int call_show_area();
extern int pick_party_member();
extern int find_empty_party_item_slot();
extern int play_sound_effect();
extern int init_item_slot();
extern int add_floor_item();
extern int refresh_floor_item_icon();
extern int aztec_strcpy();

/* Transfer selected loot to a party member or drop it on the floor. */
divvy_loot_menu()
{
	int selected_row, item_slot, result, member, quotient, remainder;
	char message[40];
	int floor_item_temp[6];

	load_message_string(MSG_DIVVY_LOOT, message);
	do {
		do {
			result = item_or_loot_dialog(MSG_DIVVY_LOOT, 0, 1, 1,
				loot_row_total, message);
			selected_row = dialog_selection;
		} while (selected_row == -1);
		draw_selected_button_label(result + MSG_DIVVY_LOOT, result,
			63, 150, 12, 16);
		if (result == 1) {
			if (mouse_active == 0)
				call_show_area(54, 142, 265, 198);
			member = pick_party_member();
			if (member != -1) {
				item_slot = find_empty_party_item_slot(member);
				if (item_slot == -1) {
					selected_row = -1;
					play_sound_effect(0);
				} else {
					quotient = item_slot / 256;
					remainder = item_slot % 256;
					init_item_slot(member, loot_row_value[selected_row],
						&party_records[member].item_slots[quotient][remainder],
							list_row_count[selected_row],
						loot_row_identified[selected_row]);
				}
			} else
				selected_row = -1;
		} else if (result == 2) {
			init_item_slot(0, loot_row_value[selected_row], floor_item_temp,
				list_row_count[selected_row], loot_row_identified[selected_row]);
			add_floor_item(floor_item_temp);
			refresh_floor_item_icon();
		}
		if (selected_row != -1) {
			--loot_row_total;
			for (item_slot = selected_row; item_slot < loot_row_total; item_slot++) {
				aztec_strcpy(list_row_name + item_slot * 22,
					list_row_name + (item_slot + 1) * 22);
				loot_row_value[item_slot] = loot_row_value[item_slot + 1];
				list_row_count[item_slot] = list_row_count[item_slot + 1];
				list_row_marked[item_slot] = list_row_marked[item_slot + 1];
				list_row_glyph[item_slot] = list_row_glyph[item_slot + 1];
				loot_row_flag2[item_slot] = loot_row_flag2[item_slot + 1];
				loot_row_identified[item_slot] = loot_row_identified[item_slot + 1];
			}
		}
	} while (loot_row_total > 0);
	call_show_area(54, 142, 265, 198);
}
