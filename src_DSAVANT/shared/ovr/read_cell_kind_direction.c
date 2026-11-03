/* Read the packed kind and direction fields for one maze cell. */
#include "structs/mazecell.h"

extern struct maze_cells *maze_data;
extern int read_packed_field();

read_cell_kind_direction(cell_index, kind_out, direction_out)
int cell_index;
int *kind_out;
int *direction_out;
{
	/* The maze layout stores kind in six bits and direction in two bits. */
	*kind_out = read_packed_field(maze_data->cell_kind, cell_index, 6);
	*direction_out = read_packed_field(maze_data->cell_direction, cell_index, 2);
}
