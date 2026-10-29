/* One time in four, pick up a quest map hidden at the destination. */

#include "structs/questmap.h"
#include "structs/slotstat.h"

extern int random_below();
extern int test_bit();
extern int log_slot_event();
extern int give_quest_map();
extern struct quest_map quest_maps[];
extern struct slot_record slot_records[];

take_quest_map_here(slot_index)
int slot_index;
{
	int map, unused, location;

	location = slot_records[slot_index].destination;
	for (map = 0; map < 11; map++) {
		/* Only the first map hidden here counts. */
		if (quest_maps[map].status > 0 && quest_maps[map].holder == location) {
			/* The NPC must know of it and never have held it. */
			if (test_bit(slot_records[slot_index].known_maps, map)
			    && !test_bit(slot_records[slot_index].map_history, map)
			    && random_below(4) == 0) {
				log_slot_event(slot_index, map, 4, location);
				give_quest_map(slot_index, -1, map);
			}
			return;
		}
	}
}
