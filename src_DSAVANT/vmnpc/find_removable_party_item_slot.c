/* find an empty or removable party inventory slot */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int is_quest_map_item();

/* Finds an empty or removable item slot in a party member's inventory. */
find_removable_party_item_slot(member_index, include_quest_maps)
int member_index;
int include_quest_maps;
{
	int member_row;
	int slot;

	for (member_row = 0; member_row < 2; ++member_row) {
		for (slot = 0; slot < 10; ++slot) {
			if (party_records[member_index].item_slots[member_row][slot].item_id == 0)
				return (member_row << 8) + slot;

			if (include_quest_maps) {
				if ((party_records[member_index].item_slots[member_row][slot].flags & 1)
				|| (party_records[member_index].item_slots[member_row][slot].flags & 64)
				|| is_quest_map_item(
					party_records[member_index].item_slots[member_row][slot].item_id)) {
				} else
					return (member_row << 8) + slot;
			}
		}
	}

	return -1;
}
