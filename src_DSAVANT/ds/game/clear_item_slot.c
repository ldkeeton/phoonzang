/* empties one 12-byte item slot in a party record */

#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern unequip_item_slot();

clear_item_slot(pc, page, slot)
int pc, page, slot;
{
	if (page == 0)			/* page 0 slots are unequipped first */
		unequip_item_slot(pc, slot);
	party_records[pc].item_slots[page][slot].item_id = 0;
}
