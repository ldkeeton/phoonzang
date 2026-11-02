/* Resolve the wall facing the party in the cell at a view depth and lateral
   offset (-2..2), and record that cell's effect markers for the view. */
#include "structs/mazecell.h"

extern struct maze_cells *maze_data;
extern int boundary_wall_variant, boundary_wall_open;
extern int view_scan_depth, current_level, party_facing;
extern int saved_level, saved_map_piece, saved_cell_x, saved_cell_y;
extern unsigned char maze_boundary_wall_markers[][5];
extern unsigned char maze_cell_flag_markers[][5];
extern unsigned char maze_blocking_cell_markers[][5];
extern unsigned char maze_near_blocking_markers[][5];
extern unsigned char maze_cell_facing_bytes[][5];
extern int maze_cell_facing_words_a[][5];
extern int maze_cell_facing_words_b[][5];
extern unsigned char maze_special_wall_markers[][5];
extern int maze_cell_effect_flags_a[][5];
extern int maze_cell_effect_flags_b[][5];
extern int offset_relative_map_position(), test_bit(), read_packed_field();
extern int get_north_cell_wall(), get_west_cell_wall();
extern int read_cell_kind_direction();

resolve_cell_wall_effects(world_x, world_y, x, y, map, lateral)
int world_x, world_y, x, y, map, lateral;
{
	int cell_index, wall, kind, direction;

	/* Crossing the map boundary can supply a wall without reading a cell. */
	if (lateral && offset_relative_map_position(&world_x, &world_y,
		&x, &y, &map, lateral, 0)) {
		switch (boundary_wall_variant) {
		case 0:
		case 2:
		case 4:
			return 2;
		case 3:
			if (boundary_wall_open)
				return 0;
		case 1:
			maze_boundary_wall_markers[view_scan_depth][lateral] = 1;
			return 4;
		case 5:
			maze_boundary_wall_markers[view_scan_depth][lateral] = 3;
			return 0;
		}
	}
	cell_index = (map << 6) + (y << 3) + x;
	/* Three bit planes affect wall state independently. */
	if (test_bit(maze_data->cell_flags_secondary, cell_index)) {
		switch (boundary_wall_variant) {
		case 0:
		case 4:
			maze_boundary_wall_markers[view_scan_depth][lateral] = 3;
			break;
		case 1:
		case 3:
		case 5:
			maze_boundary_wall_markers[view_scan_depth][lateral] = 1;
			break;
		case 2:
			maze_boundary_wall_markers[view_scan_depth][lateral] = 2;
			break;
		}
	}
	if (test_bit(maze_data->cell_flags, cell_index)) {
		switch (boundary_wall_variant) {
		case 1:
			maze_boundary_wall_markers[view_scan_depth][lateral] = 2;
			break;
		case 2:
		case 4:
			maze_cell_flag_markers[view_scan_depth][lateral] = 1;
			break;
		case 5:
			maze_boundary_wall_markers[view_scan_depth][lateral] = 3;
			break;
		case 0:
		case 3:
			maze_blocking_cell_markers[view_scan_depth][lateral] = 1;
			if (view_scan_depth < 4)
				maze_near_blocking_markers[view_scan_depth][lateral] = 1;
			return 0;
		}
	}
	if (test_bit(maze_data->cell_flags_third, cell_index)) {
		switch (current_level) {
		case 14:
		case 19:
		case 31:
			maze_boundary_wall_markers[view_scan_depth][lateral] = 3;
			break;
		case 10:
		case 25:
			maze_blocking_cell_markers[view_scan_depth][lateral] = 2;
			if (view_scan_depth < 4)
				maze_near_blocking_markers[view_scan_depth][lateral] = 2;
			break;
		}
	}
	/* The party facing selects which stored wall edge to read. */
	switch (party_facing) {
	case 0:
		wall = read_packed_field(maze_data->wall_a, cell_index, 4);
		break;
	case 1:
		wall = read_packed_field(maze_data->wall_b, cell_index, 4);
		break;
	case 2:
		wall = get_north_cell_wall(world_x, world_y, x, y, map);
		break;
	case 3:
		wall = get_west_cell_wall(world_x, world_y, x, y, map);
		break;
	}
	read_cell_kind_direction(cell_index, &kind, &direction);
	if (party_facing == direction || (kind >= 7 && kind <= 9) || kind > 11) {
		switch (kind) {
		case 1: wall = 8; break;
		case 2: wall = 9; break;
		case 3: wall = 10; break;
		case 4: wall = 11; break;
		case 5: if (!view_scan_depth) wall = 12; break;
		case 6: if (!view_scan_depth) wall = 13; break;
		case 7:
			maze_cell_facing_bytes[view_scan_depth][lateral] =
				direction + 1;
			break;
		case 8:
			maze_cell_facing_words_a[view_scan_depth][lateral] =
				direction + 1;
			break;
		case 9:
			maze_cell_facing_words_b[view_scan_depth][lateral] =
				direction + 1;
			break;
		case 10: wall = 14; break;
		case 11: wall = 15; break;
		case 12:
			maze_special_wall_markers[view_scan_depth][lateral] = 1;
			break;
		case 13:
			maze_boundary_wall_markers[view_scan_depth][lateral] = 3;
			break;
		case 14:
		case 17:
			maze_cell_effect_flags_a[view_scan_depth][lateral] = 1;
		case 15:
			if (kind != 14)
				maze_cell_effect_flags_b[view_scan_depth][lateral] = 1;
			break;
		case 16:
			maze_special_wall_markers[view_scan_depth][lateral] = 2;
			break;
		}
	}
	/* Mark the saved location's edge after all cell overrides. */
	if (current_level == saved_level && map == saved_map_piece &&
		x == saved_cell_x && y == saved_cell_y)
		maze_special_wall_markers[view_scan_depth][lateral] = 3;
	return wall;
}
