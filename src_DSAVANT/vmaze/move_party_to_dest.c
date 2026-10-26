/* moves the party to table entry dest: unpacks its cell, piece and level,
   switching level first when it differs from the current one */

struct tbl {
	char pad0[480];
	int alt_arg[240];		/* +0x1e0: used when level byte is 99 */
	int packed_loc[840];		/* +0x3c0: x:3 y:3 piece:4 bits:2 */
	unsigned char level[240];	/* +0xa50 */
	unsigned char piece_region[1];	/* +0xb40, per map piece */
};
extern struct tbl *maze_tables;
#include "structs/mazecell.h"

extern struct maze_cells *maze_data;
extern int game_state_arg;
extern int party_cell_x, party_cell_y, party_map_piece, dest_alt_arg,
	save_location_flag;
extern int saved_level, saved_map_piece, saved_cell_x, saved_cell_y;
extern int party_world_x, party_world_y, party_region, region_step_flag,
	location_changed;

move_party_to_dest(dest)
int dest;
{
	int loc, level;

	check_at_saved_location();
	loc = maze_tables->packed_loc[dest];
	mark_region_bits(get_bits(loc, 10, 2));	/* bits 10-11 */
	party_cell_x = get_bits(loc, 0, 3);	/* bits 0-2: cell x */
	party_cell_y = get_bits(loc, 3, 3);	/* bits 3-5: cell y */
	party_map_piece = get_bits(loc, 6, 4);	/* bits 6-9: map piece */
	level = maze_tables->level[dest];
	dest_alt_arg = 0;
	if (level == 99) {	/* 99: no level, pass alt_arg instead */
		dest_alt_arg = maze_tables->alt_arg[dest];
		level = -1;
	}
	if (save_location_flag) {
		saved_level = level;
		saved_map_piece = party_map_piece;
		saved_cell_x = party_cell_x;
		saved_cell_y = party_cell_y;
	}
	/* piece origin tables at +0x490 (x) and +0x4a0 (y) give world coords */
	party_world_x = maze_data->origin_x[party_map_piece] + party_cell_x;
	party_world_y = maze_data->origin_y[party_map_piece] + party_cell_y;
	party_region = maze_tables->piece_region[party_map_piece];
	region_step_flag = 0;
	if (level == game_state_arg)
		redraw_maze_view();
	else {
		save_level_state();
		enter_level(level);
		if (game_state_arg >= 0)	/* negative: no level loaded */
			redraw_maze_view();
	}
	location_changed = 1;
}
