/* Read the north wall field or choose a wall for a neighbouring world cell. */
#include "structs/mazecell.h"

extern struct maze_cells *maze_data;
extern int maze_variant;
extern int find_map_piece();
extern int read_packed_field();

get_north_cell_wall(world_x, world_y, x, y, map)
int world_x, world_y, x, y, map;
{
	/* Look up the cell immediately north of the requested world position. */
	if (find_map_piece(&x, &y, &map, world_x, world_y - 1)) {
		/* Odd variants return wall type 2; even variant 6 opens the edge. */
		return (maze_variant % 2) ? 2 :
			(maze_variant == 6 ? 0 : 4);
	}

	/* Each map piece has 64 cells; wall_a stores four-bit north walls. */
	return read_packed_field(maze_data->wall_a,
		(map << 6) + (y << 3) + x, 4);
}
