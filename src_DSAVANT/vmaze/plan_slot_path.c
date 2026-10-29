/* Plan a roaming NPC's path of edges from one location to another. */

#include "structs/pathedge.h"
#include "structs/questmap.h"
#include "structs/slotstat.h"

extern int test_bit();
extern int search_path_from();
extern int open_gates[], found_path_length, found_path[], path_search_depth,
	edges_in_use[];
extern struct path_edge path_edges[];
extern struct quest_map quest_maps[];
extern struct slot_record slot_records[];

plan_slot_path(slot_index, from, to)
int slot_index, from, to;
{
	int i, unused, blocked;

	/* Gates open for each quest map whose site this NPC has searched. */
	aztec_setmem(open_gates, 20, 0);
	for (i = 0; i < 11; i++) {
		if (quest_maps[i].gate_key != -1
		    && test_bit(slot_records[slot_index].map_history, i + 12))
			open_gates[quest_maps[i].gate_key] = 1;
	}
	if (test_bit(slot_records[slot_index].visited_locations, 14))
		open_gates[5] = 1;
	path_edges[15].gate_key = 6;
	if (test_bit(slot_records[slot_index].visited_locations, 13))
		open_gates[6] = 1;
	/* Give up at once if no open edge reaches the goal. */
	blocked = 1;
	for (i = 0; i < 32; i++) {
		if ((path_edges[i].end_a == to || path_edges[i].end_b == to)
		    && (path_edges[i].gate_key == -1
		    || open_gates[path_edges[i].gate_key] == 1))
			blocked = 0;
	}
	if (blocked)
		return 0;
	/* Deepen the search one level at a time, up to 20. */
	path_search_depth = 0;
	do {
		found_path_length = 0;
		aztec_setmem(edges_in_use, 64, 0);
		path_search_depth++;
	} while (!search_path_from(from, to, 1, 0) && path_search_depth < 20);
	if (path_search_depth >= 20)
		return 0;
	/* found_path runs goal end first; path_step walks it backwards. */
	for (i = 0; i < found_path_length; i++)
		slot_records[slot_index].path[i] = found_path[i];
	slot_records[slot_index].path_step = found_path_length - 1;
	slot_records[slot_index].map_piece = 0;
	return 1;
}
