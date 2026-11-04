/* weight one item slot contributes: its +2 per-unit value times its
   level, which counts the stack when the overlay kind stacks */

#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern char item_type_counted[];

int
item_slot_weight(pc, page, slot)
int pc, page, slot;
{
	int units;

	/* A counted item type is a stack whose level is its count. */
	units = item_type_counted[party_records[pc].item_slots[page][slot].item_type]
		== 1 ? party_records[pc].item_slots[page][slot].level : 1;
	if (units < 1)			/* every item counts as at least one unit */
		units = 1;
	return party_records[pc].item_slots[page][slot].weight * units;
}
