/* Send a roaming NPC to a random location it can reach and likes enough. */

#include "structs/location.h"
#include "structs/slotstat.h"

extern int random_below();
extern int test_bit();
extern int retreat_slot_if_wounded();
extern int travel_to_destination();
extern char faction_attitudes[];
extern struct location_record location_records[];
extern struct slot_record slot_records[];

choose_random_destination(slot_index)
int slot_index;
{
	int location, owner, attitude, reachable[26];

	aztec_setmem(reachable, sizeof(reachable), 0);
	/* Every NPC can reach these from the start. */
	reachable[0] = 1;
	reachable[1] = 1;
	reachable[2] = 1;
	reachable[5] = 1;
	reachable[7] = 1;
	for (location = 0; location < 26; location++) {
		if (location_records[location].reveals_location == 27)
			location_records[location].reveals_location = 8;
		if (test_bit(slot_records[slot_index].visited_locations, location))
			reachable[location_records[location].reveals_location] = 1;
	}
	for (location = 0; location < 26; location++) {
		if (test_bit(slot_records[slot_index].visited_locations, location))
			reachable[location] = 2;
	}
	if (retreat_slot_if_wounded(slot_index))
		return;
	/* Unreachable, disliked owners, and (3 in 4) visited places are redrawn. */
	do {
		location = random_below(26);
		owner = location_records[location].owner_faction;
		attitude = owner > 0
		    ? faction_attitudes[slot_records[slot_index].faction * 12 + owner]
		    : 0;
	} while (reachable[location] == 0
	    || random_below(100) + attitude < -35
	    || (random_below(4)
	    && test_bit(slot_records[slot_index].visited_locations, location)));
	slot_records[slot_index].destination = location;
	travel_to_destination(slot_index);
}
