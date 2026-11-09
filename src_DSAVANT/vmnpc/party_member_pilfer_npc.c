/* A party member attempts to pilfer from the NPC. */
#include "structs/pcrec.h"
#include "msg.h"
#include "structs/npc.h"
extern struct npc_record npc_record;

extern struct pc_rec party_records[];
extern int npc_record_index;
extern int npc_charm_bonus;
extern int npc_item_list_count;
extern int npc_item_list_item_id[];
extern unsigned int npc_item_list_item_count[];
extern int npc_pilfer_roll_bias;
extern int random_below();
extern int find_removable_party_item_slot();
extern int compact_npc_item_rows();
extern int try_raise_member_skill();
extern int is_quest_map_item();
extern int load_message_string();
extern int str_subst_char();
extern int display_npc_text_message();
extern int init_item_slot();
extern int adjust_npc_attitudes();
extern int match_npc_event_trigger();

/* Resolves the attempt and applies its outcome. */
party_member_pilfer_npc(member_index)
int member_index;
{
	int pilfer_chance;
	int detection_roll;
	int maximum_gold;
	int removable_slot;
	int selected_row;
	int item_page;
	int item_slot;
	char message[80];

	pilfer_chance = (party_records[member_index].level -
		npc_record.level) * 5 +
		party_records[member_index].skills[15] / 2;
	if (party_records[member_index].profession == 3)
		pilfer_chance += party_records[member_index].stat[4] * 2;
	else if (party_records[member_index].profession == 4 ||
		party_records[member_index].profession == 6 ||
		party_records[member_index].profession == 13)
		pilfer_chance += party_records[member_index].stat[4];
	pilfer_chance = (party_records[member_index].stat[6] +
		(party_records[member_index].pad1[npc_record_index] +
		npc_charm_bonus) / 4) + pilfer_chance - 10;
	if (pilfer_chance < 0 || npc_record_index == 48)
		pilfer_chance = 0;
	if (pilfer_chance > 95)
		pilfer_chance = 95;

	detection_roll = random_below(100) + npc_pilfer_roll_bias;
	npc_pilfer_roll_bias += random_below(5) + 10;
	load_message_string(MSG_MAKES_HIS_MOVE + party_records[member_index].gender,
		message);
	str_subst_char(message, &party_records[member_index], 94);
	display_npc_text_message(message, 1, 0, 85);

	selected_row = 0;
	while (random_below(npc_item_list_count) > selected_row)
		selected_row++;

	maximum_gold = random_below(100) * (npc_record.level + 1) / 2;
	if (maximum_gold > npc_record.gold)
		maximum_gold = npc_record.gold;

	if (detection_roll < pilfer_chance) {
		removable_slot = find_removable_party_item_slot(member_index, 0);
		compact_npc_item_rows();
		try_raise_member_skill(member_index, 15, 3);
		if (removable_slot == -1 || npc_item_list_count <= 0 ||
			is_quest_map_item(npc_item_list_item_id[selected_row]) ||
			random_below(100) < 33) {
			if (maximum_gold <= 0) {
				load_message_string(MSG_PILFER_FAILED_1572, message);
			} else {
				npc_record.gold -= maximum_gold;
				party_records[member_index].gold += maximum_gold;
				load_message_string(MSG_STOLE_SOME_GOLD, message);
			}
		} else {
			item_page = removable_slot / 256;
			item_slot = removable_slot % 256;
			init_item_slot(member_index, npc_item_list_item_id[selected_row],
				&party_records[member_index].item_slots[item_page][item_slot],
				npc_item_list_item_count[selected_row], 0);
			load_message_string(MSG_STOLE_AN_ITEM, message);
			npc_item_list_item_id[selected_row] = 0;
			compact_npc_item_rows();
		}
	} else if (pilfer_chance * 2 < detection_roll || detection_roll >= 95) {
		load_message_string(MSG_GOT_CAUGHT, message);
		str_subst_char(message, &party_records[member_index], 94);
		display_npc_text_message(message, 1, 1, 22);
		if (npc_record_index != 48)
			adjust_npc_attitudes(member_index,
				0 - (random_below(25) + 25),
				0 - (random_below(15) + 15));
		match_npc_event_trigger(member_index, 10, 0, 0, 0);
		return -1;
	} else {
		load_message_string(MSG_PILFER_FAILED_1572, message);
	}

	str_subst_char(message, &party_records[member_index], 94);
	display_npc_text_message(message, 1, 1, 85);
	return 0;
}
