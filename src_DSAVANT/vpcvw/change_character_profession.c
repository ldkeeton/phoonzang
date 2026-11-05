/* Update a character profession and reset profession-specific progress. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int profession_eligible[];
extern int evaluate_character_professions();
extern int evaluate_character_profession();
extern int select_grid_text_option();
extern int unequip_item_slot();
extern void apply_race_stat_limits();
extern int refresh_member_inventory_panel();

/* Choose a profession and reset the member's level and equipment state. */
change_character_profession(character_index)
int character_index;
{
	int profession_index;
	int selected_profession;
	int profession_count;
	int item_slot;
	int profession_choices[20];

	evaluate_character_professions(character_index);
	profession_eligible[party_records[character_index].profession] = 0;
	profession_count = 1;
	for (profession_index = 0; profession_index <= 13; profession_index++) {
		profession_choices[profession_index] =
			profession_eligible[profession_index] == 1 ? 1 : 0;
		if (profession_choices[profession_index] != 0)
			profession_count++;
	}
	profession_choices[14] = 1;
	profession_choices[15] = -1;
	selected_profession = select_grid_text_option(
		120, MSG_SELECT_CHARACTER_PROFESSION, 57, 134, 11, 70, 12,
		(profession_count + 2) / 3, (profession_count + 2) / 3 * 3,
		1, -1, 0, profession_choices);
	if (selected_profession <= 13) {
		party_records[character_index].profession = selected_profession;
		if (party_records[character_index].level < 250) {
			if (party_records[character_index].pre_drain_level <
			    party_records[character_index].level)
				party_records[character_index].pre_drain_level =
					party_records[character_index].level;
		} else {
			party_records[character_index].pre_drain_level = 0;
		}
		party_records[character_index].level = 1;
		party_records[character_index].rank = 0;
		party_records[character_index].experience = 0L;
		apply_race_stat_limits(character_index, party_records[character_index].race);
		evaluate_character_profession(character_index,
			party_records[character_index].profession, 1);
		for (item_slot = 0; item_slot < 10; item_slot++) {
			if ((party_records[character_index].item_slots[0][item_slot].flags & 1) != 0
				&&
			    (party_records[character_index].item_slots[0][item_slot].flags & 2)
			    	== 0)
				unequip_item_slot(character_index, item_slot);
		}
		refresh_member_inventory_panel(character_index, 0);
	}
}
