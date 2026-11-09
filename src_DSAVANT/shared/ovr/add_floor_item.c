/* Record a dropped item at the party's cell and mark the cell bitmap. */
#include "structs/pcrec.h"
#include "structs/flooritm.h"
#include "structs/loadrec.h"
extern struct load_header scenario_header;

extern struct floor_item *floor_items;
extern int current_level;
extern int party_map_piece, party_cell_x, party_cell_y;
extern int floor_item_cell_bits[];
extern int find_floor_item_slot(), play_sound_effect(), set_bitmap_bit();

add_floor_item(item)
struct pc_item_slot *item;
{
	int floor_slot;
	struct floor_item *floor_item;

	if ((floor_slot = find_floor_item_slot(0)) == -1) {
		/* At 127 entries, recycle an unprotected slot instead of growing. */
		if (scenario_header.floor_item_count >= 127) {
			if ((floor_slot = find_floor_item_slot(1)) == -1)
				/* No recyclable slot: sound the error repeatedly. */
				while (1)
					play_sound_effect(0);
		} else
			floor_slot = scenario_header.floor_item_count++;
	}
	floor_item = floor_items + floor_slot;
	floor_item->map = current_level;
	floor_item->flags = item->flags;
	/* The high byte is the map piece; x and y occupy the low nibbles. */
	floor_item->position = (party_map_piece << 8) +
		(party_cell_x << 4) + party_cell_y;
	floor_item->item_id = item->item_id;
	floor_item->glyph = item->glyph;
	floor_item->level = item->level;
	/* Each map piece contains 64 cells, with eight cells per row. */
	set_bitmap_bit(floor_item_cell_bits,
		(party_map_piece << 6) + (party_cell_y << 3) + party_cell_x, 1);
}
