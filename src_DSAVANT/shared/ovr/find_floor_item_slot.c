/* Find a free floor item slot or, when requested, a slot to recycle. */
#include "structs/flooritm.h"
#include "structs/loadrec.h"
extern struct load_header scenario_header;

extern struct floor_item *floor_items;
extern int current_level, random_below();

find_floor_item_slot(recycle)
int recycle;
{
	int index;
	struct floor_item *item;
	int other_level_slot, current_level_slot;

	/* Keep a reusable slot from another level and the last one from this
	   level. */
	other_level_slot = -1;
	current_level_slot = -1;
	item = floor_items;
	for (index = 0; index < scenario_header.floor_item_count; index++, item++) {
		/* An unused record takes priority over any recycled slot. */
		if (item->map == 255)
			return index;

		/* Protected records cannot be selected for recycling. */
		if ((item->flags & 64) == 0) {
			/* After the first other-level candidate, sample later candidates 1 in 7. */
			if (other_level_slot == -1 || random_below(7) == 0) {
				if (item->map == current_level)
					current_level_slot = index;
				else
					other_level_slot = index;
			}
		}
	}

	/* Recycling prefers a record from another level, then one from this level. */
	if (recycle) {
		if (other_level_slot == -1)
			return current_level_slot;
		return other_level_slot;
	}
	return -1;
}
