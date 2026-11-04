/* Set the region flag from a condition: action arg fired, or slot arg dead. */
#include "structs/maze.h"
#include "structs/slotstat.h"

extern struct maze_tables *maze_tables;
extern struct slot_record slot_records[];
extern int party_region;
extern int action_bitmap[];
extern int get_bits();
extern int test_bit();
extern int update_region_flags();

set_region_flag_from_condition()
{
	int mark_bits;

	mark_bits = get_bits(maze_tables->flags[party_region], 0, 2);
	/* Flag bit 2 clear: the condition is "action arg has fired". */
	if (get_bits(maze_tables->flags[party_region], 2, 1) == 0) {
		update_region_flags(test_bit(action_bitmap, maze_tables->arg[party_region]),
		    mark_bits);
	} else {
		/* Flag bit 2: the condition is "slot arg is dead". */
		update_region_flags(slot_records[maze_tables->arg[party_region]].health == 0
			? 1 : 0, mark_bits);
	}
}
