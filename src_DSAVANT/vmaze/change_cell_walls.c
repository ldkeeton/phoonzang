/* Wall-change event: rewrite a target cell's walls and its neighbours' shared
   ones. */
#include "structs/maze.h"
#include "structs/mazecell.h"

extern struct maze_tables *maze_tables;
extern struct maze_cells *maze_data;
extern int party_region, current_level;
extern int get_bits(), log_maze_change(), set_bitfield();
extern int find_map_piece(), play_maze_sound_effect();
extern int mark_region_bits(), redraw_maze_view();

change_cell_walls()
{
	int wall_index;
	int cell_index;
	int event_bits;
	int world_x;
	int world_y;
	int map_piece;
	int cell_x;
	int cell_y;
	int redraw_flag;
	int mark_bits;
	int wall_values[4];

	event_bits = maze_tables->flags[party_region];
	cell_x = get_bits(event_bits, 0, 3);
	cell_y = get_bits(event_bits, 3, 3);
	map_piece = get_bits(event_bits, 6, 4);
	redraw_flag = get_bits(event_bits, 10, 1);
	mark_bits = get_bits(event_bits, 11, 2);
	world_x = maze_data->origin_x[map_piece] + cell_x;
	world_y = maze_data->origin_y[map_piece] + cell_y;
	cell_index = map_piece * 64 + cell_y * 8 + cell_x;

	event_bits = maze_tables->party_mask[party_region];
	wall_index = 0;
	/* Read the four 4-bit wall values packed in party_mask. */
read_neighbor_values:
		wall_values[wall_index] = get_bits(event_bits,
			wall_index * 4, 4);
		wall_index++;
	if (wall_index < 4)
		goto read_neighbor_values;

	/* Log the change, then set the cell's own two walls. */
	log_maze_change(current_level, 0, map_piece, cell_x, cell_y,
		wall_values[0], wall_values[1],
		wall_values[2], wall_values[3]);
	set_bitfield(maze_data->wall_a, cell_index, 4, wall_values[0]);
	set_bitfield(maze_data->wall_b, cell_index, 4, wall_values[1]);

	/* The cells to the north and west hold the other two shared walls. */
	if (find_map_piece(&cell_x, &cell_y, &map_piece,
		world_x, world_y - 1) == 0) {
		cell_index = map_piece * 64 + cell_y * 8 + cell_x;
		set_bitfield(maze_data->wall_a, cell_index, 4, wall_values[2]);
	}
	if (find_map_piece(&cell_x, &cell_y, &map_piece,
		world_x - 1, world_y) == 0) {
		cell_index = map_piece * 64 + cell_y * 8 + cell_x;
		set_bitfield(maze_data->wall_b, cell_index, 4, wall_values[3]);
	}

	play_maze_sound_effect(maze_tables->key[party_region]);
	if (redraw_flag == 1)
		redraw_maze_view();
	mark_region_bits(mark_bits);
}
