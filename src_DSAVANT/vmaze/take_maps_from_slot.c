/* After a fight: the winner learns what the loser knows and takes its maps. */

#include "structs/slotstat.h"

extern int test_bit();
extern int log_slot_event();
extern int give_quest_map();
extern struct slot_record slot_records[];

take_maps_from_slot(winner, loser)
int winner, loser;
{
	int map, unused;

	for (map = 0; map < 11; map++) {
		if (test_bit(slot_records[loser].known_maps, map))
			set_bitmap_bit(slot_records[winner].known_maps, map, 1);
		if (test_bit(slot_records[loser].held_maps, map)) {
			log_slot_event(winner, map, 3, loser);
			give_quest_map(winner, loser, map);
		}
	}
}
