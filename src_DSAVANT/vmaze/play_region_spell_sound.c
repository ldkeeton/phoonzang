/* Play the region sound and update its saved bitmaps when the trigger
   matches. */

#include "structs/maze.h"
#include "structs/rgnstate.h"

extern struct maze_tables *maze_tables;
extern struct saved_region_blocks party_region;
extern int game_state_arg;
extern unsigned char scenario_header_data[][16];

extern int get_bits();
extern int test_bit();
extern int set_bitmap_bit();
extern int play_maze_sound_effect();

play_region_spell_sound()
{
	int region_flags;
	int map_bit;
	int required_state;
	int map_index;
	int unused_stack_slot; /* Reserved by the original ten-byte stack frame. */

	/* Play the sound stored in the region event's sound field. */
	play_maze_sound_effect(maze_tables->arg[party_region.region]);
	region_flags = maze_tables->flags[party_region.region];

	/* Both saved maps must agree with the event's required trigger state. */
	/* Bit 15 supplies the state compared against both saved map bits. */
	required_state = get_bits(region_flags, 15, 1);
	if (test_bit(party_region.state[game_state_arg],
			maze_tables->key[party_region.region]) != required_state)
		goto trigger_mismatch;
	if (test_bit(party_region.state[game_state_arg],
			maze_tables->party_mask[party_region.region])
	    == required_state)
		goto update_region_bitmap;
	trigger_mismatch:
	return;

	update_region_bitmap:
	/* Bits 0-7 select the bit; bits 8-12 select the saved map block. */
	map_bit = get_bits(region_flags, 0, 8);
	map_index = get_bits(region_flags, 8, 5);
	/* Bit 13 selects whether the destination map bit is cleared or set. */
	switch (get_bits(region_flags, 13, 1)) {
	case 0:
		set_bitmap_bit(party_region.state[map_index], map_bit, 0);
		break;
	case 1:
		set_bitmap_bit(party_region.state[map_index], map_bit, 1);
		break;
	}

	/* Bit 14 requests copying the resulting map bit into scenario state. */
	if (get_bits(region_flags, 14, 1) == 1)
		set_bitmap_bit(scenario_header_data[map_index], map_bit,
			test_bit(party_region.state[map_index], map_bit));
}
