/* Recharge a spell-casting item with the given spell power.  Items that
 * cannot be recharged show the failure message; a successful recharge adds
 * charges (at most 99) but may destroy the item. */
#include "structs/pcrec.h"
#include "structs/itemrec.h"
#include "msg.h"

extern unsigned char item_type_counted[];
extern int data_record_io(), random_below();
extern int load_message_string(), display_centered_message();

recharge_inventory_item(pc, slot, power)
int pc;
struct pc_item_slot *slot;
int power;
{
	int added;
	struct item_record item;
	char message[80];

	data_record_io(1, &item, slot->item_id, 0);
	if (slot->level == 0 || slot->level > 99 ||
		power * 2 < (unsigned char)item.difficulty ||
		item.spell_code == 0 || item.special_power_code != 0 ||
		item.kind != 0 || (item.slot_flags & 2) != 0 ||
		item_type_counted[item.item_type] == 1 || item.item_type == 13) {
		load_message_string(MSG_FAILURE_465, message);
		display_centered_message(message, 1);
		return;
	}
	added = random_below(power * 2 - (unsigned char)item.difficulty) + 1;
	if (slot->level + added < 100)
		slot->level += added;
	else
		slot->level = 99;
	if (random_below(100) < (unsigned char)item.difficulty) {
		slot->item_id = 0;
		load_message_string(MSG_FAILURE_465, message);
		display_centered_message(message, 1);
		return;
	}
}
