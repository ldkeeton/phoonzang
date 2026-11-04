/* Search the current region object and apply its message and flag effects. */
#include "structs/maze.h"

extern struct maze_tables *maze_tables;
extern int party_region, party_facing, trigger_facing, object_search_active;
extern int get_bits();
extern int show_maze_message_sequence();
extern int mark_region_bits();

handle_region_object_search()
{
	int region_flags;
	int mark_bits;

	region_flags = maze_tables->flags[party_region];
	mark_bits = get_bits(region_flags, 0, 2);
	/* A clear search flag disables further object searching. */
	if (mark_bits == 0)
		object_search_active = 0;
	/* A set facing check requires the stored direction to match. */
	if (get_bits(region_flags, 6, 1) == 1) {
		trigger_facing = get_bits(region_flags, 4, 2);
		if (trigger_facing != party_facing)
			return;
	}
	show_maze_message_sequence(maze_tables->key[party_region],
		get_bits(region_flags, 2, 1));
	mark_region_bits(mark_bits);
}
