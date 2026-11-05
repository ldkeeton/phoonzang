/* Show the message picked by how many flags in a saved bit range differ from
   the expected value. */
#include "structs/maze.h"
#include "structs/rgnstate.h"

extern struct maze_tables *maze_tables;
extern struct saved_region_blocks party_region;
extern int current_level;
extern int get_bits();
extern int test_bit();
extern int show_maze_message_sequence();
extern int mark_region_bits();

show_message_by_flag_tally()
{
	int region_flags;
	int bit_index;
	int differing_bits;
	int first_bit;
	int bit_count;
	int expected_bit;

	region_flags = maze_tables->flags[party_region.region];
	first_bit = get_bits(region_flags, 0, 8);
	bit_count = get_bits(region_flags, 8, 4);
	expected_bit = get_bits(region_flags, 15, 1);
	differing_bits = 0;
	/* Count bits that do not match the expected value. */
	for (bit_index = 0; bit_index < bit_count; bit_index++)
		if (test_bit(party_region.state[current_level],
		    first_bit + bit_index) != expected_bit)
			differing_bits++;
	show_maze_message_sequence(
		maze_tables->arg[party_region.region] * differing_bits +
		maze_tables->key[party_region.region],
		get_bits(region_flags, 14, 1));
	mark_region_bits(get_bits(region_flags, 12, 2));
}
