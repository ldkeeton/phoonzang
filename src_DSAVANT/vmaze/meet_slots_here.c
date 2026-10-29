/* Roll meetings between a roaming NPC and the others at its location. */

#include "structs/slotstat.h"

extern int random_below();
extern int trade_with_slot();
extern int fight_slot();
extern int choose_random_destination();
extern int mark_slot_pair_processed();
extern char faction_attitudes[];
extern unsigned char slot_pair_processed[];
extern struct slot_record slot_records[];

meet_slots_here(slot_index, chased)
int slot_index, chased;
{
	int result, unused, other, attitude;

	for (other = 0; other < 22; other++) {
		if (other == slot_index)
			continue;
		if (slot_records[other].health <= 0)
			continue;
		if (slot_pair_processed[slot_index * 22 + other])
			continue;
		if (slot_records[slot_index].location != slot_records[other].location)
			continue;
		/* The chased NPC is always met; others only on a matching roll. */
		if (other != chased) {
			if (random_below(slot_records[slot_index].map_piece)
			    != random_below(slot_records[other].map_piece))
				continue;
			if (!(slot_records[other].activity == 3
			    || slot_records[other].activity == 0
			    || (slot_records[slot_index].activity == 6
			    && slot_records[other].activity != 1)))
				continue;
		}
		attitude = faction_attitudes[slot_records[slot_index].faction * 12
		    + slot_records[other].faction];
		if (random_below(10) + 25 <= attitude) {
			trade_with_slot(slot_index, other, attitude);
			if (other == chased)
				choose_random_destination(slot_index);
		} else if (slot_records[slot_index].health
		    - slot_records[other].health - 35 - random_below(10) >= attitude) {
			/* The original compares health with half of itself. */
			if (other == chased || (random_below(3)
			    && slot_records[slot_index].health
			    > slot_records[slot_index].health / 2)) {
				result = fight_slot(slot_index, other);
				if (other == chased && result == 1 && random_below(3) == 0)
					slot_records[slot_index].activity = 0;
				else if (result == -1)
					return;
			}
		} else
			mark_slot_pair_processed(slot_index, other);
	}
}
