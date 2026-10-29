/* Hand a quest map to a slot and update who knows where it is. */

#include "structs/questmap.h"
#include "structs/slotstat.h"

extern struct quest_map quest_maps[];
extern struct slot_record slot_records[];

/* The previous holder still knows where the map went. */
give_quest_map(new_slot, previous_slot, map)
int new_slot, previous_slot, map;
{
	int slot_index;

	quest_maps[map].holder = new_slot;
	quest_maps[map].status = 0;
	set_bitmap_bit(slot_records[new_slot].held_maps, map, 1);
	set_bitmap_bit(slot_records[new_slot].map_history, map, 1);
	for (slot_index = 0; slot_index < 22; slot_index++) {
		/* Nobody else knows where the map is now. */
		set_bitmap_bit(slot_records[slot_index].known_maps, map, 0);
	}
	set_bitmap_bit(slot_records[new_slot].known_maps, map, 1);
	if (previous_slot != -1) {	/* -1 means it was not carried. */
		set_bitmap_bit(slot_records[previous_slot].held_maps, map, 0);
		set_bitmap_bit(slot_records[previous_slot].known_maps, map, 1);
	}
}
