/* Sells an item from a party member's inventory to the NPC for gold. */
#include "structs/itemrec.h"
#include "structs/pcrec.h"
#include "msg.h"

extern int member_item_slot_indices[];
extern struct pc_rec party_records[];
extern unsigned char npc_level;
extern char npc_slot_index;
extern int npc_requested_item_id;
extern char npc_choice_message_buffer[80];
extern char npc_effect_message_buffer[80];
extern char npc_substitution_text[80];
extern char list_row_name[];
extern unsigned char item_type_counted[];
extern int npc_sell_price_percent;
extern int data_record_io();
extern int is_quest_map_item();
extern int show_npc_message_with_delay();
extern int show_npc_offer_choice_dialog();
extern int give_quest_map();
extern int clear_item_slot();
extern int remove_member_item_row();
extern int draw_party_member_panel();
extern int match_npc_event_trigger();
extern int load_message_string();
extern int format_long_decimal();
extern int str_subst_char();
extern int aztec_strcpy();
extern int replace_slashes_with_spaces();

sell_item_to_npc(member_index, row)
int member_index;
int row;
{
	int choice;
	int item_level;
	int stack_quantity;
	int item_id;
	int item_page;
	int item_slot;
	struct item_record item_data;
	int choices[5];

	item_page = member_item_slot_indices[row] / 256;
	item_slot = member_item_slot_indices[row] % 256;
	item_id =
		party_records[member_index].item_slots[item_page][item_slot].item_id;
	data_record_io(1, &item_data, item_id, 0);
	item_level = item_data.level_spec.count * item_data.level_spec.span +
		item_data.level_spec.base;
	if (item_level < 1)
		item_level = 1;
	stack_quantity =
		party_records[member_index].item_slots[item_page][item_slot].level;
	if (stack_quantity < 1)
		stack_quantity = 1;

	if (item_type_counted[item_data.item_type] == 1)
		item_data.price *= stack_quantity;
	else
		item_data.price = item_data.price * 100 /
			item_level * stack_quantity / 100;

	item_data.price = is_quest_map_item(item_id)
		? item_data.price
		: item_data.price * npc_sell_price_percent / 100;

	if ((is_quest_map_item(item_id) && npc_slot_index == -1) ||
	    (!is_quest_map_item(item_id) &&
	     ((item_data.slot_flags & 2) != 0 && item_id != npc_requested_item_id))) {
		show_npc_message_with_delay(MSG_YOU_NEED_IT, 101, 152);
		return 0;
	}
	if ((item_data.price <= 0 && item_id != npc_requested_item_id) ||
	    item_id == 410) {
		show_npc_message_with_delay(MSG_NO_THANKS, 101, 152);
		return 0;
	}
	if (party_records[member_index].item_slots[item_page][item_slot].flags & 1) {
		show_npc_message_with_delay(MSG_EQUIPPED, 101, 152);
		return 0;
	}

	load_message_string(MSG_ACCEPT_GP_FOR, npc_choice_message_buffer);
	format_long_decimal(item_data.price, npc_effect_message_buffer);
	str_subst_char(npc_choice_message_buffer, npc_effect_message_buffer, '$');
	load_message_string(MSG_YOUR, npc_effect_message_buffer);
	aztec_strcpy(npc_substitution_text, list_row_name + row * 22);
	replace_slashes_with_spaces(npc_substitution_text);
	str_subst_char(npc_effect_message_buffer, npc_substitution_text, '$');

	for (choice = 0; choice <= 1; choice++)
		choices[choice] = 1;
	choices[2] = -1;
	choice = show_npc_offer_choice_dialog(npc_choice_message_buffer,
		npc_effect_message_buffer, 1589, 74, 181, 11, 106, 12, 1, 2, 1,
		-1, 1, choices);
	if (choice == 0) {
		item_id =
			party_records[member_index].item_slots[item_page][item_slot].item_id;
		if (is_quest_map_item(item_id))
			give_quest_map(npc_slot_index, 21, item_id - 400);
		clear_item_slot(member_index, item_page, item_slot);
		remove_member_item_row(row);
		party_records[member_index].gold += item_data.price;
		draw_party_member_panel(member_index, 1);
		return match_npc_event_trigger(member_index, 3, item_id, 0, 0);
	}
	return 0;
}
