/* One time in three, heal a roaming NPC by base plus a random spread. */

#include "structs/slotstat.h"

extern int random_below();
extern struct slot_record slot_records[];

heal_slot_health(slot_index, base, spread)
int slot_index, base, spread;
{
	int health;

	/* Eight rolls in 24 heal; the rest leave the NPC as it is. */
	if (random_below(24) > 15) {
		health = random_below(spread) + slot_records[slot_index].health
		    + base;
		/* Never heal past the NPC's maximum. */
		if (slot_records[slot_index].max_health < health)
			health = slot_records[slot_index].max_health;
		slot_records[slot_index].health = health;
		return 1;
	}
	return 0;
}
