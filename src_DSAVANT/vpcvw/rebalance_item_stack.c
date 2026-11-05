/* Move units from source into the target stack, up to the target item's
 * stack limit; empty the source slot if nothing is left in it. */
#include "structs/pcrec.h"
#include "structs/itemrec.h"

extern int data_record_io();

rebalance_item_stack(target, source)
struct pc_item_slot *target, *source;
{
	int unused;
	struct item_record item;
	int total, moved;

	data_record_io(1, &item, target->item_id, 0);
	moved = (total = source->level + target->level < item.message_or_stack_limit ?
		source->level + target->level : item.message_or_stack_limit) -
		target->level;
	target->level = target->level + moved;
	source->level -= moved;
	if (source->level <= 0)
		source->item_id = 0;
}
