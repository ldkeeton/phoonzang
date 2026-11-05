/* nonzero when party member's item slot is usable; a slot flagged 1 fails
   one roll in three, an empty slot is never usable */

#include "structs/member.h"

extern struct member_rec *battle_groups[];
extern int random_below();

int item_slot_usable(member, item)
int member, item;
{
	return battle_groups[member]->unit[item].phase != 0
		/* +0x2b: combatant phase */
		&& (battle_groups[member]->unit[item].phase != 1
			|| random_below(3) != 0);
}
