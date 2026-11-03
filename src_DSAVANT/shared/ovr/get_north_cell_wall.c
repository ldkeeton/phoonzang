/* Read the north wall field or use the local cell coordinates as a
   fallback. */
#include "structs/mazecell.h"

extern struct maze_cells *maze_data;
extern int maze_variant;
extern int boundary_wall_open;
extern int find_map_piece();
extern int read_packed_field();

get_north_cell_wall(world_x, world_y, local_x, local_y, map_piece)
int world_x, world_y, local_x, local_y, map_piece;
{
	/* Resolve the cell immediately north of the requested world position. */
	if (find_map_piece(&local_x, &local_y, &map_piece,
			world_x, world_y - 1)) {
		/* Odd variants use wall type 2; variant 6 opens the boundary. */
		return (maze_variant % 2) ? 2 :
		((maze_variant == 6 || boundary_wall_open) ? 0 : 4);
	}

	/* Each map piece has 64 cells; wall_a stores four-bit north walls. */
	return read_packed_field(maze_data->wall_a,
		(map_piece << 6) + (local_y << 3) + local_x, 4);
}
