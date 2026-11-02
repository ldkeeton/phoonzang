/* take off one equipped item and recompute what equipment grants */

#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern clamp_between();
extern reset_hand_attack();

/* clears an item's equipped flag, frees its equip position, then rebuilds
   resist[], hp_regen and hp_drain from the items still worn */
unequip_item_slot(pc, slot)
int pc, slot;
{
	int i, j, q, r;

	party_records[pc].item_slots[0][slot].flags &= ~1;
	party_records[pc].hp_regen = 0;
	party_records[pc].hp_drain = 0;
	for (i = 0; i < 14; i++)		/* start again from the base resistances */
		party_records[pc].resist[i] =
			party_records[pc].base_resist[i];
	for (i = 0; i < 8; i++) {
		if (party_records[pc].equipped[i] == slot) {
			party_records[pc].equipped[i] = 255;
			switch (i) {
			case 0:
			case 1:		/* weapon hands: reset the hand's attack, give back its AC */
				reset_hand_attack(pc, i);
				party_records[pc].armor_class[1] +=
					party_records[pc].item_slots[0][slot].armor_class;
				break;
			case 2:		/* slot 2 starts over at zero */
				party_records[pc].armor_class[2] = 0;
				break;
			case 3:
			case 4:
			case 5:
			case 6:
			case 7:		/* later slots reset to the base armor class */
				party_records[pc].armor_class[i] =
					party_records[pc].armor_class[0];
				break;
			}
		}
		if (party_records[pc].equipped[i] == 255)
			continue;		/* slot already empty */
		for (j = 0; j < 2; j++) {	/* two resistance bonuses per item */
			q = party_records[pc].item_slots[0]
				[party_records[pc].equipped[i]].resist_bonus[j] / 16;
			r = party_records[pc].item_slots[0]
				[party_records[pc].equipped[i]].resist_bonus[j] %
				16 * 10;	/* low nibble in steps of 10% */
			party_records[pc].resist[q] =
				clamp_between(party_records[pc].resist[q] +
				r, 0, 125);	/* resistances cap at 125 */
		}
		q = party_records[pc].item_slots[0]
			[party_records[pc].equipped[i]].regen_drain / 16;
		r = party_records[pc].item_slots[0]
			[party_records[pc].equipped[i]].regen_drain % 16;
		party_records[pc].hp_regen =
			party_records[pc].hp_regen < r ?
			r : party_records[pc].hp_regen;
		party_records[pc].hp_drain =
			party_records[pc].hp_drain < q ?
			q : party_records[pc].hp_drain;
	}
}
