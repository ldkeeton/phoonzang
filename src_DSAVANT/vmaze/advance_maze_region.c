/* Advance to the next maze region and apply its packed state bits. */
#include "structs/maze.h"

extern struct maze_tables *maze_tables;
extern int party_region;
extern int *startup_sound_check;
extern int get_bits();
extern int choose_sound_variant();
extern void configure_story_music();
extern void mark_region_bits();

advance_maze_region()
{
	/* Resolve the region's startup sound when its packed flag is set. */
	if (get_bits(maze_tables->flags[party_region], 0, 1) == 1)
		*startup_sound_check = choose_sound_variant(
			maze_tables->arg[party_region]);
	else
		*startup_sound_check = maze_tables->arg[party_region];

	/* Keep the current story music setup in sync with the region change. */
	configure_story_music(1, 1, 1);
	/* Apply the two packed region bits, then advance the region index. */
	mark_region_bits(get_bits(maze_tables->flags[party_region], 1, 2));
	party_region++;
}
