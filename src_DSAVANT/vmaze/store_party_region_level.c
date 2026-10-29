/* Store the active region's level in party_region_level_saved. */
#include "structs/maze.h"

extern struct maze_tables *maze_tables;
extern int party_region;
extern int party_region_level_saved;

store_party_region_level()
{
	/* The level array is indexed by the active region. */
	party_region_level_saved = maze_tables->arg[party_region];
}
