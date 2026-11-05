/* Load the item record and return its special-power handler code. */
#include "structs/itemrec.h"
#include "structs/pcrec.h"

extern int data_record_io();

read_item_special_power(character_index, item_slot)
int character_index;
struct pc_item_slot *item_slot;
{
	struct item_record item;

	data_record_io(1, &item, item_slot->item_id, 0);
	return item.special_power_code;
}
