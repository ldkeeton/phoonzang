/* weight one item slot contributes: its +2 per-unit value times its
   level, which counts the stack when the overlay kind stacks */

#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern unsigned char cell_overlay_code[];

int
item_slot_weight(pc, page, slot)
int pc, page, slot;
{
	int units;

	/* +0x58: the overlay kind that stacks the item by its level */
	units = cell_overlay_code[party_records[pc].item_slots[page][slot].overlay
		+ 88] == 1 ? party_records[pc].item_slots[page][slot].level : 1;
	if (units < 1)			/* every item counts as at least one unit */
		units = 1;
	return party_records[pc].item_slots[page][slot].weight * units;
}
