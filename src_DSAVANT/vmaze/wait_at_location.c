/* Activity 6: wait at a location, healing, and meet whoever is there. */

#include "structs/slotstat.h"

extern int random_below();
extern int heal_slot_health();
extern int meet_slots_here();
extern struct slot_record slot_records[];

wait_at_location(slot_index)
int slot_index;
{
	slot_records[slot_index].map_piece = random_below(16);
	if (slot_records[slot_index].location ==
	    slot_records[slot_index].home_location && random_below(10) == 0) {
		/* At home: fully healed, and sometimes settles in to linger. */
		slot_records[slot_index].health = slot_records[slot_index].max_health;
		if (random_below(10) == 0) {
			slot_records[slot_index].activity = 2;
			slot_records[slot_index].map_piece = 0;
			return;
		}
	} else if (heal_slot_health(slot_index, 2, 3) != 0)
		return;
	meet_slots_here(slot_index, -1);
	slot_records[slot_index].activity = 6;
}
