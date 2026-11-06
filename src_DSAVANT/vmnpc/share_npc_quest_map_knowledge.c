/* Shares quest-map knowledge between the active slot and the party. */
#include "structs/slotstat.h"

extern struct slot_record slot_records[];
extern char npc_slot_index;
extern int test_bit(), set_bitmap_bit(), random_below();
extern int show_quest_map_information(), select_npc_event_message();

share_npc_quest_map_knowledge()
{
	int map_index;
	int showed_map;

	showed_map = 0;
	for (map_index = 0; map_index < 11; ++map_index) {
		if (test_bit(slot_records[21].known_maps, map_index))
			set_bitmap_bit(slot_records[npc_slot_index].known_maps,
				map_index, 1);

		if (test_bit(slot_records[npc_slot_index].known_maps,
		    map_index)) {
			set_bitmap_bit(slot_records[21].known_maps, map_index, 1);
		}

		if (test_bit(slot_records[npc_slot_index].known_maps,
		    map_index)) {
			show_quest_map_information(map_index);
			showed_map = 1;
		}

		if (random_below(3) == 0 &&
		    select_npc_event_message(-1, 1, 1) == 0)
			showed_map = 1;
	}
	return showed_map;
}
