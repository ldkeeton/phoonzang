/* A party member buys an NPC shop item. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int npc_item_list_item_id[];
extern unsigned char npc_item_list_profession_mask[];
extern unsigned char npc_item_list_race_mask[];
extern unsigned char npc_item_list_gender_mask[];
extern unsigned int npc_item_list_item_count[];
extern long npc_item_list_value[];
extern char npc_slot_index;
extern int test_bit();
extern int show_npc_message_with_delay();
extern int find_removable_party_item_slot();
extern int is_quest_map_item();
extern int give_quest_map();
extern int init_item_slot();
extern int build_member_item_list();
extern int compact_npc_item_rows();
extern int match_npc_event_trigger();

buy_npc_item(member_index, row)
int member_index;
int row;
{
	int removable_slot;
	int item_id;
	int item_row;
	int item_slot;

	item_id = npc_item_list_item_id[row];
	if (!test_bit(npc_item_list_profession_mask + row * 2,
			party_records[member_index].profession) ||
		!test_bit(npc_item_list_race_mask + row * 2,
			party_records[member_index].race) ||
		!test_bit(npc_item_list_gender_mask + row,
			party_records[member_index].gender)) {
		show_npc_message_with_delay(1506, 73, 155);
		return 0;
	}

	removable_slot = find_removable_party_item_slot(member_index, 0);
	if (removable_slot == -1) {
		show_npc_message_with_delay(1505, 73, 155);
		return 0;
	}
	if (party_records[member_index].gold < npc_item_list_value[row]) {
		show_npc_message_with_delay(1503, 73, 155);
		return 0;
	}
	show_npc_message_with_delay(1507, 73, 155);
	if (is_quest_map_item(item_id))
		give_quest_map(21, npc_slot_index, item_id - 400);

	item_row = removable_slot / 256;
	item_slot = removable_slot % 256;
	init_item_slot(member_index, item_id,
		&party_records[member_index].item_slots[item_row][item_slot],
		npc_item_list_item_count[row], 1);
	build_member_item_list(member_index);
	party_records[member_index].gold -= npc_item_list_value[row];
	npc_item_list_item_id[row] = 0;
	compact_npc_item_rows();
	match_npc_event_trigger(member_index, 4, item_id, 0, 0);
}
