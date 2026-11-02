/* Find the first empty item slot in either item-slot bank. */
#include "structs/pcrec.h"
extern struct pc_rec party_records[];

find_empty_party_item_slot(party_index)
int party_index;
{
	int bank_index;
	int slot_index;

	/* Search both banks, then each of their ten slots. */
	for (bank_index = 0; bank_index < 2; bank_index++) {
		for (slot_index = 0; slot_index < 10; slot_index++) {
			/* A zero item id marks a free slot. */
			if (party_records[party_index].item_slots[bank_index][slot_index].item_id
				== 0)
				return bank_index * 256 + slot_index;
		}
	}
	return -1;
}
