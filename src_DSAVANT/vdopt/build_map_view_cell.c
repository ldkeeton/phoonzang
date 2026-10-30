/* Read one world cell and fill the map view glyphs for it. */
#include "structs/maze.h"
#include "structs/mazecell.h"

extern int party_cell_x, party_cell_y, party_map_piece;
extern int map_show_objects;
extern int map_outside_glyph, map_wall2_enclosed_glyph;
extern int map_outside_ns_wall_glyph, map_outside_ew_wall_glyph;
extern int map_kind1_glyph, map_kind2_glyph, map_kind15_glyph;
extern int map_kind14_glyph, map_kind9_glyph, map_kind8_glyph;
extern int map_special_glyph, map_floor_glyph;
extern int map_flag1_glyph, map_flag2_glyph;
extern int map_wall1_ns_glyph, map_wall2_ns_glyph;
extern int map_wall3_ns_glyph, map_wall4_ns_glyph;
extern int map_wall1_ew_glyph, map_wall2_ew_glyph;
extern int map_wall3_ew_glyph, map_wall4_ew_glyph;
extern int map_floor_glyphs[][18], map_ns_wall_glyphs[][18];
extern int map_ew_wall_glyphs[][18], map_object_marks[][18];
extern struct maze_tables *maze_tables;
extern struct maze_cells *maze_data;
extern char current_map_block_b[];
extern int game_state_arg, maze_variant;

