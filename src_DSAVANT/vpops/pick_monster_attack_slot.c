/* Pick one of the group's monster's three attack slots: cycle 0, 1, 2 and
   take a slot whose attack_mode is set on a two-way roll. */
#include "structs/member.h"

extern struct member_ext *battle_group_ext[];
extern int random_below();

pick_monster_attack_slot(group)
int group;
{
	int slot;

	slot = 0;
	for (;;) {
		if (battle_group_ext[group]->attack_mode[slot] != 0 &&
		    random_below(2) != 1)
			break;
		slot = (slot + 1) % 3;
	}
	return slot;
}
