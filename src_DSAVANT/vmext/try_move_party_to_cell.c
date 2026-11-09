/* Try moving the party into a neighboring maze cell. */
#include "structs/mazecell.h"
#include "structs/maze.h"
#include "structs/rgnstate.h"

extern struct maze_cells *maze_data;
extern struct maze_tables *maze_tables;
extern int party_map_piece, party_cell_x, party_cell_y;
extern int party_world_x, party_world_y;
extern struct saved_region_blocks party_region;
extern int save_location_flag;
extern int current_map_block_a[];
extern int check_at_saved_location(), read_packed_field();
extern int move_party_world_position(), find_map_piece(), test_bit();
extern int set_party_world_position(), get_cell_terrain(), find_object_at();

/* Try moving one cell and restore the old position if the destination blocks
   travel. */
try_move_party_to_cell(direction, visited_cells)
int direction;
char *visited_cells;
{
	int cell_index, destination_flag, third_flag, cell_kind;
	int old_world_x, old_world_y;

	check_at_saved_location();
	cell_index = (party_map_piece << 6) + (party_cell_y << 3) + party_cell_x;
	cell_kind = read_packed_field(maze_data->cell_kind, cell_index, 6);
	if ((cell_kind == 1 || cell_kind == 2) &&
	    read_packed_field(maze_data->cell_direction, cell_index, 2) == direction)
		return 1;
	old_world_x = party_world_x;
	old_world_y = party_world_y;
	move_party_world_position(direction, 1);
	if (find_map_piece(&party_cell_x, &party_cell_y, &party_map_piece,
		party_world_x, party_world_y)) {
		set_party_world_position(old_world_x, old_world_y);
		return 1;
	}
	cell_index = (party_map_piece << 6) + (party_cell_y << 3) + party_cell_x;
	if (test_bit(visited_cells, cell_index) == 1 ||
	    test_bit(current_map_block_a, cell_index) == 1) {
		set_party_world_position(old_world_x, old_world_y);
		return 1;
	}
	destination_flag = test_bit(maze_data->cell_flags, cell_index);
	third_flag = test_bit(maze_data->cell_flags_third, cell_index);
	if (save_location_flag == 0)
		check_at_saved_location();
	if (save_location_flag != 0 || get_cell_terrain() != 0) {
		set_party_world_position(old_world_x, old_world_y);
		return 1;
	}
	if (find_object_at(party_cell_x, party_cell_y, party_map_piece,
		maze_tables->map_first[party_map_piece]) != -1) {
		set_party_world_position(old_world_x, old_world_y);
		return 1;
	}
	party_region.region = maze_tables->map_first[party_map_piece];
	return 0;
}
