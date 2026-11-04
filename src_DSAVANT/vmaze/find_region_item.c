/* Type-3 region: show its message, then select its item record
   (game_state 21 loads VTREA). */

#include "structs/maze.h"

extern struct maze_tables *maze_tables;
extern int party_region, party_facing;
extern int trigger_facing, selected_item_record, game_state;
extern int get_bits();
extern int show_maze_message_sequence();

find_region_item()
{
	int region_flags;
	int unused_local;

	region_flags = maze_tables->flags[party_region];

	/* Bit 14 gates the trigger to the facing stored in bits 12-13. */
	if (get_bits(region_flags, 14, 1) == 1) {
		trigger_facing = get_bits(region_flags, 12, 2);
		if (trigger_facing != party_facing)
			return;
	}

	/* A positive key selects the message sequence for this region. */
	if (maze_tables->key[party_region] > 0)
		show_maze_message_sequence(maze_tables->key[party_region], 0);

	/* Bit 8 makes the region message-only. */
	if (get_bits(region_flags, 8, 1) == 1)
		return;

	selected_item_record = maze_tables->arg[party_region];
	game_state = 21;
}
