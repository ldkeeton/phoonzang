/* Report whether the item in an equipment position is cursed. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];

/* Check the equipped item's cursed flag, treating an empty position as
   false. */
equipped_item_is_cursed(member_index, equip_position)
int member_index;
int equip_position;
{
	if (party_records[member_index].equipped[equip_position] != 255 &&
	    (party_records[member_index].item_slots[0][
	    party_records[member_index].equipped[equip_position]].flags & 2))
		return 1;
	return 0;
}
