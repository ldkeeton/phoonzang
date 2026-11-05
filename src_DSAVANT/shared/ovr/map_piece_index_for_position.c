/* Check whether a world position falls within a map piece's 8 by 8 area. */
#include "structs/mazecell.h"

extern struct maze_cells *maze_data;

/* Return the candidate map piece when the point falls inside its bounds. */
map_piece_index_for_position(piece_index, world_x, world_y)
int piece_index, world_x, world_y;
{
	/* Both spans are inclusive: origin through origin + 7. */
	if (maze_data[0].origin_x[piece_index] <= world_x &&
	    maze_data[0].origin_x[piece_index] + 7 >= world_x &&
	    maze_data[0].origin_y[piece_index] <= world_y &&
	    maze_data[0].origin_y[piece_index] + 7 >= world_y)
		return piece_index;
	return -1;
}
