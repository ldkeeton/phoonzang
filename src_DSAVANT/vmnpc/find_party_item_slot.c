/* Finds an item slot in one of the party member’s two item rows. */

#include "structs/pcrec.h"

extern struct pc_rec party_records[];

/* Returns the encoded row and slot, or -1 when the item is absent. */
find_party_item_slot(member_index, item_id)
int member_index;
int item_id;
{
	int slot;
	int row;

	for (row = 0; row < 2; ++row) {
		for (slot = 0; slot < 10; ++slot) {
			if (party_records[member_index].item_slots[row][slot].item_id
				== item_id)
				return (row << 8) + slot;
		}
	}
	return -1;
}
