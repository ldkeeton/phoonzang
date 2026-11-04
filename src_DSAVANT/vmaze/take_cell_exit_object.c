/* Move through a matching type-15 object on the current map piece. */
#include "structs/maze.h"

extern struct maze_tables *maze_tables;
extern int party_map_piece, party_cell_y, party_cell_x, party_facing;
extern int find_object_at();
extern int play_sound_effect();
extern int move_party_to_dest();

take_cell_exit_object()
{
	int object_index;

	/* Search forward through the objects on this map piece. */
	object_index = maze_tables->map_first[party_map_piece];
	for (;;) {
		object_index = find_object_at(party_cell_x, party_cell_y,
			party_map_piece, object_index);
		if (object_index == -1)
			break;
		/* Type 15 uses mask 2 or the party's facing parity as its gate. */
		if (maze_tables->type[object_index] == 15 &&
		    (maze_tables->party_mask[object_index] == 2 ||
		     (party_facing % 2) == maze_tables->party_mask[object_index])) {
			if (maze_tables->party_mask[object_index] == 2)
				play_sound_effect(8);
			move_party_to_dest(object_index);
			return;
		}
		object_index++;
	}
}
