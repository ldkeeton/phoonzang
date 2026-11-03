/* Find the map piece containing world coordinates and return local
   coordinates. */
#include "structs/mazecell.h"

extern struct maze_cells *maze_data;
extern int map_piece_index_for_position();
extern int last_map_piece_index;

find_map_piece(local_x, local_y, map_piece, world_x, world_y)
int *local_x;
int *local_y;
int *map_piece;
int world_x;
int world_y;
{
	int candidate_piece;
	int found_piece;

	/* Try the current piece first, then the cached last match. */
	found_piece = map_piece_index_for_position(*map_piece, world_x, world_y);
	if (found_piece == -1) {
		found_piece = map_piece_index_for_position(last_map_piece_index,
			world_x, world_y);

		/* Search the remaining pieces, wrapping at the table boundary. */
		if (found_piece == -1) {
			candidate_piece = (*map_piece + 1) % 16;
			for (;;) {
				found_piece = map_piece_index_for_position(candidate_piece,
					world_x, world_y);
				if (found_piece != -1)
					break;
				candidate_piece = (candidate_piece + 1) % 16;
				if (candidate_piece == *map_piece)
					return 1;
			}
		}
	}

	/* Convert world coordinates to the selected piece's local 8-by-8 space. */
	*local_x = world_x - maze_data[0].origin_x[found_piece];
	*local_y = world_y - maze_data[0].origin_y[found_piece];
	*map_piece = found_piece;
	last_map_piece_index = found_piece;
	return 0;
}
