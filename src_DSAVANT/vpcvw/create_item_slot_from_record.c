/* Fill an inventory slot with a freshly made, identified item from its data
 * record, copy the item's name out, and empty the consumed ingredient slot. */
#include "structs/pcrec.h"
#include "structs/itemrec.h"

extern int data_record_io(), aztec_strcpy(), add_random_steps();

create_item_slot_from_record(item_id, slot, consumed, name)
int item_id;
struct pc_item_slot *slot, *consumed;
char *name;
{
	struct item_record item;

	data_record_io(1, &item, item_id, 0);
	aztec_strcpy(name, item.name);
	slot->item_id = item_id;
	slot->glyph = item.glyph;
	slot->item_type = item.item_type;
	slot->weight = item.weight;
	slot->flags = 128;
	slot->level = add_random_steps(item.level_spec);
	slot->resist_bonus[0] = item.resist_bonus[0];
	slot->resist_bonus[1] = item.resist_bonus[1];
	slot->regen_drain = item.regen_drain;
	slot->armor_class = item.armor_class;
	consumed->item_id = 0;
}
