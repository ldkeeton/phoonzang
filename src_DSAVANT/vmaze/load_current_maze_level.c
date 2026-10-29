/* Load the selected maze level's data and copy its map blocks into place. */

#include "structs/maze.h"
#include "structs/mazecell.h"

extern int data_record_io();
extern long app_memmove();
extern int decode_maze_cell_records();
extern int load_maze_resources();

extern struct maze_cells *maze_data;
extern struct maze_tables *maze_tables;
extern int game_state_arg;
extern char far *runtime_buffer_4k_a, *runtime_buffer_4k_b;
extern char current_map_block_a[], current_map_block_b[];
extern int party_map_piece, party_cell_x, party_cell_y;
extern int party_world_x, party_world_y;

load_current_maze_level()
{
	/* Read the maze map and table records for the selected level. */
	data_record_io(2, maze_data, game_state_arg, 0);
	data_record_io(3, maze_tables, game_state_arg, 0);

	/* Each loaded map block is 128 bytes; levels occupy 128-byte slots. */
	app_memmove(runtime_buffer_4k_a + (game_state_arg << 7),
		(char far *)current_map_block_a, 128);
	app_memmove(runtime_buffer_4k_b + (game_state_arg << 7),
		(char far *)current_map_block_b, 128);

	decode_maze_cell_records();
	party_world_x = maze_data->origin_x[party_map_piece] + party_cell_x;
	party_world_y = maze_data->origin_y[party_map_piece] + party_cell_y;
	load_maze_resources();
}
