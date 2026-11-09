/* Select a region and its item record when its facing gate passes and flag bit
   8 is set. */
#include "structs/maze.h"
#include "structs/rgnstate.h"
extern struct saved_region_blocks party_region;

extern struct maze_tables *maze_tables;
extern int party_facing, selected_item_record, game_state;
extern int get_bits();

select_region_item_if_facing(region_index)
int region_index;
{
	int region_flags;

	region_flags = maze_tables->flags[region_index];
	/* A set facing-check bit restricts the region to one facing (bits 12-13). */
	if (get_bits(region_flags, 14, 1) == 1 &&
	    get_bits(region_flags, 12, 2) != party_facing)
		return 0;

	/* Do nothing unless flag bit 8 is set. */
	if (get_bits(region_flags, 8, 1) == 0)
		return 0;

	party_region.region = region_index;
	selected_item_record = maze_tables->arg[region_index];
	game_state = 21;
	return 1;
}
