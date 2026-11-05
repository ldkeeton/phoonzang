/* Reapply the logged maze changes (maze_change_log) for the level just
   loaded. */
#include "structs/maze.h"
#include "structs/mazecell.h"
#include "structs/mazechng.h"

extern struct maze_change *maze_change_log;
extern int maze_change_count, current_level;
extern struct maze_tables *maze_tables;
extern struct maze_cells *maze_data;
extern int find_map_piece();
extern int set_bitfield();

replay_maze_changes()
{
	int record_index;
	struct maze_change *record;
	int map_piece;
	int cell_x;
	int cell_y;
	int world_x;
	int world_y;
	int packed_high;
	int packed_low;
	int cell_index;

	record = maze_change_log;
	for (record_index = 0; record_index < maze_change_count;
	    record_index++, record++) {
		/* Only records for the current level apply. */
		if (record->level == current_level) {
			/* Type 6 replaces a region's flags word. */
			if (record->kind == 6) {
				maze_tables->flags[record->location] = record->value;
			} else {
				packed_high = record->location / 256;
				packed_low = record->location % 256;
				map_piece = packed_high;
				cell_x = packed_low / 16;
				cell_y = packed_low % 16;
				cell_index = (map_piece << 6) + (cell_y << 3) + cell_x;

				packed_high = record->value / 256;
				packed_low = record->value % 256;
				world_x = maze_data->origin_x[map_piece] + cell_x;
				world_y = maze_data->origin_y[map_piece] + cell_y;

				/* 0: all four walls, 1/2: one own wall, 3/4: a neighbour's shared wall, 5:
				   cell kind and direction. */
				switch (record->kind) {
				case 0:
					set_bitfield(maze_data->wall_a, cell_index, 4,
						packed_high / 16);
					set_bitfield(maze_data->wall_b, cell_index, 4,
						packed_high % 16);
					if (find_map_piece(&cell_x, &cell_y, &map_piece,
						world_x, world_y - 1) == 0) {
						cell_index = (map_piece << 6) +
							(cell_y << 3) + cell_x;
						set_bitfield(maze_data->wall_a, cell_index, 4,
							packed_low / 16);
					}
					if (find_map_piece(&cell_x, &cell_y, &map_piece,
						world_x - 1, world_y) == 0) {
						cell_index = (map_piece << 6) +
							(cell_y << 3) + cell_x;
						set_bitfield(maze_data->wall_b, cell_index, 4,
							packed_low % 16);
					}
					break;
				case 1:
					set_bitfield(maze_data->wall_a, cell_index, 4,
						record->value);
					break;
				case 2:
					set_bitfield(maze_data->wall_b, cell_index, 4,
						record->value);
					break;
				case 3:
					if (find_map_piece(&cell_x, &cell_y, &map_piece,
						world_x, world_y - 1) == 0) {
						cell_index = (map_piece << 6) +
							(cell_y << 3) + cell_x;
						set_bitfield(maze_data->wall_a, cell_index, 4,
							record->value);
					}
					break;
				case 4:
					if (find_map_piece(&cell_x, &cell_y, &map_piece,
						world_x - 1, world_y) == 0) {
						cell_index = (map_piece << 6) +
							(cell_y << 3) + cell_x;
						set_bitfield(maze_data->wall_b, cell_index, 4,
							record->value);
					}
					break;
				case 5:
					set_bitfield(maze_data->cell_kind, cell_index, 6,
						packed_high);
					set_bitfield(maze_data->cell_direction, cell_index, 2,
						packed_low);
					break;
				}
			}
		}
	}
}
