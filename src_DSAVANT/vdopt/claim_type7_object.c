/* Claim the selected type 7 object and mark its linked bitmap bits. */

#include "structs/maze.h"
#include "structs/rgnstate.h"

extern struct maze_tables *maze_tables;
extern struct saved_region_blocks party_region;
extern int adjacent_object_type[4];
extern int party_tag, game_state_arg;
extern unsigned char scenario_header_data[][16];
extern int api_idx_0004_GHVL();

claim_type7_object(obj)
int obj;
{
	/* Clear this party's adjacent object marker and the object's tag. */
	adjacent_object_type[party_tag] = 0;
	clear_bit_pair(&maze_tables->flags[obj], party_tag << 1);

	/* Log the object change with action 6 and its two-bit party flags. */
	api_idx_0004_GHVL(game_state_arg, 6, obj, 0, 0,
		maze_tables->flags[obj], 0, 0, 0);

	/* Positive keys set both the party region map and scenario bitmap. */
	if (maze_tables->key[obj] > 0) {
		set_bitmap_bit(party_region.state[game_state_arg],
			maze_tables->key[obj], 0);
		set_bitmap_bit(scenario_header_data[game_state_arg],
			maze_tables->key[obj], 0);
		party_region.region = obj + 1;
	}

	play_sound_effect(1);
}
