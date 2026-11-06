/* Lets a party member use an inventory item (its spell) on the NPC. */
#include "structs/itemrec.h"
#include "structs/pcrec.h"
#include "structs/spell.h"
#include "msg.h"

extern int member_item_count;
extern int member_item_slot_indices[];
extern int dialog_selection;
extern int npc_spell_target;
extern struct pc_rec party_records[];
extern struct spell_table_view spell_table[];
extern int build_member_item_list();
extern int redraw_area_set();
extern int wait_for_npc_screen_animation();
extern int single_action_item_dialog();
extern int call_show_area();
extern int draw_selected_button_label();
extern int data_record_io();
extern int pick_party_member();
extern int consume_item_charge();
extern int apply_spell_to_npc();
extern int draw_party_member_panel();
extern int match_npc_event_trigger();

use_item_on_npc(member_index)
int member_index;
{
	int selection;
	struct item_record item_data;
	int dialog_result;
	int item_page;
	int item_slot;
	int spell_index;
	int spell_power;
	int item_menu_state[10];

	build_member_item_list(member_index);
	if (member_item_count == 0)
		return;
	redraw_area_set(0);
	wait_for_npc_screen_animation();
	dialog_result = single_action_item_dialog(MSG_USE_1514, 0, 1, 1,
		member_item_count, &party_records[member_index]);
	selection = dialog_selection;
	if (dialog_result == 2 || selection == -1) {
		call_show_area(54, 142, 265, 198);
		return;
	}
	item_page = member_item_slot_indices[selection] / 256;
	item_slot = member_item_slot_indices[selection] % 256;
	draw_selected_button_label(MSG_USE_1514 + dialog_result,
		dialog_result, 63, 150, 12, 16);
	if (dialog_result == 1) {
		data_record_io(1, &item_data,
			party_records[member_index].item_slots[item_page][item_slot].item_id,
			0);
		if (item_data.spell_code != 0) {
			spell_power = item_data.spell_code / 256;
			spell_index = item_data.spell_code % 256;
			if (spell_table[0].spell[spell_index].targeting.bytes.targeted == 1) {
				npc_spell_target = pick_party_member();
				if (npc_spell_target == -1)
					spell_index = -1;
			}
			if (spell_index != -1) {
				call_show_area(54, 142, 265, 198);
				consume_item_charge(member_index, item_page, item_slot);
				apply_spell_to_npc(member_index, spell_index,
					spell_power, npc_spell_target);
			}
		}
	}
	call_show_area(54, 142, 265, 198);
	draw_party_member_panel(member_index, 1);
	if (dialog_result == 1)
		match_npc_event_trigger(member_index, 9,
			party_records[member_index].item_slots[item_page][item_slot].item_id,
			0, 0);
}
