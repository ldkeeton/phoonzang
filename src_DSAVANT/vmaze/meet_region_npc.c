/* Type-5 region: meet the NPC whose record is in arg (game_state 18 loads
   VMNPC), then advance the region. */
#include "structs/maze.h"
#include "structs/rgnstate.h"
extern struct saved_region_blocks party_region;

extern struct maze_tables *maze_tables;
extern int party_facing;
extern int trigger_facing, game_state;
extern int *npc_id_target;
extern int get_bits();
extern void configure_story_music();

meet_region_npc()
{
	int region_flags;

	region_flags = maze_tables->flags[party_region.region];
	/* When bit 2 is set, the party must face the direction stored in bits 0-1. */
	if (get_bits(region_flags, 2, 1) == 1) {
		trigger_facing = get_bits(region_flags, 0, 2);
		if (trigger_facing != party_facing)
			return;
	}

	*npc_id_target = maze_tables->arg[party_region.region];
	/* Bit 3 controls whether the story score is loaded. */
	configure_story_music(1, 0,
		get_bits(region_flags, 3, 1) == 1 ? 0 : 1);
	game_state = 18;
	party_region.region++;
}
