/* Set the region flag from a condition: action arg fired, or slot arg dead. */
#include "structs/maze.h"
#include "structs/slotstat.h"
#include "structs/loadrec.h"
#include "structs/rgnstate.h"
extern struct saved_region_blocks party_region;
extern struct load_header scenario_header;

extern struct maze_tables *maze_tables;
extern struct slot_record slot_records[];
extern int get_bits();
extern int test_bit();
extern int update_region_flags();

set_region_flag_from_condition()
{
	int mark_bits;

	mark_bits = get_bits(maze_tables->flags[party_region.region], 0, 2);
	/* Flag bit 2 clear: the condition is "action arg has fired". */
	if (get_bits(maze_tables->flags[party_region.region], 2, 1) == 0) {
		update_region_flags(test_bit(
			scenario_header.action_bitmap, maze_tables->arg[party_region.region]),
		    mark_bits);
	} else {
		/* Flag bit 2: the condition is "slot arg is dead". */
		update_region_flags(
			slot_records[maze_tables->arg[party_region.region]].health == 0
			? 1 : 0, mark_bits);
	}
}
