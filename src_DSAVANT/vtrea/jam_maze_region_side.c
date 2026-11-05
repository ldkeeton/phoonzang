/* Mark the party-facing side of a maze region as jammed (side state 2). */
#include "structs/maze.h"

extern struct maze_tables *maze_tables;
extern int party_facing, current_level;
extern int log_maze_change();

jam_maze_region_side(region)
int region;
{
	int direction_bit;
	char *region_flags;

	region_flags = (char *)maze_tables + 960 + region * 2;
	direction_bit = party_facing * 2;
	region_flags[direction_bit / 8] &= ~(1 << (direction_bit % 8));
	region_flags[(direction_bit + 1) / 8] |=
		1 << ((direction_bit + 1) % 8);
	log_maze_change(current_level, 6, region, 0, 0,
		maze_tables->flags[region], 0, 0, 0);
}
