/* Mark the selected map bit in the current region and scenario state. */
#include "structs/maze.h"
#include "structs/rgnstate.h"

extern struct maze_tables *maze_tables;
extern struct saved_region_blocks party_region;
extern unsigned char scenario_header_data[][16];
extern int current_level;
extern int set_bitmap_bit();

mark_region_bits(map_count)
int map_count;
{
	/* No map bits are marked for a nonpositive request or an unset map bit. */
	if (map_count > 0 && maze_tables->f960[party_region.region] > 0) {
		/* The first requested bit updates the region's current-level state;
		   1 sets it. */
		set_bitmap_bit(party_region.state[current_level],
			maze_tables->f960[party_region.region], 1);

		/* A count above one also sets the bit in the scenario header state. */
		if (map_count > 1)
			set_bitmap_bit(scenario_header_data[current_level],
				maze_tables->f960[party_region.region], 1);
	}
}
