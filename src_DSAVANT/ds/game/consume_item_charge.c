/* Use one item charge and clear the slot when its last charge is consumed. */

#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern clear_item_slot();

consume_item_charge(pc, page, slot)
int pc, page, slot;
{
	if (party_records[pc].item_slots[page][slot].level > 0) {
		/* Clear the item only after its final charge is consumed. */
		party_records[pc].item_slots[page][slot].level--;
		if (party_records[pc].item_slots[page][slot].level == 0)
			clear_item_slot(pc, page, slot);
	}
}
