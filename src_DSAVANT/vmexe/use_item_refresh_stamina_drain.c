/* Consume an item charge and refresh a member's encumbrance stamina drain. */
#include "structs/encstyle.h"
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int consume_item_charge();
extern int sum_member_item_weight();
extern struct encumbrance_style *select_encumbrance_style();

use_item_refresh_stamina_drain(member_index, item_page, item_slot)
int member_index, item_page, item_slot;
{
	struct encumbrance_style encumbrance;

	consume_item_charge(member_index, item_page, item_slot);
	sum_member_item_weight(member_index);
	encumbrance = *select_encumbrance_style(member_index);
	party_records[member_index].stamina_drain = encumbrance.stamina_drain;
}
