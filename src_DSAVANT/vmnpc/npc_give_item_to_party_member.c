/* grant an NPC item to a suitable party inventory slot */
#include "structs/pcrec.h"
#include "msg.h"

extern int find_removable_party_item_slot();
extern int party_char_count;
extern struct pc_rec party_records[];
extern int is_quest_map_item();
extern int init_item_slot();
extern char npc_slot_index;
extern int give_quest_map();
extern char npc_choice_message_buffer[];
extern int load_message_string(), str_subst_char();
extern int display_npc_text_message();
extern int text_line_index;
extern char text_line_buffer[];
extern int aztec_strlen(), aztec_strcat();
extern int text_line_color[];
extern int next_text_line(), play_sound_effect();

/* choose a recipient slot, insert the item, and show the NPC message */
npc_give_item_to_party_member(member_index, item_id, message_mode)
int member_index;
int item_id;
int message_mode;
{
	int chosen_item_slot;
	int item_page;
	int search_index;
	int recipient_index;

	chosen_item_slot = find_removable_party_item_slot(member_index, 0);
	recipient_index = member_index;
	search_index = 0;
	for (; search_index < party_char_count && chosen_item_slot == -1;
		search_index++) {
		chosen_item_slot = find_removable_party_item_slot(search_index, 0);
		recipient_index = search_index;
	}
	if (chosen_item_slot == -1) {
		search_index = 0;
		for (; search_index < party_char_count && chosen_item_slot == -1;
			search_index++) {
			chosen_item_slot = find_removable_party_item_slot(search_index, 1);
			recipient_index = search_index;
		}
	}
	if (chosen_item_slot == -1) {
		chosen_item_slot = 0;
		search_index = 0;
		recipient_index = 0;
		for (;;) {
			if (!is_quest_map_item(party_records[0].
				item_slots[search_index][chosen_item_slot].item_id))
				break;
			chosen_item_slot++;
			if (chosen_item_slot == 10) {
				chosen_item_slot = 0;
				search_index++;
			}
		}
	}
	item_page = chosen_item_slot / 256;
	search_index = chosen_item_slot % 256;
	init_item_slot(recipient_index, item_id,
		&party_records[recipient_index].item_slots[item_page][search_index],
		-2, 1);
	if (is_quest_map_item(item_id))
		give_quest_map(21, npc_slot_index, item_id - 400);
	load_message_string(MSG_GOT_AN_ITEM, npc_choice_message_buffer);
	str_subst_char(npc_choice_message_buffer, &party_records[recipient_index],
		94);
	if (message_mode == 1) {
		display_npc_text_message(npc_choice_message_buffer, 1, 1, 1);
	} else if (message_mode == 2) {
		load_message_string(MSG_1509,
			text_line_buffer + (text_line_index << 7));
		text_line_buffer[(text_line_index << 7) +
			(30 - aztec_strlen(npc_choice_message_buffer)) / 2] = 0;
		aztec_strcat(text_line_buffer + (text_line_index << 7),
			npc_choice_message_buffer);
		text_line_color[text_line_index] = 0;
		next_text_line();
		play_sound_effect(0);
	}
}
