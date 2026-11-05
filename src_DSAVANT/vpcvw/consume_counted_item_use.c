/* Decrement a counted item level and clear its id when depleted. */
#include "structs/pcrec.h"

/* Consume one use of a counted item and remove it when depleted. */
consume_counted_item_use(item_slot)
struct pc_item_slot *item_slot;
{
	if (item_slot->level > 0) {
		--item_slot->level;
		if (item_slot->level == 0)
			item_slot->item_id = 0;
	}
}
