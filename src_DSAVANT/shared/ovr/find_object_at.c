/* Find the next object at the requested cell whose region bit is clear. */
#include "structs/maze.h"
#include "structs/rgnstate.h"

extern struct maze_tables *maze_tables;
extern struct saved_region_blocks party_region;
extern int current_level;
extern int test_bit();

find_object_at(x, y, map_piece, start_index)
int x, y, map_piece, start_index;
{
	int object_index;

	object_index = start_index;
	goto check_index;
scan_object:
	/* Object records are grouped by map piece. */
	if (maze_tables->map[object_index] != map_piece)
		return -1;
	/* Match coordinates and a nonzero type before testing the region bit. */
	if (maze_tables->x[object_index] == x &&
	    maze_tables->y[object_index] == y &&
	    maze_tables->type[object_index] > 0 &&
	    !test_bit(party_region.state[current_level],
		maze_tables->f960[object_index]))
		return object_index;
	object_index++;
check_index:
	/* There are 240 object slots in the parallel maze tables. */
	if (object_index < 240)
		goto scan_object;
	return -1;
}
