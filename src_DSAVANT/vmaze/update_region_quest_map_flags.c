/* Update the region flags from whether the region's quest map is carried. */
#include "structs/maze.h"
#include "structs/questmap.h"
#include "structs/rgnstate.h"
extern struct saved_region_blocks party_region;

extern struct maze_tables *maze_tables;
extern struct quest_map quest_maps[];
extern int get_bits();
extern void update_region_flags();

/* The region's arg is the index of its quest map. */
update_region_quest_map_flags()
{
	/* The packed location stores this region's bits at positions 0 and 1. */
	update_region_flags(
		/* A zero status means an NPC (or the party) carries the map. */
		quest_maps[maze_tables->arg[party_region.region]].status == 0,
		get_bits(maze_tables->flags[party_region.region], 0, 2));
}
