/* Update the region flags associated with the active maze slot bit. */
#include "structs/maze.h"
#include "structs/slotbit.h"

extern struct maze_tables *maze_tables;
extern struct slot_bit_state slot_bit_states[];
extern int party_region;
extern int get_bits();
extern void update_region_flags();

/* Apply the two packed region bits when their associated slot is unused. */
update_region_slot_bit_flags()
{
	/* The packed location stores this region's bits at positions 0 and 1. */
	update_region_flags(
		/* A zero status marks the indexed slot bit as unused. */
		slot_bit_states[maze_tables->arg[party_region]].status == 0,
		get_bits(maze_tables->flags[party_region], 0, 2));
}
