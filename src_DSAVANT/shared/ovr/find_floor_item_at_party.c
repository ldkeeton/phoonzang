/* Find the floor item located at the party's current map position. */
#include "structs/flooritm.h"

extern struct floor_item *floor_items;
extern int floor_item_count, current_level;
extern int party_map_piece, party_cell_x, party_cell_y;

struct floor_item *find_floor_item_at_party()
{
	int index;
	int packed_position;
	struct floor_item *item;

	item = floor_items;
	for (index = 0; index < floor_item_count; index++, item++) {
		/* Only compare position data for records on the current level. */
		if (item->map == current_level) {
			/* Position stores the piece in the high byte and cell in nibbles. */
			packed_position = (party_map_piece << 8) +
				(party_cell_x << 4) + party_cell_y;
			if (item->position == packed_position)
				return item;
		}
	}
	return 0;
}
