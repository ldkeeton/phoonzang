/* Unlock the party-facing side of a maze region after a successful pick or
   force. */
#include "structs/maze.h"
#include "structs/rgnstate.h"

extern struct maze_tables *maze_tables;
extern struct saved_region_blocks party_region;
extern int party_facing, current_level;
extern unsigned char scenario_header_data[][16];
extern int clear_bit_pair();
extern int log_maze_change();
extern int set_bitmap_bit();
extern int play_sound_effect();
extern int adjacent_object_type[];

/* Clear the region lock and update its map state. */
unlock_maze_region_side(region, play_sound)
int region;
int play_sound;
{
	adjacent_object_type[party_facing] = 0;
	clear_bit_pair((char *)maze_tables + 960 + region * 2,
		party_facing * 2);
	log_maze_change(current_level, 6, region, 0, 0,
		maze_tables->flags[region], 0, 0, 0);
	if (maze_tables->key[region] > 0) {
		set_bitmap_bit(party_region.state[current_level],
			maze_tables->key[region], 0);
		set_bitmap_bit(scenario_header_data[current_level],
			maze_tables->key[region], 0);
		party_region.region = region + 1;
	}
	if (play_sound)
		play_sound_effect(1);
}
