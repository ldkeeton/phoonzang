/* Mark a connected set of open maze cells in the current map block. */

#include "structs/mazecell.h"

extern struct maze_cells *maze_data;
extern int current_map_block_a[];
extern int test_bit();
extern int set_bitmap_bit();
extern int read_packed_field();

mark_connected_maze_cells(map_piece, cell_x, cell_y, value)
int map_piece, cell_x, cell_y, value;
{
	int cell_index;

	/* Wrap cell coordinates into the piece's eight-cell dimensions. */
	cell_x = (cell_x + 8) % 8;
	cell_y = (cell_y + 8) % 8;
	cell_index = (map_piece << 6) + (cell_y << 3) + cell_x;

	/* Stop if this cell already has the requested bit value. */
	if (test_bit(current_map_block_a, cell_index) == value)
		return;
	set_bitmap_bit(current_map_block_a, cell_index, value);

	/* An open lower edge connects to the next row. */
	if (read_packed_field(maze_data->wall_a, cell_index, 4) == 0
	    && cell_y < 7)
		mark_connected_maze_cells(map_piece, cell_x, cell_y + 1, value);

	/* An open right edge connects to the next column. */
	if (read_packed_field(maze_data->wall_b, cell_index, 4) == 0
	    && cell_x < 7)
		mark_connected_maze_cells(map_piece, cell_x + 1, cell_y, value);

	/* Check the preceding row's lower edge. */
	if (cell_y > 0
	    && read_packed_field(maze_data->wall_a,
		(map_piece << 6) + (cell_y << 3) + cell_x - 8, 4) == 0)
		mark_connected_maze_cells(map_piece, cell_x, cell_y - 1, value);

	/* Check the preceding column's right edge. */
	if (cell_x > 0
	    && read_packed_field(maze_data->wall_b,
		(map_piece << 6) + (cell_y << 3) + cell_x - 1, 4) == 0)
		mark_connected_maze_cells(map_piece, cell_x - 1, cell_y, value);
}
