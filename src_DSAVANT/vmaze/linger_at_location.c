/* Activity 2: linger at the destination, meeting NPCs and learning of maps. */

#include "structs/location.h"
#include "structs/slotstat.h"

extern int random_below();
extern int slot_is_at_location();
extern int heal_slot_health();
extern int choose_random_destination();
extern int trade_with_slot();
extern int fight_slot();
extern int mark_slot_pair_processed();
extern int take_quest_map_here();
extern int learn_location_rumor();
extern char faction_attitudes[];
extern unsigned char slot_pair_processed[];
extern struct location_record location_records[];
extern struct slot_record slot_records[];

linger_at_location(slot_index)
int slot_index;
{
	int unused1, result, location, owner, owner_attitude, other, attitude,
	    unused2;

	if (!slot_is_at_location(slot_index, slot_records[slot_index].destination)) {
		slot_records[slot_index].activity = 0;
		return;
	}
	slot_records[slot_index].map_piece++;
	if (heal_slot_health(slot_index, 2, 3))
		return;
	location = slot_records[slot_index].destination;
	owner = location_records[location].owner_faction;
	/* A disliked owner may drive the NPC off at a run. */
	if (owner > 0 && random_below(4) == 0) {
		owner_attitude = faction_attitudes[slot_records[slot_index].faction * 12
		    + owner];
		if (random_below(100) - 100 > owner_attitude && random_below(4) == 0) {
			choose_random_destination(slot_index);
			slot_records[slot_index].activity = 7;
			return;
		}
	}
	/* Meet the NPCs lingering or resting here. */
	for (other = 0; other < 22; other++) {
		if (other == slot_index)
			continue;
		if (slot_records[other].health <= 0)
			continue;
		if (slot_pair_processed[slot_index * 22 + other])
			continue;
		if (!slot_is_at_location(other, location))
			continue;
		if (!(slot_records[other].activity == 2
		    || slot_records[other].activity == 1))
			continue;
		if (random_below(4) != 0)
			continue;
		attitude = faction_attitudes[slot_records[slot_index].faction * 12
		    + slot_records[other].faction];
		if (random_below(10) + 25 <= attitude)
			trade_with_slot(slot_index, other, attitude);
		else if (slot_records[slot_index].health
		    - slot_records[other].health - 35 - random_below(25) >= attitude) {
			if (random_below(3) && slot_records[slot_index].health
			    > slot_records[other].health / 2) {
				result = fight_slot(slot_index, other);
				if ((result == 0 && random_below(3) != 0) || result == -1)
					return;
			}
		} else {
			mark_slot_pair_processed(slot_index, other);
			if (random_below(5) == 0)
				slot_records[slot_index].activity = 0;
			if (random_below(3) == 0)
				return;
		}
	}
	/* Every fourth turn here: look for maps and mark the place visited. */
	if (slot_records[slot_index].map_piece % 4 == 0) {
		take_quest_map_here(slot_index);
		learn_location_rumor(slot_index);
		set_bitmap_bit(slot_records[slot_index].visited_locations, location, 1);
	}
	if (slot_records[slot_index].home_location == location)
		slot_records[slot_index].health = slot_records[slot_index].max_health;
	if (slot_records[slot_index].map_piece > 24)
		slot_records[slot_index].activity = 0;
}
