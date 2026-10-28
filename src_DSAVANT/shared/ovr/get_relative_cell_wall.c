/* Resolve relative maze walls and directional cell overrides. */
#include "structs/mazecell.h"

extern struct maze_cells *maze_data;
extern int party_tag, boundary_wall_open, cell_wall_override_disabled,
	boundary_wall_variant;
extern int offset_relative_map_position(), get_west_cell_wall(),
	get_north_cell_wall(), read_cell_kind_direction();
extern int read_packed_field(), test_bit();

/* Resolve a relative wall, then apply the cell kind facing the party. */
get_relative_cell_wall(side, world_x, world_y, x, y, map, forward)
int side, world_x, world_y, x, y, map, forward;
{
	int cell;
	int wall;
	int kind;
	int direction;

	if (forward && offset_relative_map_position(
		&world_x, &world_y, &x, &y, &map, forward, 0)) {
		switch (boundary_wall_variant) {
		case 0:
		case 2:
		case 4:
			return 2;
		case 3:
			if (boundary_wall_open)
				return 0;
		case 1:
			return 4;
		case 5:
			return 0;
		}
	}
	cell = (map << 6) + (y << 3) + x; /* 8 by 8 cells per map piece. */
	if (test_bit(maze_data->cell_flags, cell)) {
		switch (boundary_wall_variant) {
		case 0:
		case 3:
			return 0;
		}
	}
	switch ((party_tag + side) % 4) { /* Convert the relative side to a facing. */
	case 0:
		wall = get_west_cell_wall(world_x, world_y, x, y, map);
		break;
	case 1:
		wall = read_packed_field(maze_data->wall_a, cell, 4);
		break;
	case 2:
		wall = read_packed_field(maze_data->wall_b, cell, 4);
		break;
	case 3:
		wall = get_north_cell_wall(world_x, world_y, x, y, map);
		break;
	}
	read_cell_kind_direction(cell, &kind, &direction);
	direction = (direction + side + 1) % 4;
	if (direction == party_tag) {
		switch (kind) { /* Only these cell kinds override the wall. */
		case 1: wall = 8; break;
		case 2: wall = 9; break;
		case 3: wall = 10; break;
		case 4: wall = 11; break;
		case 5: if (!cell_wall_override_disabled) wall = 12; break;
		case 6: if (!cell_wall_override_disabled) wall = 13; break;
		case 10: wall = 14; break;
		case 11: wall = 15; break;
		}
	}
	return wall;
}
