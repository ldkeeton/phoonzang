/* Collect the region's adjacent-object flags and update its status marker. */
#include "structs/maze.h"

extern struct maze_tables *maze_tables;
extern int party_region;
extern int adjacent_object_type[];
extern int get_bits();
extern int update_party_status_animation();
extern int mark_region_bits();

collect_region_flag_bits()
{
	int object_index;
	int update_status;
	int region_argument;

	update_status = 0;
	object_index = 0;
	/* Collect four object types and check their paired status bits. */
object_loop:
		adjacent_object_type[object_index] = get_bits(
			maze_tables->flags[party_region], object_index * 2, 2);
		if (get_bits(maze_tables->flags[party_region],
				object_index * 2 + 8, 2) == 2)
			update_status = 1;
		object_index++;
	if (object_index < 4)
		goto object_loop;
	if (update_status != 0)
		update_party_status_animation();

	region_argument = maze_tables->arg[party_region];
	/* Forward the two-bit region marker stored at bits 5-6. */
	mark_region_bits(get_bits(region_argument, 5, 2));
}