build_map_view_cell(world_x, world_y, grid_x, grid_y, spell_mode)
int world_x;
int world_y;
int grid_x;
int grid_y;
int spell_mode;
{
	int cell_index, cell_kind, cell_direction;
	int map_x, map_y, map_piece, glyph;
	int wall_glyph, wall_kind, object_index;

	/* Begin the map-piece search at the party's current cell. */
	glyph = -1;
	map_x = party_cell_x;
	map_y = party_cell_y;
	map_piece = party_map_piece;
	if (find_map_piece(&map_x, &map_y, &map_piece, world_x, world_y)) {
		if (spell_mode == 0) {
			map_floor_glyphs[grid_x][grid_y] = -1;
		} else {
			map_floor_glyphs[grid_x][grid_y] = map_outside_glyph;
			map_ns_wall_glyphs[grid_x][grid_y] = map_outside_ns_wall_glyph;
			map_ew_wall_glyphs[grid_x][grid_y] = map_outside_ew_wall_glyph;
		}
		return;
	}

	/* In object mode, mark cells containing the selected object types. */
	if (map_show_objects != 0) {
		object_index = maze_tables->map_first[map_piece];
		while ((object_index = find_object_at(map_x, map_y, map_piece,
			object_index)) != -1) {
			if (maze_tables->type[object_index] == 3 ||
			    maze_tables->type[object_index] == 8)
				map_object_marks[grid_x][grid_y] = 1;
			++object_index;
		}
	} else
		map_object_marks[grid_x][grid_y] = 0;

	/* Flatten the map cell index; each piece has 64 cells. */
	cell_index = map_piece * 64 + map_y * 8 + map_x;
	if (spell_mode == 0 && !test_bit(current_map_block_b, cell_index)) {
		map_floor_glyphs[grid_x][grid_y] = -1;
		return;
	}

	cell_kind = read_packed_field(maze_data->cell_kind, cell_index, 6);
	cell_direction = read_packed_field(maze_data->cell_direction, cell_index, 2);
	if (cell_kind == 1)
		set_adjacent_map_cell_glyph(cell_direction, map_kind1_glyph, grid_x,
			grid_y);
	if (cell_kind == 2)
		set_adjacent_map_cell_glyph(cell_direction, map_kind2_glyph, grid_x,
			grid_y);
	if (cell_kind == 8)
		glyph = map_kind8_glyph;
	if (cell_kind == 9)
		glyph = map_kind9_glyph;
	if (cell_kind == 13)
		glyph = map_special_glyph;
	if (cell_kind == 14)
		glyph = map_kind14_glyph;
	if (cell_kind == 15)
		glyph = map_kind15_glyph;

	/* A set cell flag bit selects that flag's floor glyph. */
	if (glyph == -1 || glyph == map_floor_glyph) {
		if (test_bit(maze_data->cell_flags, cell_index))
			glyph = map_flag1_glyph;
	}
	if (glyph == -1 || glyph == map_floor_glyph ||
	    glyph == map_flag1_glyph) {
		if (test_bit(maze_data->cell_flags_secondary, cell_index))
			glyph = map_flag2_glyph;
	}
	if (test_bit(maze_data->cell_flags_secondary, cell_index)) {
		switch (game_state_arg) {
		case 15: case 17: case 22: case 23: case 24: case 25: case 26:
		case 29: case 30:
			glyph = map_special_glyph;
			break;
		}
	}
	/* The third flag bit has its own per-map overrides. */
	if (test_bit(maze_data->cell_flags_third, cell_index)) {
		switch (game_state_arg) {
		case 0: break;
		case 14: case 19: case 31:
			glyph = map_special_glyph;
			break;
		case 10: case 25: glyph = 6; break;
		default:
			glyph = map_outside_glyph;
			break;
		}
	}
	if (glyph != -1)
		map_floor_glyphs[grid_x][grid_y] = glyph;

	/* Maze variant one clears a cell whose selected bit is set. */
	if (maze_variant == 1 && test_bit(maze_data->cell_flags, cell_index))
		map_floor_glyphs[grid_x][grid_y] = -1;

	/* Sides 0 to 3 are north, east, south and west; south and west are stored
	   as the north edge of the next cell and the east edge of the previous
	   one. */
	wall_glyph = -1;
	wall_kind = get_cell_wall(0, map_piece, map_x, map_y,
		world_x, world_y);
	switch (wall_kind) {
	case 1: wall_glyph = map_wall1_ns_glyph; break;
	case 2: case 7: wall_glyph = map_wall2_ns_glyph; break;
	case 3: case 6: wall_glyph = map_wall3_ns_glyph; break;
	case 4: wall_glyph = map_wall4_ns_glyph; break;
	}
	if (wall_glyph != -1)
		map_ns_wall_glyphs[grid_x][grid_y] = wall_glyph;

	wall_glyph = -1;
	wall_kind = get_cell_wall(1, map_piece, map_x, map_y,
		world_x, world_y);
	switch (wall_kind) {
	case 1: wall_glyph = map_wall1_ew_glyph; break;
	case 2: case 7: wall_glyph = map_wall2_ew_glyph; break;
	case 3: case 6: wall_glyph = map_wall3_ew_glyph; break;
	case 4: wall_glyph = map_wall4_ew_glyph; break;
	}
	if (wall_glyph != -1)
		map_ew_wall_glyphs[grid_x][grid_y] = wall_glyph;

	wall_glyph = -1;
	wall_kind = get_cell_wall(2, map_piece, map_x, map_y,
		world_x, world_y);
	switch (wall_kind) {
	case 1: wall_glyph = map_wall1_ns_glyph; break;
	case 2: case 7: wall_glyph = map_wall2_ns_glyph; break;
	case 3: case 6: wall_glyph = map_wall3_ns_glyph; break;
	case 4: wall_glyph = map_wall4_ns_glyph; break;
	}
	if (wall_glyph != -1)
		map_ns_wall_glyphs[grid_x][grid_y + 1] = wall_glyph;

	wall_glyph = -1;
	wall_kind = get_cell_wall(3, map_piece, map_x, map_y,
		world_x, world_y);
	switch (wall_kind) {
	case 1: wall_glyph = map_wall1_ew_glyph; break;
	case 2: case 7: wall_glyph = map_wall2_ew_glyph; break;
	case 3: case 6: wall_glyph = map_wall3_ew_glyph; break;
	case 4: wall_glyph = map_wall4_ew_glyph; break;
	}
	if (wall_glyph != -1)
		map_ew_wall_glyphs[grid_x - 1][grid_y] = wall_glyph;
}
