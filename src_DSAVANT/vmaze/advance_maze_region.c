/* Advance to the next maze region and apply its packed state bits. */
#include "structs/maze.h"
#include "structs/rgnstate.h"
extern struct saved_region_blocks party_region;

extern struct maze_tables *maze_tables;
extern int *npc_id_target;
extern int get_bits();
extern int choose_region_npc();
extern void configure_story_music();
extern void mark_region_bits();

advance_maze_region()
{
	/* Store the region's character record, rolled when its packed flag is set. */
	if (get_bits(maze_tables->flags[party_region.region], 0, 1) == 1)
		*npc_id_target = choose_region_npc(
			maze_tables->arg[party_region.region]);
	else
		*npc_id_target = maze_tables->arg[party_region.region];

	/* Keep the current story music setup in sync with the region change. */
	configure_story_music(1, 1, 1);
	/* Apply the two packed region bits, then advance the region index. */
	mark_region_bits(get_bits(maze_tables->flags[party_region.region], 1, 2));
	party_region.region++;
}
