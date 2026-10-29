/* Friendly meeting: share what each knows and trade quest maps. */

#include "structs/questmap.h"
#include "structs/slotstat.h"

extern int random_below();
extern int test_bit();
extern int slot_is_at_location();
extern int adjust_faction_attitude();
extern int clamp_between();
extern int log_slot_event();
extern int give_quest_map();
extern unsigned char slot_pair_processed[];
extern struct quest_map quest_maps[];
extern struct slot_record slot_records[];

trade_with_slot(slot_index, other, attitude)
int slot_index, other, attitude;
{
	int map, unused1, site, unused2, offer, other_offer, worth, other_worth;

	offer = -1;
	other_offer = -1;
	map = 10;
	do {
		/* Offer a carried map the other never had, unless at its site. */
		if (test_bit(slot_records[slot_index].held_maps, map)
		    && !test_bit(slot_records[other].map_history, map)
		    && !slot_is_at_location(slot_index,
		    site = quest_maps[map].site_location))
			offer = map;
		if (test_bit(slot_records[other].held_maps, map)
		    && !test_bit(slot_records[slot_index].map_history, map))
			other_offer = map;
		if (test_bit(slot_records[slot_index].known_maps, map))
			set_bitmap_bit(slot_records[other].known_maps, map, 1);
		if (test_bit(slot_records[other].known_maps, map))
			set_bitmap_bit(slot_records[slot_index].known_maps, map, 1);
		/* The same faction also pools which maps were held and searched. */
		if (slot_records[slot_index].faction == slot_records[other].faction) {
			if (test_bit(slot_records[slot_index].map_history, map))
				set_bitmap_bit(slot_records[other].map_history, map, 1);
			if (test_bit(slot_records[other].map_history, map))
				set_bitmap_bit(slot_records[slot_index].map_history, map, 1);
			if (test_bit(slot_records[slot_index].map_history, map + 12))
				set_bitmap_bit(slot_records[other].map_history, map + 12, 1);
			if (test_bit(slot_records[other].map_history, map + 12))
				set_bitmap_bit(slot_records[slot_index].map_history, map + 12,
				    1);
		}
	} while (--map >= 0);
	if (attitude > 0) {
		adjust_faction_attitude(slot_index, other, random_below(5));
		adjust_faction_attitude(other, slot_index, random_below(5));
	}
	slot_pair_processed[slot_index * 22 + other] = 1;
	slot_pair_processed[other * 22 + slot_index] = 1;
	/* A map with nothing to swap for it costs a tenth of max health. */
	worth = slot_records[slot_index].max_health / 10 + 1;
	other_worth = slot_records[other].max_health / 10 + 1;
	/* Training with a resting NPC of the same faction. */
	if (slot_records[slot_index].faction == slot_records[other].faction
	    && slot_records[other].activity == 1
	    && slot_records[slot_index].max_health < 65 && random_below(3) == 0)
		slot_records[slot_index].max_health++;
	if (other_offer != -1) {
		if (offer == -1) {
			if (50 - worth > attitude || random_below(10) + 1 > worth)
				return;
			slot_records[other].max_health =
			    clamp_between(slot_records[other].max_health + worth, 1, 100);
			slot_records[slot_index].max_health =
			    clamp_between(slot_records[slot_index].max_health - worth, 1,
			    100);
		}
		log_slot_event(slot_index, other_offer, 3, other);
		give_quest_map(slot_index, other, other_offer);
	}
	if (offer != -1) {
		if (other_offer == -1) {
			if (50 - other_worth > attitude
			    || random_below(10) + 1 > other_worth)
				return;
			slot_records[slot_index].max_health =
			    clamp_between(slot_records[slot_index].max_health + other_worth,
			    1, 100);
			slot_records[other].max_health =
			    clamp_between(slot_records[other].max_health - other_worth, 1,
			    100);
		}
		log_slot_event(other, offer, 3, slot_index);
		give_quest_map(other, slot_index, offer);
	}
}
