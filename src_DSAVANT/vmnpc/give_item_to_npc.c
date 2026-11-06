/* Gives an item from a party member's inventory to the NPC. */
#include "structs/itemrec.h"
#include "structs/pcrec.h"
#include "msg.h"

extern int member_item_slot_indices[];
extern struct pc_rec party_records[];
extern char npc_slot_index;
extern unsigned char npc_level;
extern int npc_requested_item_id;
extern int data_record_io();
extern int is_quest_map_item();
extern int show_npc_message_with_delay();
extern int random_below();
extern int adjust_npc_attitudes();
extern int give_quest_map();
extern int clear_item_slot();
extern int remove_member_item_row();
extern int call_show_area();
extern int draw_party_member_panel();
extern int match_npc_event_trigger();

/* Processes the NPC response to a selected item offer. */
give_item_to_npc(member_index, row)
int member_index;
int row;
{
	int item_id;
	int item_page;
	int item_slot;
	struct item_record item_data;

	item_page = member_item_slot_indices[row] / 256;
	item_slot = member_item_slot_indices[row] % 256;
	item_id =
		party_records[member_index].item_slots[item_page][item_slot].item_id;
	data_record_io(1, &item_data, item_id, 0);
	if ((is_quest_map_item(item_id) && npc_slot_index == -1) ||
	    (!is_quest_map_item(item_id) && (item_data.slot_flags & 2) != 0 &&
	     item_id != npc_requested_item_id)) {
		show_npc_message_with_delay(MSG_YOU_NEED_IT, 101, 152);
		return 0;
	}
	if (party_records[member_index].item_slots[item_page][item_slot].flags & 1) {
		show_npc_message_with_delay(MSG_EQUIPPED, 101, 152);
		return 0;
	}
	adjust_npc_attitudes(member_index,
		item_data.price / 10 / (npc_level + 1),
		random_below(5) + 5);
	if (is_quest_map_item(item_id))
		give_quest_map(npc_slot_index, 21, item_id - 400);
	clear_item_slot(member_index, item_page, item_slot);
	remove_member_item_row(row);
	show_npc_message_with_delay(MSG_THANKS, 101, 152);
	call_show_area(54, 142, 265, 198);
	draw_party_member_panel(member_index, 1);
	return match_npc_event_trigger(member_index, 1, item_id, 0, 0);
}
