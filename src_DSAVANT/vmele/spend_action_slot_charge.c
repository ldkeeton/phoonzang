/* decays every member's action-slot charge and ticks each slot's delay down */

#include "structs/member.h"

extern struct member_rec *party_char[];
extern int party_buff_turns;		/* passes left for the party buff */
extern int party_buff_charge;		/* buff charge given to each member */

spend_action_slot_charge()
{
	int member, slot, cost, value;

	for (member = 0; member < 7; member++) {
		for (slot = 0; slot < 6; slot++) {
			value = party_char[member]->charge[slot];
			if (value > 0) {
				/* each action slot burns its charge at its own rate */
				switch (slot) {
				case 0:
					cost = value / 10;
					break;
				case 1:
					cost = value / 10;
					break;
				case 2:
					cost = value / 12;
					break;
				case 3:
					cost = value / 12;
					break;
				case 4:
					cost = value / 20;
					break;
				case 5:
					cost = 1;
					break;
				}
				if (cost < 1)
					cost = 1;	/* always burn something */
				value -= cost;
				if (value < 0)
					value = 0;
				party_char[member]->charge[slot] = value;
			}
		}
		for (slot = 0; slot < 6; slot++)
			if (party_char[member]->delay[slot] > 0)
				party_char[member]->delay[slot]--;
	}
	/* 0x190 shares slot 4's charge byte: it carries the buff charge */
	if (party_buff_turns > 0)
		party_buff_charge = party_char[0]->charge[4];
	if (party_buff_charge <= 0) {
		party_buff_turns = 0;
		party_buff_charge = 0;
	}
}
