/* Resolve the wall facing the party in the cell at a view depth and lateral
   offset (-2..2), and record that cell's effect markers for the view. */
#include "structs/mazecell.h"

extern struct maze_cells *maze_data;
extern int boundary_wall_variant, boundary_wall_open;
extern int view_scan_depth, current_level, party_facing;
extern int saved_level, saved_map_piece, saved_cell_x, saved_cell_y;
/* Each table is [depth][column], column 0-4 for lateral -2..2. */
extern unsigned char side_wall_layer_flags[][5], near_wall_layer_flags[][5];
extern unsigned char boundary_box_faces[][5], view_marker_ids[][5];
extern unsigned char view_marker_kinds[][5];
extern int far_wall_object_ids[][5], near_wall_object_ids[][5];
extern int far_wall_overlay_ids[][5], near_wall_overlay_ids[][5];
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
			side_wall_layer_flags[view_scan_depth][lateral + 2] = 1;
			return 4;
		case 5:
			side_wall_layer_flags[view_scan_depth][lateral + 2] = 3;
			return 0;
		}
	}
	cell_index = (map << 6) + (y << 3) + x;
	/* Three bit planes affect wall state independently. */
	if (test_bit(maze_data->cell_flags_secondary, cell_index)) {
		switch (boundary_wall_variant) {
		case 0:
		case 4:
			side_wall_layer_flags[view_scan_depth][lateral + 2] = 3;
			break;
		case 1:
		case 3:
		case 5:
			side_wall_layer_flags[view_scan_depth][lateral + 2] = 1;
			break;
		case 2:
			side_wall_layer_flags[view_scan_depth][lateral + 2] = 2;
			break;
		}
	}
	if (test_bit(maze_data->cell_flags, cell_index)) {
		switch (boundary_wall_variant) {
		case 1:
			side_wall_layer_flags[view_scan_depth][lateral + 2] = 2;
			break;
		case 2:
		case 4:
			near_wall_layer_flags[view_scan_depth][lateral + 2] = 1;
			break;
		case 5:
			side_wall_layer_flags[view_scan_depth][lateral + 2] = 3;
			break;
		case 0:
		case 3:
			boundary_box_faces[view_scan_depth][lateral + 2] = 1;
			if (view_scan_depth < 4)
				boundary_box_faces[view_scan_depth + 1][lateral + 2] = 1;
			return 0;
		}
	}
	if (test_bit(maze_data->cell_flags_third, cell_index)) {
		switch (current_level) {
		case 14:
		case 19:
		case 31:
			side_wall_layer_flags[view_scan_depth][lateral + 2] = 3;
			break;
		case 10:
		case 25:
			boundary_box_faces[view_scan_depth][lateral + 2] = 2;
			if (view_scan_depth < 4)
				boundary_box_faces[view_scan_depth + 1][lateral + 2] = 2;
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
			view_marker_ids[view_scan_depth][lateral + 2] =
				direction + 1;
			break;
		case 8:
			far_wall_object_ids[view_scan_depth][lateral + 2] =
				direction + 1;
			break;
		case 9:
			near_wall_object_ids[view_scan_depth][lateral + 2] =
				direction + 1;
			break;
		case 10: wall = 14; break;
		case 11: wall = 15; break;
		case 12:
			view_marker_kinds[view_scan_depth][lateral + 2] = 1;
			break;
		case 13:
			side_wall_layer_flags[view_scan_depth][lateral + 2] = 3;
			break;
		case 14:
		case 17:
			far_wall_overlay_ids[view_scan_depth][lateral + 2] = 1;
		case 15:
			if (kind != 14)
				near_wall_overlay_ids[view_scan_depth][lateral + 2] = 1;
			break;
		case 16:
			view_marker_kinds[view_scan_depth][lateral + 2] = 2;
			break;
		}
	}
	/* Mark the saved location's edge after all cell overrides. */
	if (current_level == saved_level && map == saved_map_piece &&
		x == saved_cell_x && y == saved_cell_y)
		view_marker_kinds[view_scan_depth][lateral + 2] = 3;
	return wall;
}
