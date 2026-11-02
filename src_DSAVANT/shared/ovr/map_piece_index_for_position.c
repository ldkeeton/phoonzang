/* Check whether a world position falls within a map piece's 8 by 8 area. */
#include "structs/mazecell.h"

extern struct maze_cells *maze_data;

/* Return the candidate map piece when the point falls inside its bounds. */
map_piece_index_for_position(piece_index, world_x, world_y)
int piece_index, world_x, world_y;
{
	/* Reject points before or after the eight-cell horizontal span. */
	if (maze_data[0].origin_x[piece_index] > world_x)
		goto outside_piece;
	if (maze_data[0].origin_x[piece_index] + 7 < world_x)
		goto outside_piece;

	/* Apply the same inclusive span check to the vertical origin. */
	if (maze_data[0].origin_y[piece_index] > world_y)
		goto outside_piece;
	if (maze_data[0].origin_y[piece_index] + 7 < world_y)
		goto outside_piece;

	return piece_index;

outside_piece:
	return -1;
}
