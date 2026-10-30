/* Find a type 7 object in the party's current cell. */
#include "structs/maze.h"

extern struct maze_tables *maze_tables;
extern int party_map_piece, party_cell_y, party_cell_x, party_tag;

find_party_type7_object()
{
	int object_index;

	/* Begin at the first object listed for this map piece. */
	object_index = maze_tables->map_first[party_map_piece];
	for (;;) {
		object_index = find_object_at(party_cell_x, party_cell_y,
			party_map_piece, object_index);
		if (object_index == -1)
			break;

		if (maze_tables->type[object_index] == 7) {
			/* Accept either matching two-bit party tag value. */
			if (get_bits(maze_tables->flags[object_index], party_tag << 1, 2) == 1 ||
			    get_bits(maze_tables->flags[object_index],
				party_tag << 1, 2) == 2)
				return object_index;
		}
		++object_index;
	}
	return -1;
}
