/* Hostile meeting: fight until one side breaks, flees or is beaten. */

#include "structs/slotstat.h"

extern int random_below();
extern int adjust_faction_attitude();
extern int take_maps_from_slot();
extern int trade_with_slot();
extern int choose_random_destination();
extern int log_slot_event();
extern struct slot_record slot_records[];

/* Returns 1 when the fight is settled, -1 when slot_index fled or was
   beaten. */
fight_slot(slot_index, other)
int slot_index, other;
{
	int unused1, unused2, hit_taken, hit_dealt, total_taken, total_dealt,
	    result, spared, kind;

	adjust_faction_attitude(slot_index, other, 0 - (random_below(15) + 15));
	adjust_faction_attitude(other, slot_index, 0 - (random_below(15) + 15));
	/* Resting NPCs and slot 19 are never killed. */
	spared = slot_records[other].activity == 1 || other == 19 ? 1 : 0;
	hit_taken = 0;
	total_taken = 0;
	hit_dealt = 0;
	total_dealt = 0;
	result = 0;
	do {
		hit_taken = random_below(slot_records[other].health / 4) + 1;
		total_taken += hit_taken;
		hit_dealt = random_below(slot_records[slot_index].health / 4) + 1;
		total_dealt += hit_dealt;
		/* Losing too much health in total makes the NPC flee. */
		if (random_below(slot_records[slot_index].health) < total_taken) {
			slot_records[slot_index].activity = 7;
			result = -1;
		}
		if (result == 0) {
			if (random_below(hit_dealt / 2) + hit_dealt / 2
			    > slot_records[other].health) {
				take_maps_from_slot(slot_index, other);
				result = 1;
			} else if (slot_records[other].health
			    < slot_records[slot_index].health && random_below(3) == 0) {
				/* The weaker side gives in and talks; the original passes
				   no attitude, so the third argument is stack garbage. */
				trade_with_slot(slot_index, other);
				result = 1;
			}
		}
		if (result == 0) {
			slot_records[slot_index].health -= hit_taken;
			slot_records[other].health -= hit_dealt;
		}
	} while (result == 0 && slot_records[slot_index].health > 0
	    && slot_records[other].health > 0);
	kind = 0;
	if (slot_records[other].health <= 0) {
		if (spared)
			slot_records[other].health = random_below(10) + 10;
		else {
			kind = 1;
			slot_records[other].health = 0;
		}
		take_maps_from_slot(slot_index, other);
		result = 1;
	} else if (slot_records[other].health > slot_records[slot_index].health
	    && random_below(3) == 0) {
		slot_records[slot_index].activity = 7;
		result = -1;
	} else if (slot_records[other].health < slot_records[slot_index].health / 3
	    && (slot_records[other].activity == 3
	    || slot_records[other].activity == 2)) {
		/* A badly beaten traveller or lingerer runs for it. */
		choose_random_destination(other);
		slot_records[other].activity = 7;
		result = 1;
	}
	if (slot_records[slot_index].health <= 0) {
		slot_records[slot_index].health = random_below(3) + 1;
		slot_records[slot_index].activity = 7;
		result = -1;
	}
	if (slot_records[slot_index].activity == 7)
		choose_random_destination(slot_index);
	/* Kind 0: fought; kind 1: killed. */
	log_slot_event(slot_index, other, kind, slot_records[slot_index].location);
	return result;
}
