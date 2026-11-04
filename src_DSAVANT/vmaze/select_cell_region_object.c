/* Find and select the first facing-compatible object in the current cell. */
#include "structs/maze.h"

extern struct maze_tables *maze_tables;
extern int party_map_piece, party_cell_y, party_cell_x, party_facing;
extern int selected_item_record, game_state;
extern int find_object_at();
extern int select_region_item_if_facing();
extern int get_bits();

select_cell_region_object()
{
	int object_index;

	object_index = maze_tables->map_first[party_map_piece];
	while ((object_index = find_object_at(party_cell_x, party_cell_y,
		party_map_piece, object_index)) != -1) {
		/* Type 3 objects delegate selection to the facing check. */
		if (maze_tables->type[object_index] == 3) {
			if (select_region_item_if_facing(object_index) == 1)
				return;
		}
		/* Type 7 objects use the two-bit value for the party's facing. */
		if (maze_tables->type[object_index] == 7 &&
		    (get_bits(maze_tables->flags[object_index],
			party_facing << 1, 2) == 1 ||
		     get_bits(maze_tables->flags[object_index],
			party_facing << 1, 2) == 2)) {
			selected_item_record = object_index;
			game_state = 26;
			return;
		}
		object_index++;
	}
}
