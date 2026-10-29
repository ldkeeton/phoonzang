/* Update the active region's flags and apply the requested region bits. */
#include "structs/maze.h"

extern struct maze_tables *maze_tables;
extern int party_region;
extern void update_region_flag_bitmaps();
extern void mark_region_bits();

update_region_flags(update_flag, region_bits)
int update_flag;
int region_bits;
{
	/* The helper updates both the region and scenario flag bitmaps. */
	update_region_flag_bitmaps(maze_tables->key[party_region],
		maze_tables->party_mask[party_region],
		update_flag);
	mark_region_bits(region_bits);
}
