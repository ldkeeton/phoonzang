/* power one item contributes: its +2 value times a level that
   scales with its overlay kind */

#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern unsigned char cell_overlay_code[];

int
item_slot_power(pc, page, slot)
int pc, page, slot;
{
	int power;

	/* +0x58: the overlay kind that scales the item by its level */
	power = cell_overlay_code[party_records[pc].item_slots[page][slot].overlay
		+ 88] == 1 ? party_records[pc].item_slots[page][slot].level : 1;
	if (power < 1)			/* every item counts as at least one level */
		power = 1;
	return party_records[pc].item_slots[page][slot].value * power;
}
