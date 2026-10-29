/* Activity 0: decide what a roaming NPC does next. */

#include "structs/questmap.h"
#include "structs/slotstat.h"

extern int slot_is_at_location();
extern int test_bit();
extern int log_slot_event();
extern int retreat_slot_if_wounded();
extern int travel_to_destination();
extern int choose_random_destination();
extern struct quest_map quest_maps[];
extern struct slot_record slot_records[];

choose_slot_goal(slot_index)
int slot_index;
{
	int map, location;

	/* Arrived somewhere new: log it and linger. */
	if (slot_is_at_location(slot_index, slot_records[slot_index].destination)
	    && !test_bit(slot_records[slot_index].visited_locations,
	    slot_records[slot_index].destination)) {
		log_slot_event(slot_index, slot_records[slot_index].destination, 6,
		    slot_records[slot_index].destination);
		slot_records[slot_index].activity = 2;
		slot_records[slot_index].map_piece = 0;
		return;
	}
	if (retreat_slot_if_wounded(slot_index))
		return;
	/* Work through the maps in order; the first one not yet held decides. */
	for (map = 0; map < 11; map++) {
		if (test_bit(slot_records[slot_index].map_history, map)) {
			/* Held it once: search its site unless already done. */
			if (!test_bit(slot_records[slot_index].map_history, map + 12)) {
				location = quest_maps[map].site_location;
				if (slot_is_at_location(slot_index, location)) {
					slot_records[slot_index].target = map;
					slot_records[slot_index].activity = 4;
					slot_records[slot_index].map_piece = 0;
					return;
				}
				slot_records[slot_index].destination = location;
				travel_to_destination(slot_index);
				return;
			}
		} else if (test_bit(slot_records[slot_index].known_maps, map)) {
			if (quest_maps[map].status == 1) {
				/* Hidden: go to where it lies. */
				slot_records[slot_index].destination =
				    quest_maps[map].holder;
				travel_to_destination(slot_index);
			} else if (quest_maps[map].status == 0) {
				/* Carried: chase the carrier. */
				slot_records[slot_index].destination =
				    slot_records[quest_maps[map].holder].destination;
				slot_records[slot_index].target = quest_maps[map].holder;
				travel_to_destination(slot_index);
				if (slot_records[slot_index].activity == 0) {
					choose_random_destination(slot_index);
					return;
				}
				slot_records[slot_index].activity = 5;
				log_slot_event(slot_index, map, 10,
				    slot_records[slot_index].target);
			}
			return;
		} else {
			/* Knows of nothing to chase: wander. */
			choose_random_destination(slot_index);
			return;
		}
	}
	choose_random_destination(slot_index);
}
