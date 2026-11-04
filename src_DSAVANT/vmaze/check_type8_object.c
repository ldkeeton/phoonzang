/* Process a type-8 maze object and update its region state. */
#include "structs/maze.h"
#include "structs/rgnstate.h"

extern struct maze_tables *maze_tables;
extern struct saved_region_blocks party_region;
extern int party_facing, current_level, location_changed;
extern int get_bits();
extern int play_maze_sound_effect();
extern int set_bitmap_bit();
extern int mark_region_bits();

check_type8_object(object_index)
int object_index;
{
	int object_flags;
	int flag_field;
	int bitmap_value;

	object_flags = maze_tables->flags[object_index];
	/* A directional object only responds to its stored facing. */
	if (get_bits(object_flags, 14, 1) == 1 &&
	    get_bits(object_flags, 12, 2) != party_facing)
		return 0;

	play_maze_sound_effect(maze_tables->arg[object_index]);
	flag_field = get_bits(object_flags, 0, 8);
	bitmap_value = get_bits(object_flags, 10, 1);
	set_bitmap_bit(party_region.state[current_level], flag_field, bitmap_value);

	/* Mark the secondary party mask when this object provides one. */
	if (maze_tables->party_mask[object_index] > 0)
		set_bitmap_bit(party_region.state[current_level],
			maze_tables->party_mask[object_index], 0);

	party_region.region = object_index;
	flag_field = get_bits(object_flags, 8, 2);
	mark_region_bits(flag_field);
	party_region.region = object_index + 1;
	location_changed = 1;
	return 1;
}
