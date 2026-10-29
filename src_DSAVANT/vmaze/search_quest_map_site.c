/* Activity 4: search the carried quest map's site, then move on. */

#include "structs/questmap.h"
#include "structs/slotstat.h"

extern int random_below();
extern int log_slot_event();
extern int travel_to_destination();
extern struct quest_map quest_maps[];
extern struct slot_record slot_records[];

search_quest_map_site(slot_index)
int slot_index;
{
	int map;

	map = slot_records[slot_index].target;
	/* The longer the search, the likelier it ends. */
	slot_records[slot_index].map_piece++;
	if (random_below(slot_records[slot_index].map_piece) > 24) {
		log_slot_event(slot_index, map, 7, slot_records[slot_index].destination);
		/* Bit 12 + map: searched, which opens edges keyed by the map. */
		set_bitmap_bit(slot_records[slot_index].map_history, map + 12, 1);
		slot_records[slot_index].activity = 0;
		if (quest_maps[map].next_destination != -1) {
			slot_records[slot_index].destination =
			    quest_maps[map].next_destination;
			travel_to_destination(slot_index);
		}
	}
}
