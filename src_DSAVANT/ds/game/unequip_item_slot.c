/* the eight-slot equipped order of one party record */

#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern clamp_between();
extern reset_hand_attack();

/* clears an item's equipped flag, drops it from the pc's eight-slot order and
   re-spaces the slots that remain */
unequip_item_slot(pc, slot)
int pc, slot;
{
	int i, j, q, r;

	party_records[pc].item_slots[0][slot].flags &= ~1;
	party_records[pc].attack = 0;
	party_records[pc].defense = 0;
	for (i = 0; i < 14; i++)		/* carry the spacing into the new frame */
		party_records[pc].cur[i] =
			party_records[pc].prev[i];
	for (i = 0; i < 8; i++) {
		if (party_records[pc].order[i] == slot) {
			party_records[pc].order[i] = 255;
			switch (i) {
			case 0:
			case 1:		/* slots 0 and 1 also reset their 0x12-byte record */
				reset_hand_attack(pc, i);
				party_records[pc].count[1] +=
					party_records[pc].item_slots[0][slot].weight;
				break;
			case 2:		/* slot 2 starts over at zero */
				party_records[pc].count[2] = 0;
				break;
			case 3:
			case 4:
			case 5:
			case 6:
			case 7:		/* later slots inherit slot 0's count */
				party_records[pc].count[i] =
					party_records[pc].count[0];
				break;
			}
		}
		if (party_records[pc].order[i] == 255)
			continue;		/* slot already empty */
		for (j = 0; j < 2; j++) {	/* the cell's two packed positions */
			q = party_records[pc].item_slots[0]
				[party_records[pc].order[i]].pos[j] / 16;
			r = party_records[pc].item_slots[0]
				[party_records[pc].order[i]].pos[j] %
				16 * 10;	/* ten pixels per low nibble */
			party_records[pc].cur[q] =
				clamp_between(party_records[pc].cur[q] +
				r, 0, 125);	/* 0x7d: highest allowed position */
		}
		q = party_records[pc].item_slots[0]
			[party_records[pc].order[i]].coord / 16;
		r = party_records[pc].item_slots[0]
			[party_records[pc].order[i]].coord % 16;
		party_records[pc].attack =
			party_records[pc].attack < r ?
			r : party_records[pc].attack;
		party_records[pc].defense =
			party_records[pc].defense < q ?
			q : party_records[pc].defense;
	}
}
