extern unsigned char *maze_data;
extern int game_state_arg;

/* sets the 4-bit wall value on one edge of cell (x, y) in map piece map,
   logging the change; side 2/3 address the y-1/x-1 edge via the neighbour */
set_cell_wall(side, value, map, x, y)
int side, value, map, x, y;
{
	int plane, kind, wx, wy, cell;

	/* piece origin tables at +0x490 (x) and +0x4a0 (y) give world coords */
	wx = maze_data[map + 0x490] + x;
	wy = maze_data[map + 0x4a0] + y;
	cell = (map << 6) + (y << 3) + x;	/* 8x8 cells per piece */
	plane = -1;	/* -1: unknown side, nothing written */
	switch (side) {
	case 0:
		plane = 0;
		kind = 1;
		break;
	case 1:
		plane = 1;
		kind = 2;
		break;
	case 2:	/* stored as the plane-0 edge of the cell at y-1 */
		if (!find_map_piece(&x, &y, &map, wx, wy - 1)) {
			cell = (map << 6) + (y << 3) + x;
			plane = 0;
			kind = 1;
		}
		break;
	case 3:	/* stored as the plane-1 edge of the cell at x-1 */
		if (!find_map_piece(&x, &y, &map, wx - 1, wy)) {
			cell = (map << 6) + (y << 3) + x;
			plane = 1;
			kind = 2;
		}
		break;
	}
	if (plane != -1) {
		log_maze_change(game_state_arg, kind, map, x, y, value, 0, 0, 0);
		/* 4-bit fields: plane 0 at +0x90, plane 1 at +0x290 */
		if (plane == 0)
			set_bitfield(maze_data + 0x90, cell, 4, value);
		else
			set_bitfield(maze_data + 0x290, cell, 4, value);
	}
}
