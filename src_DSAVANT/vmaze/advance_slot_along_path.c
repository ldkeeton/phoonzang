/* Activities 3, 5 and 7: travel one map piece along the planned path. */

#include "structs/pathedge.h"
#include "structs/slotstat.h"

extern int random_below();
extern int heal_slot_health();
extern int travel_to_destination();
extern int choose_random_destination();
extern int meet_slots_here();
extern int log_slot_event();
extern struct path_edge path_edges[];
extern struct slot_record slot_records[];

advance_slot_along_path(slot_index, chased)
int slot_index, chased;
{
	int edge;

	if (slot_records[slot_index].activity == 3
	    && heal_slot_health(slot_index, 2, 3))
		return;
	if (slot_records[slot_index].activity == 5) {
		/* Chasing: at the end of the path, follow the target on. */
		if (slot_records[slot_index].path_step < 0) {
			if (slot_records[slot_records[slot_index].target].destination
			    != slot_records[slot_index].location) {
				slot_records[slot_index].destination =
				    slot_records[slot_records[slot_index].target].destination;
				travel_to_destination(slot_index);
				if (slot_records[slot_index].activity == 0) {
					choose_random_destination(slot_index);
					return;
				}
				slot_records[slot_index].activity = 5;
			} else
				slot_records[slot_index].map_piece = random_below(16);
		}
		/* A dead target is no longer chased; slot 21 is the party. */
		if (slot_records[slot_index].target != 21
		    && slot_records[slot_records[slot_index].target].health <= 0)
			slot_records[slot_index].activity = 3;
	}
	if (slot_records[slot_index].activity != 7) {
		meet_slots_here(slot_index, chased);
		if (!((slot_records[slot_index].activity == 3
		    || slot_records[slot_index].activity == 7
		    || slot_records[slot_index].activity == 5)
		    && slot_records[slot_index].health > 0))
			return;
	}
	if (slot_records[slot_index].path_step < 0) {
		if (slot_records[slot_index].activity != 5)
			choose_random_destination(slot_index);
		return;
	}
	edge = slot_records[slot_index].path[slot_records[slot_index].path_step];
	/* One map piece per turn until the edge's length is covered. */
	slot_records[slot_index].map_piece++;
	if (path_edges[edge].length <= slot_records[slot_index].map_piece) {
		slot_records[slot_index].map_piece = 0;
		if (slot_records[slot_index].location == path_edges[edge].end_a)
			slot_records[slot_index].location = path_edges[edge].end_b;
		else if (slot_records[slot_index].location == path_edges[edge].end_b)
			slot_records[slot_index].location = path_edges[edge].end_a;
		if (slot_records[slot_index].activity == 7)
			slot_records[slot_index].activity = 3;
		if (--slot_records[slot_index].path_step < 0
		    && slot_records[slot_index].activity == 3) {
			slot_records[slot_index].activity = 0;
			if (slot_records[slot_index].location
			    == slot_records[slot_index].destination) {
				slot_records[slot_index].activity = 2;
				slot_records[slot_index].map_piece = 0;
				log_slot_event(slot_index, slot_records[slot_index].destination,
				    6, slot_records[slot_index].destination);
			}
		}
	}
}
